import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:tickers_app/src/app/app_constants.dart';
import 'package:tickers_app/src/core/services/web_socket_service.dart';

@LazySingleton()
class FinnhubWebSocketDataSource {
  static const _url = 'wss://ws.finnhub.io/?token=';

  final WebSocketService _webSocketService;

  FinnhubWebSocketDataSource(this._webSocketService);

  bool get isConnected => _webSocketService.isConnected;

  Stream<Object> get onData => _webSocketService.onData;

  Future<void> connect() {
    const url = '$_url${AppConstants.finnhubApiKey}';

    return _webSocketService.connect(url: url);
  }

  FutureOr<void> disconnect() => _webSocketService.disconnect();

  Future<void> send(Object data) async {
    if (!_webSocketService.isConnected) {
      await connect();
    }

    return _webSocketService.send(data);
  }
}
