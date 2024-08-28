import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tickers_app/src/app/presentation/bloc/app_bloc.dart';
import 'package:tickers_app/src/di/injectable.dart';
import 'package:tickers_app/src/navigation/app_router.dart';

/// An entry point to our application.
/// Manages the application's navigation based on the current state of the app.
@RoutePage()
class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<AppBloc>()..add(AppEvent.init()),
      child: const _AppScreen(),
    );
  }
}

class _AppScreen extends StatelessWidget {
  const _AppScreen();

  @override
  Widget build(BuildContext context) {
    final appBloc = context.watch<AppBloc>();
    final state = appBloc.state;

    return AutoRouter.declarative(
      routes: (handler) => state.map(
        loading: (value) => [
          const SplashRoute(),
        ],
        error: (state) => [
          ErrorRoute(
            errorMessage: state.errorMessage,
            onRetry: () => appBloc.add(AppEvent.init()),
          ),
        ],
        initial: (_) => [
          const SplashRoute(),
        ],
        loaded: (_) => [
          const DashboardRoute(),
        ],
      ),
    );
  }
}
