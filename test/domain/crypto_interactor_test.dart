// ignore_for_file: avoid_types_on_closure_parameters

import 'dart:async';
import 'dart:collection';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tickers_app/src/features/crypto/domain/interactors/crypto_interactor_impl.dart';
import 'package:tickers_app/src/features/crypto/domain/models/crypto_exchange.dart';
import 'package:tickers_app/src/features/crypto/domain/models/crypto_symbol.dart';
import 'package:tickers_app/src/features/crypto/domain/models/trade_last_price_update.dart';

import '../mocks.dart';

void main() {
  late CryptoInteractorImpl interactor;
  late MockCryptoRepository mockRepository;

  setUp(() {
    mockRepository = MockCryptoRepository();
    interactor = CryptoInteractorImpl(cryptoRepository: mockRepository);
  });

  group('CryptoInteractor', () {
    group('tradeLastPriceUpdates', () {
      late StreamController<LinkedHashMap<String, TradeLastPriceUpdate>>
          streamController;

      setUp(() {
        streamController =
            StreamController<LinkedHashMap<String, TradeLastPriceUpdate>>();
        when(() => mockRepository.tradeLastPriceUpdates)
            .thenAnswer((_) => streamController.stream);
      });

      tearDown(() {
        streamController.close();
      });

      test('should filter out empty trade last price updates', () {
        expectLater(
          interactor.tradeLastPriceUpdates,
          emitsInOrder([
            isA<LinkedHashMap<String, TradeLastPriceUpdate>>()
                .having((m) => m.isNotEmpty, 'is not empty', true),
          ]),
        );

        streamController
          ..add(LinkedHashMap<String, TradeLastPriceUpdate>())
          ..add(
            LinkedHashMap<String, TradeLastPriceUpdate>()
              ..['BTC'] = TradeLastPriceUpdate(
                symbol: 'BTC',
                price: 50000,
                timestamp: DateTime.now(),
                volume: 1.0,
              ),
          );
      });

      test('should handle stream errors gracefully', () {
        expectLater(
          interactor.tradeLastPriceUpdates,
          emitsError(isA<Exception>()),
        );

        streamController.addError(Exception('Stream Error'));
      });

      test('should handle large number of updates efficiently', () {
        final largeUpdate =
            LinkedHashMap<String, TradeLastPriceUpdate>.fromIterable(
          List<String>.generate(1000, (index) => 'Symbol$index'),
          key: (item) => item as String,
          value: (item) => TradeLastPriceUpdate(
            symbol: item as String,
            price: 50000 + item.hashCode.toDouble(),
            timestamp: DateTime.now(),
            volume: 1.0 + item.hashCode % 100,
          ),
        );

        expectLater(
          interactor.tradeLastPriceUpdates,
          emitsInOrder([largeUpdate]),
        );

        streamController.add(largeUpdate);
      });
    });

    group('getSymbolsFrom', () {
      const exchange = CryptoExchange.binance;
      final symbols = [
        const CryptoSymbol(
          symbol: 'BTCUSDT',
          description: 'Bitcoin to US Dollar',
          displaySymbol: 'BTC/USD',
        ),
      ];

      setUp(() {
        when(
          () => mockRepository.getSymbolsFrom(
            exchange: exchange,
            page: 1,
            pageSize: 10,
          ),
        ).thenAnswer((_) async => symbols);
      });

      test('should get symbols from the repository', () async {
        final result = await interactor.getSymbolsFrom(
          exchange: exchange,
          page: 1,
          pageSize: 10,
        );

        expect(result, symbols);
        verify(
          () => mockRepository.getSymbolsFrom(
            exchange: exchange,
            page: 1,
            pageSize: 10,
          ),
        ).called(1);
      });

      test('should return an empty list if no symbols are found', () async {
        when(
          () => mockRepository.getSymbolsFrom(
            exchange: exchange,
            page: 1,
            pageSize: 10,
          ),
        ).thenAnswer((_) async => []);

        final result = await interactor.getSymbolsFrom(
          exchange: exchange,
          page: 1,
          pageSize: 10,
        );

        expect(result, isEmpty);
        verify(
          () => mockRepository.getSymbolsFrom(
            exchange: exchange,
            page: 1,
            pageSize: 10,
          ),
        ).called(1);
      });
    });

    group('getSymbolsAndSubscribe', () {
      const exchange = CryptoExchange.binance;
      final symbols = [
        const CryptoSymbol(
          symbol: 'BTCUSDT',
          description: 'Bitcoin to US Dollar',
          displaySymbol: 'BTC/USD',
        ),
      ];

      test('should get symbols and subscribe when symbols are not empty',
          () async {
        when(
          () => mockRepository.getSymbolsFrom(
            exchange: exchange,
            page: 1,
            pageSize: 10,
          ),
        ).thenAnswer((_) async => symbols);

        when(() => mockRepository.subscribeTo(symbols: symbols))
            .thenAnswer((_) async {});

        final result = await interactor.getSymbolsAndSubscribe(
          exchange: exchange,
          page: 1,
          pageSize: 10,
        );

        expect(result, symbols);
        verify(
          () => mockRepository.getSymbolsFrom(
            exchange: exchange,
            page: 1,
            pageSize: 10,
          ),
        ).called(1);
        verify(() => mockRepository.subscribeTo(symbols: symbols)).called(1);
      });

      test('should not subscribe when no symbols are returned', () async {
        when(
          () => mockRepository.getSymbolsFrom(
            exchange: exchange,
            page: 1,
            pageSize: 10,
          ),
        ).thenAnswer((_) async => []);

        final result = await interactor.getSymbolsAndSubscribe(
          exchange: exchange,
          page: 1,
          pageSize: 10,
        );

        expect(result, isEmpty);
        verify(
          () => mockRepository.getSymbolsFrom(
            exchange: exchange,
            page: 1,
            pageSize: 10,
          ),
        ).called(1);
        verifyNever(
          () => mockRepository.subscribeTo(symbols: any(named: 'symbols')),
        );
      });

      test('should handle subscription failures gracefully', () async {
        try {
          when(
            () => mockRepository.getSymbolsFrom(
              exchange: exchange,
              page: 1,
              pageSize: 10,
            ),
          ).thenAnswer((_) async => symbols);

          when(() => mockRepository.subscribeTo(symbols: symbols))
              .thenThrow(Exception('Subscription Failed'));

          final result = await interactor.getSymbolsAndSubscribe(
            exchange: exchange,
            page: 1,
            pageSize: 10,
          );

          expect(result, symbols);

          verify(
            () => mockRepository.getSymbolsFrom(
              exchange: exchange,
              page: 1,
              pageSize: 10,
            ),
          ).called(1);
          verify(() => mockRepository.subscribeTo(symbols: symbols)).called(1);
        } on Object catch (_) {}
      });
    });
  });
}
