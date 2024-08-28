import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tickers_app/src/app/presentation/bloc/app_bloc.dart';

import '../mocks.dart';

void main() {
  late MockConnectivityService mockConnectivityService;
  late MockFinnhubWebSocketDataSource mockFinnhubWebSocketDataSource;
  late StreamController<bool> connectivityController;
  late AppBloc bloc;

  setUp(() {
    mockConnectivityService = MockConnectivityService();
    mockFinnhubWebSocketDataSource = MockFinnhubWebSocketDataSource();
    connectivityController = StreamController<bool>.broadcast();
    bloc = AppBloc(
      mockConnectivityService,
      mockFinnhubWebSocketDataSource,
    );

    when(() => mockConnectivityService.hasInternetConnection())
        .thenAnswer((_) async => true);
    when(() => mockConnectivityService.connectivityStream)
        .thenAnswer((_) => connectivityController.stream.asBroadcastStream());
    when(() => mockFinnhubWebSocketDataSource.isConnected).thenReturn(false);
    when(() => mockFinnhubWebSocketDataSource.connect()).thenAnswer(
      (_) async {},
    );
  });

  tearDown(() {
    connectivityController.close();
  });

  group('AppBloc Tests', () {
    blocTest<AppBloc, AppState>(
      '''emits [AppState.loading, AppState.loaded] when InitAppEvent is added and initialization succeeds''',
      setUp: () {},
      build: () => bloc,
      act: (bloc) async {
        bloc.add(InitAppEvent());
        await Future<Object?>.delayed(const Duration(seconds: 1));
      },
      expect: () => [
        AppState.loading(),
        AppState.loaded(),
      ],
    );

    blocTest<AppBloc, AppState>(
      '''connects to the WebSocket when the internet connection is restored''',
      setUp: () {
        when(() => mockConnectivityService.hasInternetConnection())
            .thenAnswer((_) async => true);
        when(() => mockFinnhubWebSocketDataSource.isConnected)
            .thenReturn(false);
      },
      build: () => bloc,
      seed: () => AppState.loaded(hasInternetConnection: false),
      act: (bloc) {
        connectivityController.add(true);
      },
      verify: (bloc) {
        verify(() => mockFinnhubWebSocketDataSource.connect()).called(1);
      },
    );
  });
}
