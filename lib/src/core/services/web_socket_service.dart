import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:ws/ws.dart';

abstract interface class WebSocketService {
  Future<void> connect({required String url});
  FutureOr<void> disconnect();
  Future<void> send(Object data);
  Stream<Object> get onData;
  bool get isConnected;
}

@Injectable(as: WebSocketService)
final class WebSocketServiceImpl implements WebSocketService {
  final WebSocketClient _client;

  WebSocketServiceImpl({
    @factoryParam ConnectionRetryInterval? connectionRetryInterval = (
      min: const Duration(milliseconds: 500),
      max: const Duration(seconds: 15),
    ),
  }) : _client = WebSocketClient(
          WebSocketOptions.vm(
            connectionRetryInterval: connectionRetryInterval,
          ),
        );

  @override
  bool get isConnected => _client.state is WebSocketClientState$Open;

  @override
  Stream<Object> get onData => _client.stream.asBroadcastStream();

  @override
  Future<void> connect({required String url}) => _client.connect(url);

  @override
  FutureOr<void> disconnect() => _client.close();

  @override
  Future<void> send(Object data) => _client.add(data);
}
