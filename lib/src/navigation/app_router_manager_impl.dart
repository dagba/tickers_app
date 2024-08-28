import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:tickers_app/src/navigation/app_router.dart';
import 'package:tickers_app/src/navigation/app_router_manager.dart';

@LazySingleton(as: AutoRouteManager)
class AutoRouterManagerImpl implements AutoRouteManager {
  final AppRouter _autoRouter;

  AutoRouterManagerImpl(this._autoRouter);

  @override
  Future<dynamic> navigate(PageRouteInfo route) async =>
      _autoRouter.navigate(route);

  @override
  Future<void> navigateNamed(String routePath) =>
      _autoRouter.navigateNamed(routePath);

  @override
  Future<T?> push<T extends Object?>(PageRouteInfo route) =>
      _autoRouter.push(route);

  @override
  Future<T?> pushNamed<T extends Object?>(String routePath) =>
      _autoRouter.pushNamed(routePath);

  @override
  Future<T?> pushAndPopUntil<T extends Object?>(
    PageRouteInfo route, {
    required RoutePredicate predicate,
  }) =>
      _autoRouter.pushAndPopUntil(route, predicate: predicate);

  @override
  Future<T?> replace<T extends Object?>(PageRouteInfo route) =>
      _autoRouter.replace(route);

  @override
  Future<T?> replaceNamed<T extends Object?>(String routePath) =>
      _autoRouter.replaceNamed(routePath);

  @override
  Future<void> pushAll(List<PageRouteInfo> routes) =>
      _autoRouter.pushAll(routes);
  @override
  Future<void> replaceAll(List<PageRouteInfo> routes) =>
      _autoRouter.replaceAll(routes);
  @override
  bool removeLast() => _autoRouter.removeLast();

  @override
  Future<bool> pop<T extends Object?>() async => _autoRouter.maybePop();

  @override
  GlobalKey<NavigatorState> getNavigatorKey() => _autoRouter.navigatorKey;
}
