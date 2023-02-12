import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import 'dependency.config.dart';

import 'package:get_it/get_it.dart';

var sl = GetIt.instance;
@InjectableInit(asExtension: false, initializerName: "injectDependency")
GetIt configureDependency() {
  return injectDependency(sl);
}

@module
abstract class RegisterModule {
  Dio get dio => Dio();
  Uuid get uuidGenerator => const Uuid();
}
