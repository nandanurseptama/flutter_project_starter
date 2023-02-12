// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cores_module/cores_module.dart' as _i5;
import 'package:flutter_project_starter/examples/comments/data/repo/comment_repository_impl.dart'
    as _i4;
import 'package:flutter_project_starter/examples/comments/domain/repo/comment_repository.dart'
    as _i3;
import 'package:flutter_project_starter/examples/comments/domain/usecases/get_single_comment_usecase.dart'
    as _i6;
import 'package:flutter_project_starter/examples/comments/presentation/states/bloc/comments_bloc.dart'
    as _i8;
import 'package:flutter_project_starter/export.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $dependencyConfig(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.CommentRepository>(() =>
      _i4.CommentRepositoryImpl(remoteDatasource: gh<_i5.RemoteDatasource>()));
  gh.factory<_i6.GetSingleCommentUsecase>(() => _i6.GetSingleCommentUsecase(
        commentRepository: gh<_i3.CommentRepository>(),
        uuidGenerator: gh<_i7.Uuid>(),
      ));
  gh.factory<_i8.CommentsBloc>(() => _i8.CommentsBloc(
      getSingleCommentUsecase: gh<_i6.GetSingleCommentUsecase>()));
  return getIt;
}
