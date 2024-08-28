import 'package:flutter/material.dart';
import 'package:ui_kit/src/app_colors.dart';

abstract interface class AppTheme {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryDark,
      secondary: AppColors.accent,
      error: AppColors.accent2,
      inversePrimary: AppColors.accent1Dark,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryDark,
      foregroundColor: AppColors.accent,
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.accent,
    ),
    switchTheme: SwitchThemeData(
      trackColor: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.accent1;
          }
          return AppColors.accentDark;
        },
      ),
    ),
    scaffoldBackgroundColor: AppColors.primaryDark,
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.accent,
    ),
    listTileTheme: const ListTileThemeData(
      contentPadding: EdgeInsets.all(16),
      titleTextStyle: TextStyle(fontSize: 16, color: AppColors.accentDark),
      textColor: AppColors.accentDark,
      subtitleTextStyle: TextStyle(fontSize: 16, color: AppColors.accentDark),
      leadingAndTrailingTextStyle:
          TextStyle(fontSize: 16, color: AppColors.accentDark),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 16, color: Colors.white),
      bodyMedium: TextStyle(fontSize: 14, color: Colors.white70),
    ),
  );

  static final darkTheme = lightTheme;
}
