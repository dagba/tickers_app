import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tickers_app/src/features/crypto/data/dto/trade_last_price_update_dto.dart';

part 'trade_last_price_update_response.freezed.dart';
part 'trade_last_price_update_response.g.dart';

@freezed
class TradeLastPriceUpdateResponse with _$TradeLastPriceUpdateResponse {
  const factory TradeLastPriceUpdateResponse({
    List<TradeLastPriceUpdateDto>? data,
    String? type,
  }) = _TradeLastPriceUpdateResponse;

  factory TradeLastPriceUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$TradeLastPriceUpdateResponseFromJson(json);
}
