import 'dart:collection';

import 'package:tickers_app/src/features/crypto/domain/models/crypto_exchange.dart';
import 'package:tickers_app/src/features/crypto/domain/models/crypto_symbol.dart';
import 'package:tickers_app/src/features/crypto/domain/models/trade_last_price_update.dart';

abstract interface class CryptoRepository {
  Stream<LinkedHashMap<String, TradeLastPriceUpdate>> get tradeLastPriceUpdates;

  Future<List<CryptoSymbol>> getSymbolsFrom({
    required CryptoExchange exchange,
    required int page,
    required int pageSize,
  });

  Future<void> subscribeTo({
    required List<CryptoSymbol> symbols,
  });
}
