import 'package:flutter_test/flutter_test.dart';
import 'package:tickers_app/src/features/crypto/data/dto/crypto_symbol_dto.dart';
import 'package:tickers_app/src/features/crypto/data/dto/trade_last_price_update_dto.dart';
import 'package:tickers_app/src/features/crypto/domain/models/crypto_symbol.dart';
import 'package:tickers_app/src/features/crypto/domain/models/trade_last_price_update.dart';

void main() {
  group('TradeLastPriceUpdate', () {
    test('should correctly convert from TradeLastPriceUpdateDto', () {
      const dto = TradeLastPriceUpdateDto(
        price: 50000.0,
        symbol: 'BTCUSDT',
        timestamp: 1625184000000,
        volume: 0.1,
      );

      final model = TradeLastPriceUpdate.fromDto(dto);

      expect(model.price, dto.price);
      expect(model.symbol, dto.symbol);
      expect(
        model.timestamp,
        DateTime.fromMillisecondsSinceEpoch(dto.timestamp),
      );
      expect(model.volume, dto.volume);
    });

    test('should handle edge case with zero values', () {
      const dto = TradeLastPriceUpdateDto(
        price: 0.0,
        symbol: 'BTCUSDT',
        timestamp: 0,
        volume: 0.0,
      );

      final model = TradeLastPriceUpdate.fromDto(dto);

      expect(model.price, 0.0);
      expect(model.symbol, 'BTCUSDT');
      expect(model.timestamp, DateTime.fromMillisecondsSinceEpoch(0));
      expect(model.volume, 0.0);
    });

    test('should handle negative timestamp gracefully', () {
      const dto = TradeLastPriceUpdateDto(
        price: 50000.0,
        symbol: 'BTCUSDT',
        timestamp: -1625184000000,
        volume: 0.1,
      );

      final model = TradeLastPriceUpdate.fromDto(dto);

      expect(
        model.timestamp,
        DateTime.fromMillisecondsSinceEpoch(-1625184000000),
      );
    });
  });

  group('CryptoSymbol', () {
    test('should correctly convert from CryptoSymbolDto', () {
      const dto = CryptoSymbolDto(
        description: 'Bitcoin to USD',
        displaySymbol: 'BTC/USD',
        symbol: 'BTCUSDT',
      );

      final model = CryptoSymbol.fromDto(dto);

      expect(model.description, dto.description);
      expect(model.displaySymbol, dto.displaySymbol);
      expect(model.symbol, dto.symbol);
    });

    test('should handle empty strings in DTO', () {
      const dto = CryptoSymbolDto(
        description: '',
        displaySymbol: '',
        symbol: '',
      );

      final model = CryptoSymbol.fromDto(dto);

      expect(model.description, '');
      expect(model.displaySymbol, '');
      expect(model.symbol, '');
    });

    test('should handle special characters in DTO', () {
      const dto = CryptoSymbolDto(
        description: 'Test @ Symbol',
        displaySymbol: 'T/S',
        symbol: 'T@S',
      );

      final model = CryptoSymbol.fromDto(dto);

      expect(model.description, 'Test @ Symbol');
      expect(model.displaySymbol, 'T/S');
      expect(model.symbol, 'T@S');
    });
  });
}
