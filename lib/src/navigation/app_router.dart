import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:tickers_app/src/app/presentation/app_screen.dart';
import 'package:tickers_app/src/common/presentation/error_screen.dart';
import 'package:tickers_app/src/common/presentation/splash_screen.dart';
import 'package:tickers_app/src/features/dashboard/presentation/dashboard_screen.dart';

part 'app_router.gr.dart';

@lazySingleton
@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: AppRoute.page,
          initial: true,
          children: [
            AutoRoute(path: ErrorScreen.name, page: ErrorRoute.page),
            AutoRoute(path: SplashScreen.name, page: SplashRoute.page),
            CustomRoute<Object?>(
              path: DashboardScreen.name,
              page: DashboardRoute.page,
              fullscreenDialog: true,
              durationInMilliseconds: kTabScrollDuration.inMilliseconds,
              transitionsBuilder: TransitionsBuilders.fadeIn,
            ),
          ],
        ),
        RedirectRoute(
          path: '*',
          redirectTo: '/',
        ),
      ];

  @override
  List<AutoRouteGuard> get guards => [
        // optionally add root guards here
      ];
}
