part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  factory AppEvent.init() = InitAppEvent;
}

@freezed
class AppState with _$AppState {
  factory AppState.loading() = LoadingAppState;
  factory AppState.error(String errorMessage) = ErrorAppState;
  factory AppState.initial() = InitialAppState;
  factory AppState.loaded({
    @Default(true) bool hasInternetConnection,
  }) = LoadedAppState;
}
