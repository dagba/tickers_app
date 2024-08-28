import 'dart:async';
import 'dart:collection';
import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:tickers_app/src/features/crypto/domain/crypto_repository.dart';
import 'package:tickers_app/src/features/crypto/domain/interactors/crypto_interactor.dart';
import 'package:tickers_app/src/features/crypto/domain/models/crypto_exchange.dart';
import 'package:tickers_app/src/features/crypto/domain/models/crypto_symbol.dart';
import 'package:tickers_app/src/features/crypto/domain/models/trade_last_price_update.dart';

@Injectable(as: CryptoInteractor)
final class CryptoInteractorImpl implements CryptoInteractor {
  final CryptoRepository _cryptoRepository;

  CryptoInteractorImpl({
    required CryptoRepository cryptoRepository,
  }) : _cryptoRepository = cryptoRepository;

  @override
  Stream<LinkedHashMap<String, TradeLastPriceUpdate>>
      get tradeLastPriceUpdates =>
          _cryptoRepository.tradeLastPriceUpdates.where(
            (event) => event.isNotEmpty,
          );

  @override
  Future<List<CryptoSymbol>> getSymbolsFrom({
    required CryptoExchange exchange,
    required int page,
    required int pageSize,
  }) =>
      _cryptoRepository.getSymbolsFrom(
        exchange: exchange,
        page: page,
        pageSize: pageSize,
      );

  @override
  Future<List<CryptoSymbol>> getSymbolsAndSubscribe({
    required CryptoExchange exchange,
    required int page,
    required int pageSize,
  }) async {
    final symbols = await getSymbolsFrom(
      exchange: exchange,
      page: page,
      pageSize: pageSize,
    );

    if (symbols.isNotEmpty) {
      log('Subscribing to symbols: $symbols');
      unawaited(_cryptoRepository.subscribeTo(symbols: symbols));
    }

    return symbols;
  }
}
