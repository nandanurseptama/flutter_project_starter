// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cores_module/cores_module.dart' as _i3;
import 'package:cores_module/dependency.dart' as _i7;
import 'package:cores_module/remote_datasource/dio_remote_datasource.dart'
    as _i5;
import 'package:cores_module/remote_datasource/remote_datasource.dart' as _i4;
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt injectDependency(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.factory<_i3.Dio>(() => registerModule.dio);
  gh.factory<_i4.RemoteDatasource>(
      () => _i5.DioRemoteDatasource(dio: gh<_i6.Dio>()));
  gh.factory<_i3.Uuid>(() => registerModule.uuidGenerator);
  return getIt;
}

class _$RegisterModule extends _i7.RegisterModule {}
