import 'dart:async';
import 'dart:collection';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tickers_app/src/features/crypto/domain/interactors/crypto_interactor.dart';
import 'package:tickers_app/src/features/crypto/domain/models/crypto_exchange.dart';
import 'package:tickers_app/src/features/crypto/domain/models/crypto_symbol.dart';
import 'package:tickers_app/src/features/crypto/domain/models/trade_last_price_update.dart';
import 'package:tickers_app/src/features/dashboard/presentation/bloc/dashboard_bloc.dart';

import '../mocks.dart';

void main() {
  late MockCryptoInteractor mockCryptoInteractor;
  late StreamController<TradeLastPriceUpdateMap> tradeUpdatesController;

  setUp(() {
    mockCryptoInteractor = MockCryptoInteractor();
    tradeUpdatesController = StreamController<TradeLastPriceUpdateMap>();

    when(() => mockCryptoInteractor.tradeLastPriceUpdates)
        .thenAnswer((_) => tradeUpdatesController.stream);
    registerFallbackValue(CryptoExchange.binance);
  });

  tearDown(() {
    tradeUpdatesController.close();
  });

  group('DashboardBloc Tests', () {
    blocTest<DashboardBloc, DashboardState>(
      '''emits [DashboardState.loading, DashboardState.loaded] when InitDashboardEvent is added and initialization succeeds''',
      build: () {
        when(
          () => mockCryptoInteractor.getSymbolsAndSubscribe(
            exchange: any(named: 'exchange'),
            page: any(named: 'page'),
            pageSize: any(named: 'pageSize'),
          ),
        ).thenAnswer(
          (_) async => [
            const CryptoSymbol(
              symbol: 'BTCUSD',
              description: '',
              displaySymbol: '',
            ),
            const CryptoSymbol(
              symbol: 'ETHUSD',
              description: '',
              displaySymbol: '',
            ),
          ],
        );

        return DashboardBloc(mockCryptoInteractor);
      },
      act: (bloc) => bloc.add(const InitDashboardEvent()),
      expect: () => [
        const DashboardState.loading(),
        isA<DashboardStateLoaded>(),
      ],
    );

    blocTest<DashboardBloc, DashboardState>(
      '''emits [DashboardState.error] when InitDashboardEvent is added and initialization fails''',
      build: () {
        when(
          () => mockCryptoInteractor.getSymbolsAndSubscribe(
            exchange: any(named: 'exchange'),
            page: any(named: 'page'),
            pageSize: any(named: 'pageSize'),
          ),
        ).thenThrow(Exception('Failed to initialize'));

        return DashboardBloc(mockCryptoInteractor);
      },
      act: (bloc) => bloc.add(const InitDashboardEvent()),
      expect: () => [
        const DashboardState.loading(),
        isA<DashboardStateError>(),
      ],
    );

    blocTest<DashboardBloc, DashboardState>(
      '''updates trades on UpdatePricesDashboardEvent and emits updated state''',
      build: () {
        final initialTrades =
            UnmodifiableMapView<String, TradeLastPriceUpdate>({
          'BTCUSD': TradeLastPriceUpdate(
            symbol: 'BTCUSD',
            price: 1000.0,
            timestamp: DateTime.now(),
            volume: 1.0,
          ),
        });

        when(
          () => mockCryptoInteractor.getSymbolsAndSubscribe(
            exchange: any(named: 'exchange'),
            page: any(named: 'page'),
            pageSize: any(named: 'pageSize'),
          ),
        ).thenAnswer((_) async => []);

        return DashboardBloc(mockCryptoInteractor)
          ..emit(
            DashboardState.loaded(
              trades: initialTrades,
              symbols: UnmodifiableMapView({}),
            ),
          );
      },
      act: (bloc) {
        bloc.add(
          UpdatePricesDashboardEvent(
            lastPriceUpdates: LinkedHashMap.from({
              'BTCUSD': TradeLastPriceUpdate(
                symbol: 'BTCUSD',
                price: 1200.0,
                timestamp: DateTime.now(),
                volume: 2.0,
              ),
            }),
          ),
        );
      },
      expect: () => [
        isA<DashboardStateLoaded>().having(
          (state) => state.trades['BTCUSD']?.price,
          'updated price',
          1200.0,
        ),
      ],
    );

    blocTest<DashboardBloc, DashboardState>(
      '''emits [DashboardState.loadingMore, DashboardState.loaded] when LoadMoreDashboardEvent is added and more trades are loaded''',
      build: () {
        when(
          () => mockCryptoInteractor.getSymbolsAndSubscribe(
            exchange: any(named: 'exchange'),
            page: any(named: 'page'),
            pageSize: any(named: 'pageSize'),
          ),
        ).thenAnswer(
          (_) async => [
            const CryptoSymbol(
              symbol: 'LTCUSD',
              description: '',
              displaySymbol: '',
            ),
          ],
        );

        return DashboardBloc(mockCryptoInteractor)
          ..emit(
            DashboardState.loaded(
              trades: UnmodifiableMapView({}),
              symbols: UnmodifiableMapView({}),
            ),
          );
      },
      act: (bloc) => bloc.add(const LoadMoreDashboardEvent()),
      expect: () => [
        isA<DashboardStateLoadingMore>(),
        isA<DashboardStateLoaded>().having(
          (state) => state.trades.containsKey('LTCUSD'),
          'contains new trade',
          true,
        ),
      ],
    );
  });
}
