// ignore_for_file: invalid_use_of_protected_member

import 'dart:async';
import 'dart:developer';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:tickers_app/src/app/app.dart';
import 'package:tickers_app/src/common/presentation/splash_screen.dart';
import 'package:tickers_app/src/di/injectable.dart';

final class AppManager {
  final Environment _env;

  AppManager({required Environment env}) : _env = env;

  void run() {
    runZonedGuarded(
      () async {
        /// Initialize flutter binding
        final binding = WidgetsFlutterBinding.ensureInitialized();

        /// Show splash screen while we are initializing our dependencies
        _showSplashScreen(binding, const SplashScreen());

        /// Initialize dependencies
        configureDependencies(_env);

        /// To process all events in blocs sequentially
        Bloc.transformer = sequential<Object?>();

        /// Log flutter error to console
        final flutterOnError = FlutterError.onError;
        FlutterError.onError = (errorDetails) {
          flutterOnError?.call(errorDetails);
          log(errorDetails.toString());
        };

        /// Show main app
        _showApp(binding, const MyApp());
      },
      (error, stackTrace) {
        log(error.toString());
      },
    );
  }
}

void _showApp(WidgetsBinding binding, Widget screen) {
  binding
    ..scheduleAttachRootWidget(
      binding.wrapWithDefaultView(screen),
    )
    ..scheduleForcedFrame();
}

void _showSplashScreen(WidgetsBinding binding, Widget screen) {
  binding
    ..scheduleAttachRootWidget(
      binding.wrapWithDefaultView(screen),
    )
    ..scheduleWarmUpFrame();
}
