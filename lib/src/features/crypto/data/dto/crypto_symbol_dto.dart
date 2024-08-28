import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_symbol_dto.freezed.dart';
part 'crypto_symbol_dto.g.dart';

@freezed
class CryptoSymbolDto with _$CryptoSymbolDto {
  const factory CryptoSymbolDto({
    required String description,
    required String displaySymbol,
    required String symbol,
  }) = _CryptoSymbolDto;

  factory CryptoSymbolDto.fromJson(Map<String, dynamic> json) =>
      _$CryptoSymbolDtoFromJson(json);
}
