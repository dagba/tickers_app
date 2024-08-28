import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

const _activeConnectivityResults = [
  ConnectivityResult.mobile,
  ConnectivityResult.wifi,
  ConnectivityResult.ethernet,
  ConnectivityResult.vpn,
];

@lazySingleton
class ConnectivityService {
  final _connectivity = Connectivity();
  final _connectivityStreamController = StreamController<bool>.broadcast();

  ConnectivityService() {
    _connectivity.onConnectivityChanged.listen((result) {
      _connectivityStreamController.add(result.hasInternetConnection);
    });
  }

  /// Get the current connectivity status
  Future<List<ConnectivityResult>> getCurrentConnectivityStatus() =>
      _connectivity.checkConnectivity();

  /// Stream to listen for connectivity changes
  Stream<bool> get connectivityStream => _connectivityStreamController.stream;

  /// Dispose of the StreamController when it's no longer needed
  void dispose() {
    _connectivityStreamController.close();
  }

  /// Utility function to check if the device has an internet connection
  Future<bool> hasInternetConnection() async {
    final connectivityResult = await getCurrentConnectivityStatus();

    return connectivityResult.hasInternetConnection;
  }
}

extension ListConnectivityResultX on List<ConnectivityResult> {
  bool get hasInternetConnection => _activeConnectivityResults.any(contains);
}
