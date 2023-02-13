import 'package:dio/dio.dart';
import 'package:flutter_project_starter/export.dart';
import 'dependency.config.dart';
var getIt = GetIt.instance;

@InjectableInit(asExtension: false, initializerName: "\$dependencyConfig")
void dependencyConfig() {
  getIt = $dependencyConfig(getIt);
}

@module
abstract class RegisterModule{
  Dio get dio => Dio();
  Uuid get uuidGenerator => const Uuid();
}