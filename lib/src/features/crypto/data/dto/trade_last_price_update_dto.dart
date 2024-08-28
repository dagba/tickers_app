import 'package:freezed_annotation/freezed_annotation.dart';

part 'trade_last_price_update_dto.freezed.dart';
part 'trade_last_price_update_dto.g.dart';

@freezed
class TradeLastPriceUpdateDto with _$TradeLastPriceUpdateDto {
  const factory TradeLastPriceUpdateDto({
    @JsonKey(name: 'p') required double price,
    @JsonKey(name: 's') required String symbol,
    @JsonKey(name: 't') required int timestamp,
    @JsonKey(name: 'v') required double volume,
  }) = _TradeLastPriceUpdateDto;

  factory TradeLastPriceUpdateDto.fromJson(Map<String, dynamic> json) =>
      _$TradeLastPriceUpdateDtoFromJson(json);
}
