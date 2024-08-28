// ignore_for_file: avoid_equals_and_hash_code_on_mutable_classes

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tickers_app/src/features/crypto/data/dto/crypto_symbol_dto.dart';

part 'crypto_symbol.freezed.dart';

@freezed
class CryptoSymbol with _$CryptoSymbol {
  const CryptoSymbol._();

  const factory CryptoSymbol({
    required String description,
    required String displaySymbol,
    required String symbol,
  }) = _CryptoSymbol;

  factory CryptoSymbol.fromDto(CryptoSymbolDto dto) {
    return CryptoSymbol(
      description: dto.description,
      displaySymbol: dto.displaySymbol,
      symbol: dto.symbol,
    );
  }
}
