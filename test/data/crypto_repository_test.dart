import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tickers_app/src/features/crypto/data/crypto_repository_impl.dart';
import 'package:tickers_app/src/features/crypto/data/dto/crypto_symbol_dto.dart';
import 'package:tickers_app/src/features/crypto/domain/interactors/crypto_interactor.dart';
import 'package:tickers_app/src/features/crypto/domain/models/crypto_exchange.dart';
import 'package:tickers_app/src/features/crypto/domain/models/crypto_symbol.dart';
import 'package:tickers_app/src/features/crypto/domain/models/trade_last_price_update.dart';

import '../mocks.dart';

void main() {
  late CryptoRepositoryImpl repository;
  late MockFinnhubApiService mockApiService;
  late MockFinnhubWebSocketDataSource mockWebSocketDataSource;
  late StreamController<String> streamController;

  setUp(() {
    mockApiService = MockFinnhubApiService();
    mockWebSocketDataSource = MockFinnhubWebSocketDataSource();
    repository = CryptoRepositoryImpl(
      finnhubApiService: mockApiService,
      finnhubWebSocketDataSource: mockWebSocketDataSource,
    );

    streamController = StreamController<String>();
    when(() => mockWebSocketDataSource.onData)
        .thenAnswer((_) => streamController.stream);
  });

  tearDown(() {
    streamController.close();
  });

  group('CryptoRepositoryImpl', () {
    group('tradeLastPriceUpdates', () {
      const tradeEvent =
          '''{"type":"trade","data":[{"s":"BTCUSDT","p":50000,"t":1625184000000,"v":0.1}]}''';
      const nonTradeEvent = '{"type":"ping"}';
      const emptyTradeEvent = '{"type":"trade","data":[]}';

      final expectedUpdate = TradeLastPriceUpdate(
        symbol: 'BTCUSDT',
        price: 50000.0,
        timestamp: DateTime.fromMillisecondsSinceEpoch(1625184000000),
        volume: 0.1,
      );

      test('should map incoming data correctly when trade updates are present',
          () {
        expectLater(
          repository.tradeLastPriceUpdates,
          emitsInOrder([
            isA<TradeLastPriceUpdateMap>().having(
              (m) => m['BTCUSDT'],
              'BTCUSDT',
              expectedUpdate,
            ),
          ]),
        );

        streamController.add(tradeEvent);
      });

      test('should ignore non-trade updates and emit empty maps', () {
        expectLater(
          repository.tradeLastPriceUpdates,
          emitsInOrder([
            isA<TradeLastPriceUpdateMap>()
                .having((m) => m.isEmpty, 'is empty', true),
          ]),
        );

        streamController.add(nonTradeEvent);
      });

      test('should handle empty or null data gracefully', () {
        expectLater(
          repository.tradeLastPriceUpdates,
          emitsInOrder([
            isA<TradeLastPriceUpdateMap>()
                .having((m) => m.isEmpty, 'is empty', true),
          ]),
        );

        streamController.add(emptyTradeEvent);
      });
    });

    group('getSymbolsFrom', () {
      const exchange = CryptoExchange.binance;
      const apiResponse = [
        CryptoSymbolDto(
          symbol: 'BTCUSDT',
          description: 'Bitcoin to USD',
          displaySymbol: 'BTC/USD',
        ),
      ];
      const symbols = [
        CryptoSymbol(
          symbol: 'BTCUSDT',
          description: 'Bitcoin to USD',
          displaySymbol: 'BTC/USD',
        ),
      ];

      setUp(() {
        when(() => mockApiService.getSymbolsFrom(exchange: exchange.name))
            .thenAnswer((_) async => apiResponse);
      });

      test('should fetch symbols from the API and cache them', () async {
        final result = await repository.getSymbolsFrom(
          exchange: exchange,
          page: 0,
          pageSize: 10,
        );

        expect(result, symbols);
        verify(() => mockApiService.getSymbolsFrom(exchange: exchange.name))
            .called(1);
      });

      test(
          '''should return cached symbols without fetching again if already cached''',
          () async {
        await repository.getSymbolsFrom(
          exchange: exchange,
          page: 0,
          pageSize: 10,
        );

        final result = await repository.getSymbolsFrom(
          exchange: exchange,
          page: 1,
          pageSize: 10,
        );

        expect(result, isEmpty);
        verify(() => mockApiService.getSymbolsFrom(exchange: exchange.name))
            .called(1);
      });
    });

    group('subscribeTo', () {
      const symbols = [
        CryptoSymbol(
          symbol: 'BTCUSDT',
          description: 'Bitcoin to USD',
          displaySymbol: 'BTC/USD',
        ),
        CryptoSymbol(
          symbol: 'ETHUSDT',
          description: 'Ethereum to USD',
          displaySymbol: 'ETH/USD',
        ),
      ];

      setUp(() {
        when(() => mockWebSocketDataSource.send(any()))
            .thenAnswer((_) async {});
      });

      test('should send subscription message for each symbol', () async {
        await repository.subscribeTo(symbols: symbols);

        for (final symbol in symbols) {
          verify(
            () => mockWebSocketDataSource.send(
              '{"type":"subscribe","symbol":"${symbol.symbol}"}',
            ),
          ).called(1);
        }
      });
    });
  });
}
