import 'package:dio/dio.dart';

/// this class used for handling http request
abstract class RemoteDatasource {
  /// add interceptor to dio
  void addInterceptor(Interceptor interceptor);
  /// send GET method request
  ///
  /// will return T response depending on method implementation on inheritance class
  Future<Response> get(
      {required String url,
      CancelToken? cancelToken,
      Map<String, dynamic>? queryParameters,
      Map<String, String>? headers});

  /// send POST method request
  ///
  /// will return T response depending on method implementation on inheritance class
  Future<Response> post(
      {required String url,
      CancelToken? cancelToken,
      Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameters,
      Map<String, String>? headers});

  /// send PUT method request
  ///
  /// will return T response depending on method implementation on inheritance class
  Future<Response> put(
      {required String url,
      CancelToken? cancelToken,
      Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameters,
      Map<String, String>? headers});
}
