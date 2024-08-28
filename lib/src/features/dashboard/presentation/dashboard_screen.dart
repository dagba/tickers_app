import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tickers_app/src/app/presentation/bloc/app_bloc.dart';
import 'package:tickers_app/src/di/injectable.dart';
import 'package:tickers_app/src/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:tickers_app/src/features/dashboard/presentation/widgets/tickers_list_view.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  static const name = 'dashboard';

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<DashboardBloc>()..add(const DashboardEvent.init()),
      child: const _DashboardScreen(),
    );
  }
}

class _DashboardScreen extends StatelessWidget {
  const _DashboardScreen();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final bloc = context.watch<DashboardBloc>();
    final appState = context.watch<AppBloc>().state;
    final state = bloc.state;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.dashboardScreenTitle),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Text(
              appState.maybeMap(
                loaded: (state) => state.hasInternetConnection
                    ? l10n.onlineStatus
                    : l10n.offlineStatus,
                orElse: () => '',
              ),
            ),
          ),
        ],
      ),
      body: state.map(
        initial: (_) => const Center(
          child: CircularProgressIndicator(),
        ),
        loading: (_) => const Center(
          child: CircularProgressIndicator(),
        ),
        loaded: (state) => TickersListView(
          trades: state.trades,
          symbols: state.symbols,
          hasReachedMax: state.hasReachedMax,
        ),
        loadingMore: (state) => TickersListView(
          trades: state.trades,
          symbols: state.symbols,
          hasReachedMax: state.hasReachedMax,
        ),
        error: (state) => Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(state.message),
                const SizedBox(height: 16.0),
                FilledButton(
                  onPressed: () => bloc.add(const DashboardEvent.init()),
                  child: Text(l10n.retryCta),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
