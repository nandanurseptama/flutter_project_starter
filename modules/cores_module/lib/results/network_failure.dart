import 'package:cores_module/results/failure.dart';

class BadRequestFailure extends Failure {
  BadRequestFailure({super.message = Failure.badRequestFailureMessage});
}

class InternalServerErrorFailure extends Failure {
  InternalServerErrorFailure(
      {super.message = Failure.internalServerErrorMessage});
}

class NotFoundFailure extends Failure {
  NotFoundFailure({super.message = Failure.notFoundErrorMessage});
}

class BadGatewayFailure extends Failure {
  BadGatewayFailure({super.message = Failure.badRequestFailureMessage});
}

class UnAuthorizedFailure extends Failure {
  UnAuthorizedFailure({super.message = Failure.unauthorizedErrorMessage});
}

class UnknownNetworkFailure extends Failure {
  UnknownNetworkFailure(
      {super.message = Failure.unknownNetworkFailureErrorMessage});
}

class SendTimeoutFailure extends Failure {
  SendTimeoutFailure({super.message = "Send timeout Failure"});
}

class CanceledUserFailure extends Failure {
  CanceledUserFailure(
      {super.message = Failure.canceledUserFailureErrorMessage});
}

class ResponseFailure extends Failure {
  ResponseFailure({required super.message});

  factory ResponseFailure.fromJson(
      {required Map<String, dynamic> json, required String messageErrorKey}) {
    return ResponseFailure(
        message: json[messageErrorKey] ?? Failure.invalidResponseDataTypeErrorMessage);
  }
}
class NoDataResponseFailure extends Failure {
  NoDataResponseFailure({ super.message = Failure.nullableResponseDataErrorMessage});
}