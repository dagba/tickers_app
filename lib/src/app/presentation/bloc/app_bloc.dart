// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'dart:async';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tickers_app/src/common/data/data_source/finnhub_web_socket_data_source.dart';
import 'package:tickers_app/src/core/services/connectivity_service.dart';

part 'app_bloc.freezed.dart';
part 'app_state.dart';

/// [AppBloc] is a BLoC that manages the app state.
/// It is responsible for initializing the app and managing the app's lifecycle.
@injectable
final class AppBloc extends Bloc<AppEvent, AppState> {
  final ConnectivityService _connectivityService;
  final FinnhubWebSocketDataSource _finnhubWebSocketDataSource;

  StreamSubscription<bool>? _connectivitySubscription;

  AppBloc(
    this._connectivityService,
    this._finnhubWebSocketDataSource,
  ) : super(AppState.initial()) {
    on<InitAppEvent>(_onInitAppEvent);

    _connectivitySubscription =
        _connectivityService.connectivityStream.listen((_) async {
      final hasInternetConnection =
          await _connectivityService.hasInternetConnection();

      emit(
        AppState.loaded(
          hasInternetConnection: hasInternetConnection,
        ),
      );

      if (hasInternetConnection && !_finnhubWebSocketDataSource.isConnected) {
        await _finnhubWebSocketDataSource.connect();
      }
    });
  }

  @override
  Future<void> close() {
    _connectivitySubscription?.cancel();
    return super.close();
  }

  FutureOr<void> _onInitAppEvent(
    InitAppEvent event,
    Emitter<AppState> emit,
  ) async {
    try {
      emit(AppState.loading());

      /// prefetch data, authenticate user etc.

      await Future<Object?>.delayed(const Duration(milliseconds: 500));

      emit(AppState.loaded());
    } on Object catch (error, st) {
      log('Error initializing app', error: error, stackTrace: st);
      emit(
        AppState.error(
          'Error initializing app'
          ' Please try again later.'
          ' $error',
        ),
      );
    }
  }
}
