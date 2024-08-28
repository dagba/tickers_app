import 'package:injectable/injectable.dart';
import 'package:tickers_app/src/app/domain/app_manager.dart';

void main() {
  AppManager(
    env: const Environment(Environment.dev),
  ).run();
}
