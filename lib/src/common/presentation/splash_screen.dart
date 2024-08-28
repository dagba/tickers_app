import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tickers_app/src/common/constants/images.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  static const name = 'splash';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      alignment: Alignment.center,
      child: Image.asset(Images.logo),
    );
  }
}
