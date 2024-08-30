import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tickers_app/src/app/app_constants.dart';
import 'package:tickers_app/src/features/crypto/data/dto/crypto_symbol_dto.dart';

@lazySingleton
class FinnhubApiService {
  final Dio _dio;

  FinnhubApiService()
      : _dio = Dio(
          BaseOptions(
            baseUrl: 'https://finnhub.io/api/v1',
            queryParameters: {
              'token': AppConstants.finnhubApiKey,
            },
            headers: {
              'Content-Type': 'application/json',
            },
          ),
        );

  Future<List<CryptoSymbolDto>> getSymbolsFrom({
    required String exchange,
  }) async {
    assert(exchange.isNotEmpty);

    final response = await _dio.get<Object?>(
      '/crypto/symbol?exchange=$exchange',
      queryParameters: {
        'exchange': exchange,
      },
    );

    return (response.data as List)
        .map((e) => CryptoSymbolDto.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
