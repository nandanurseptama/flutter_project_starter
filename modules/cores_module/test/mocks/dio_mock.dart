import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';

class DioMock extends Mock implements Dio {
  
  @override
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) {
    return super.noSuchMethod(Invocation.method(#get, [
      #path
    ], {
      #queryParameters: queryParameters,
      #options: options,
      #cancelToken: cancelToken,
      #onReceiveProgress: onReceiveProgress
    }));
  }

  @override
  Future<Response<T>> post<T>(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) {
    return super.noSuchMethod(Invocation.method(#post, [
      #path
    ], {
      #data: data,
      #queryParameters: queryParameters,
      #options: options,
      #cancelToken: cancelToken,
      #onReceiveProgress: onReceiveProgress,
      #onSendProgress: onSendProgress
    }));
  }

  @override
  Future<Response<T>> put<T>(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) {
    return super.noSuchMethod(Invocation.method(#put, [
      #path
    ], {
      #data: data,
      #queryParameters: queryParameters,
      #options: options,
      #cancelToken: cancelToken,
      #onReceiveProgress: onReceiveProgress,
      #onSendProgress: onSendProgress
    }));
  }
}
