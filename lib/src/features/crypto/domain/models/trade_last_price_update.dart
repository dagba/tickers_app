import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tickers_app/src/features/crypto/data/dto/trade_last_price_update_dto.dart';

part 'trade_last_price_update.freezed.dart';

@freezed
class TradeLastPriceUpdate with _$TradeLastPriceUpdate {
  const factory TradeLastPriceUpdate({
    required double price,
    required String symbol,
    required DateTime timestamp,
    required double volume,
  }) = _TradeLastPriceUpdate;

  factory TradeLastPriceUpdate.fromDto(TradeLastPriceUpdateDto dto) =>
      TradeLastPriceUpdate(
        price: dto.price,
        symbol: dto.symbol,
        timestamp: DateTime.fromMillisecondsSinceEpoch(dto.timestamp),
        volume: dto.volume,
      );
}
