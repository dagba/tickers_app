import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_symbol_subscribe_message.freezed.dart';

@freezed
class CryptoSymbolSubscribeMessage with _$CryptoSymbolSubscribeMessage {
  const factory CryptoSymbolSubscribeMessage({
    required String symbol,
  }) = _CryptoSymbolSubscribeMessage;

  @override
  String toString() => '{"type":"subscribe","symbol":"$symbol"}';
}
