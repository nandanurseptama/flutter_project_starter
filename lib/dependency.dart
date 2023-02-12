import 'package:flutter_project_starter/export.dart';
import 'dependency.config.dart';

var getIt = GetIt.instance;

@InjectableInit(asExtension: false, initializerName: "\$dependencyConfig")
void dependencyConfig() {
  getIt = configureDependency();
  getIt = $dependencyConfig(getIt);
}
