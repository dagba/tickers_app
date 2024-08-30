import 'package:mocktail/mocktail.dart';
import 'package:tickers_app/src/common/data/data_source/finnhub_api_service.dart';
import 'package:tickers_app/src/common/data/data_source/finnhub_web_socket_data_source.dart';
import 'package:tickers_app/src/core/services/connectivity_service.dart';
import 'package:tickers_app/src/features/crypto/domain/crypto_repository.dart';
import 'package:tickers_app/src/features/crypto/domain/interactors/crypto_interactor.dart';

class MockCryptoInteractor extends Mock implements CryptoInteractor {}

class MockConnectivityService extends Mock implements ConnectivityService {
  MockConnectivityService() {
    when(() => hasInternetConnection()).thenAnswer((_) async => true);
    when(() => connectivityStream).thenAnswer(
      (invocation) => Stream.fromIterable(
        [
          true,
        ],
      ),
    );
  }
}

class MockFinnhubWebSocketDataSource extends Mock
    implements FinnhubWebSocketDataSource {}

class MockCryptoRepository extends Mock implements CryptoRepository {}

class MockFinnhubApiService extends Mock implements FinnhubApiService {}
