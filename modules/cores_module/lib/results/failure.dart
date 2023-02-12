import 'package:equatable/equatable.dart';

class Failure extends Equatable implements Exception {
  /// technical error message
  static const String badRequestFailureMessage = "Bad Request";
  static const String internalServerErrorMessage = "Internal Server Error";
  static const String notFoundErrorMessage = "Not Found";
  static const String badGatewayErrorMessage = "Bad Gateway";
  static const String unauthorizedErrorMessage = "Unauthorized";
  static const String unknownNetworkFailureErrorMessage =
      "Unknown Network Failure";
  static const String canceledUserFailureErrorMessage = "Canceled User Failure";
  static const String nullableResponseDataErrorMessage =
      "Nullable Response Data";
  static const String invalidResponseDataTypeErrorMessage =
      "Invalid Response Data Type";
  static const String usecaseStillProcessing =
      "Usecase Still Processing";

  /// mapped front message
  static const String unexpectedErrorMessageFront =
      "Unexpected Error. Please contact Customer Service by email";

  String get mappedFront => errorDictionary[message] ?? "Unexpected Error";

  static Map<String, String> get errorDictionary => {
        badRequestFailureMessage: Failure.unexpectedErrorMessageFront,
        internalServerErrorMessage: Failure.unexpectedErrorMessageFront,
        notFoundErrorMessage: Failure.unexpectedErrorMessageFront,
        badGatewayErrorMessage: Failure.unexpectedErrorMessageFront,
        unauthorizedErrorMessage: Failure.unexpectedErrorMessageFront,
        unknownNetworkFailureErrorMessage: Failure.unexpectedErrorMessageFront,
        canceledUserFailureErrorMessage: Failure.unexpectedErrorMessageFront,
        nullableResponseDataErrorMessage: Failure.unexpectedErrorMessageFront,
        invalidResponseDataTypeErrorMessage: Failure.unexpectedErrorMessageFront,
        usecaseStillProcessing : Failure.unexpectedErrorMessageFront
      };

  final String message;

  Failure({required this.message});

  @override
  List<Object?> get props => [message, mappedFront];
}
