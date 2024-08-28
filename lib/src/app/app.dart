import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tickers_app/src/di/injectable.dart';
import 'package:tickers_app/src/navigation/app_router.dart';
import 'package:ui_kit/ui_kit.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = sl<AppRouter>();

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''), // English, no country code
        ],
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitle,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      );
}
