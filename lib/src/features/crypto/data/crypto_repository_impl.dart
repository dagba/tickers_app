import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:tickers_app/src/common/data/data_source/finnhub_api_service.dart';
import 'package:tickers_app/src/common/data/data_source/finnhub_web_socket_data_source.dart';
import 'package:tickers_app/src/features/crypto/data/dto/trade_last_price_update_response.dart';
import 'package:tickers_app/src/features/crypto/domain/crypto_repository.dart';
import 'package:tickers_app/src/features/crypto/domain/interactors/crypto_interactor.dart';
import 'package:tickers_app/src/features/crypto/domain/models/crypto_exchange.dart';
import 'package:tickers_app/src/features/crypto/domain/models/crypto_symbol.dart';
import 'package:tickers_app/src/features/crypto/domain/models/trade_last_price_update.dart';

@LazySingleton(as: CryptoRepository)
final class CryptoRepositoryImpl implements CryptoRepository {
  final FinnhubApiService _finnhubApiService;
  final FinnhubWebSocketDataSource _finnhubWebSocketDataSource;

  var _symbols = <CryptoSymbol>[];

  CryptoRepositoryImpl({
    required FinnhubApiService finnhubApiService,
    required FinnhubWebSocketDataSource finnhubWebSocketDataSource,
  })  : _finnhubApiService = finnhubApiService,
        _finnhubWebSocketDataSource = finnhubWebSocketDataSource;

  @override
  Stream<TradeLastPriceUpdateMap> get tradeLastPriceUpdates =>
      _finnhubWebSocketDataSource.onData.map(
        (event) {
          final tradesMap = TradeLastPriceUpdateMap.from({});
          final jsonResponse = jsonDecode(event as String);
          final response = TradeLastPriceUpdateResponse.fromJson(
            jsonResponse as Map<String, dynamic>,
          );
          final isTrade = response.type == 'trade';
          final data = response.data;
          final isDataNotEmptyOrNull = data != null && data.isNotEmpty;

          if (isTrade && isDataNotEmptyOrNull) {
            final trades = data.map(TradeLastPriceUpdate.fromDto).toList();

            for (final trade in trades) {
              tradesMap[trade.symbol] = trade;
            }
          }

          return tradesMap;
        },
      );

  @override
  Future<List<CryptoSymbol>> getSymbolsFrom({
    required CryptoExchange exchange,
    required int page,
    required int pageSize,
  }) async {
    if (_symbols.isEmpty) {
      final response = await _finnhubApiService.getSymbolsFrom(
        exchange: exchange.name,
      );

      _symbols = response
          .map(
            (e) => CryptoSymbol.fromDto(e),
          )
          .toList();
    }

    // simulate loading
    await Future<Object?>.delayed(const Duration(milliseconds: 500));

    return _symbols.skip(page * pageSize).take(pageSize).toList();
  }

  @override
  Future<void> subscribeTo({
    required List<CryptoSymbol> symbols,
  }) async {
    for (final symbol in symbols) {
      // final message = CryptoSymbolSubscribeMessage(symbol: symbol.symbol);
      await _finnhubWebSocketDataSource
          .send('{"type":"subscribe","symbol":"${symbol.symbol}"}');
    }
  }
}
