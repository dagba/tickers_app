enum CryptoExchange {
  binance,
  bitfinex;

  String get name {
    switch (this) {
      case CryptoExchange.binance:
        return 'binance';
      case CryptoExchange.bitfinex:
        return 'bitfinex';
    }
  }
}
