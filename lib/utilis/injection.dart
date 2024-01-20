import 'package:enviro_mobile_application/utilis/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureLocalDependancies() async => getIt.init();
