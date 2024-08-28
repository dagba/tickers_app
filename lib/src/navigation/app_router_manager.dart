import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

abstract interface class AutoRouteManager {
  Future<T?> push<T extends Object?>(PageRouteInfo route);
  Future<T?> pushNamed<T extends Object?>(String routePath);
  Future<T?> pushAndPopUntil<T extends Object?>(
    PageRouteInfo route, {
    required RoutePredicate predicate,
  });
  Future<T?> replace<T extends Object?>(PageRouteInfo route);
  Future<T?> replaceNamed<T extends Object?>(String routePath);
  Future<dynamic> navigate(PageRouteInfo route);
  Future<void> navigateNamed(String routePath);
  Future<void> pushAll(List<PageRouteInfo> routes);
  Future<void> replaceAll(List<PageRouteInfo> routes);
  Future<bool> pop<T extends Object?>();
  bool removeLast();
  GlobalKey<NavigatorState> getNavigatorKey();
}
