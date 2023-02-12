import 'package:cores_module/results/failure.dart';
import 'package:cores_module/results/network_failure.dart';
import 'package:dio/dio.dart';

Failure remoteDataSourceErrorCatcher(e) {
  if (e is DioError) {
    return fromDioError(e);
  }
  return UnknownNetworkFailure(
    message: e.toString()
  );
}

Failure fromDioError(DioError e) {
  if (e.type == DioErrorType.sendTimeout) {
    return SendTimeoutFailure();
  } else if (e.type == DioErrorType.receiveTimeout) {
    return SendTimeoutFailure();
  } else if (e.type == DioErrorType.connectTimeout) {
    return SendTimeoutFailure();
  } else if (e.type == DioErrorType.cancel) {
    return SendTimeoutFailure();
  } else if (e.type == DioErrorType.response) {
    var response = e.response;
    if (response == null) {
      return ResponseFailure(message: "Unexpected Failure");
    }
    if (response.data == null) {
      return ResponseFailure(
          message: Failure.invalidResponseDataTypeErrorMessage);
    }
    if (response.data is Map) {
      return ResponseFailure.fromJson(
          json: response.data, messageErrorKey: "message");
    }
  }
  return UnknownNetworkFailure(
    message: e.message,
  );
}
