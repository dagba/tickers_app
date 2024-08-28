import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injectable.config.dart';

final sl = GetIt.instance;

@InjectableInit()
void configureDependencies(Environment env) => sl.init(environment: env.name);
