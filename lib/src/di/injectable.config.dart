// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:tickers_app/src/app/presentation/bloc/app_bloc.dart' as _i835;
import 'package:tickers_app/src/common/data/data_source/finnhub_api_service.dart'
    as _i125;
import 'package:tickers_app/src/common/data/data_source/finnhub_web_socket_data_source.dart'
    as _i755;
import 'package:tickers_app/src/core/services/connectivity_service.dart'
    as _i788;
import 'package:tickers_app/src/core/services/web_socket_service.dart' as _i932;
import 'package:tickers_app/src/features/crypto/data/crypto_repository_impl.dart'
    as _i1071;
import 'package:tickers_app/src/features/crypto/domain/crypto_repository.dart'
    as _i367;
import 'package:tickers_app/src/features/crypto/domain/interactors/crypto_interactor.dart'
    as _i287;
import 'package:tickers_app/src/features/crypto/domain/interactors/crypto_interactor_impl.dart'
    as _i189;
import 'package:tickers_app/src/features/dashboard/presentation/bloc/dashboard_bloc.dart'
    as _i673;
import 'package:tickers_app/src/navigation/app_router.dart' as _i442;
import 'package:tickers_app/src/navigation/app_router_manager.dart' as _i568;
import 'package:tickers_app/src/navigation/app_router_manager_impl.dart'
    as _i566;
import 'package:ws/ws.dart' as _i423;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i788.ConnectivityService>(
        () => _i788.ConnectivityService());
    gh.lazySingleton<_i442.AppRouter>(() => _i442.AppRouter());
    gh.lazySingleton<_i125.FinnhubApiService>(() => _i125.FinnhubApiService());
    gh.lazySingleton<_i568.AutoRouteManager>(
        () => _i566.AutoRouterManagerImpl(gh<_i442.AppRouter>()));
    gh.factoryParam<_i932.WebSocketService, _i423.ConnectionRetryInterval?,
        dynamic>((
      connectionRetryInterval,
      _,
    ) =>
        _i932.WebSocketServiceImpl(
            connectionRetryInterval: connectionRetryInterval));
    gh.lazySingleton<_i755.FinnhubWebSocketDataSource>(
        () => _i755.FinnhubWebSocketDataSource(gh<_i932.WebSocketService>()));
    gh.lazySingleton<_i367.CryptoRepository>(() => _i1071.CryptoRepositoryImpl(
          finnhubApiService: gh<_i125.FinnhubApiService>(),
          finnhubWebSocketDataSource: gh<_i755.FinnhubWebSocketDataSource>(),
        ));
    gh.factory<_i287.CryptoInteractor>(() => _i189.CryptoInteractorImpl(
        cryptoRepository: gh<_i367.CryptoRepository>()));
    gh.factory<_i835.AppBloc>(() => _i835.AppBloc(
          gh<_i788.ConnectivityService>(),
          gh<_i755.FinnhubWebSocketDataSource>(),
        ));
    gh.factory<_i673.DashboardBloc>(
        () => _i673.DashboardBloc(gh<_i287.CryptoInteractor>()));
    return this;
  }
}
