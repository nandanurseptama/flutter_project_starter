import 'package:dio/dio.dart';
import 'package:flutter_project_starter/cores/remote_datasource/remote_datasource.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: RemoteDatasource)
class DioRemoteDatasource implements RemoteDatasource {
  @preResolve
  final Dio _dio;

  DioRemoteDatasource({required Dio dio}) : _dio = dio;

  @override
  Future<Response> get(
      {required String url,
      CancelToken? cancelToken,
      Map<String, dynamic>? queryParameters,
      Map<String, String>? headers}) {
    return _dio.get(url,
        cancelToken: cancelToken,
        queryParameters: queryParameters,
        options: headers == null ? null : Options(headers: headers));
  }

  @override
  Future<Response> post(
      {required String url,
      CancelToken? cancelToken,
      Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameters,
      Map<String, String>? headers}) {
    return _dio.post(url,
        queryParameters: queryParameters,
        data: body,
        cancelToken: cancelToken,
        options: headers == null ? null : Options(headers: headers));
  }

  @override
  Future<Response> put(
      {required String url,
      CancelToken? cancelToken,
      Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameters,
      Map<String, String>? headers}) {
    return _dio.put(url,
        queryParameters: queryParameters,
        data: body,
        cancelToken: cancelToken,
        options: Options(headers: headers));
  }

  @override
  void addInterceptor(Interceptor interceptor) {
    _dio.interceptors.add(interceptor);
  }
}
