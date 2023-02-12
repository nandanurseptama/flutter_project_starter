library cores_module;

export 'remote_datasource/remote_datasource.dart' show RemoteDatasource;
export 'remote_datasource/dio_remote_datasource.dart' show DioRemoteDatasource;

export 'remote_datasource/remote_datasource_error_catcher.dart'
    show remoteDataSourceErrorCatcher;

export 'results/failure.dart' show Failure;
export 'results/network_failure.dart'
    show
        BadGatewayFailure,
        BadRequestFailure,
        CanceledUserFailure,
        InternalServerErrorFailure,
        NotFoundFailure,
        ResponseFailure,
        SendTimeoutFailure,
        UnAuthorizedFailure,
        UnknownNetworkFailure, NoDataResponseFailure;

export 'usecase/base_usecase.dart' show BaseUsecase;
export 'usecase/result_usecase.dart' show ResultUsecase, Ok, Fail;
export 'dependency.dart' show configureDependency;

// third-party module
export 'package:dio/dio.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:equatable/equatable.dart';
export 'package:uuid/uuid.dart';
export 'package:bloc/bloc.dart';
export 'package:get_it/get_it.dart';
export 'package:injectable/injectable.dart';
