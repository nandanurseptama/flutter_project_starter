import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_usecase.freezed.dart';

@freezed
class ResultUsecase<Error, Success> with _$ResultUsecase {
  factory ResultUsecase.ok({required String uuid, required Success success}) =
      Ok;
  factory ResultUsecase.fail({required String uuid, required Error error}) =
      Fail;
}
