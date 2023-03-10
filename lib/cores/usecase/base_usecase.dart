import 'package:flutter_project_starter/cores/cores_module.dart';
import 'package:uuid/uuid.dart';

abstract class BaseUsecase<Params, Result> {
  final Uuid _uuidGenerator;

  BaseUsecase({required Uuid uuidGenerator}) : _uuidGenerator = uuidGenerator;

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  String get uuid => _uuid;
  
  String _uuid = "";

  Future<Result> calling(String uuid, Params params);

  Future<ResultUsecase<Failure, Result>> call(Params params) async {
    try {
      if (_isLoading) {
        return ResultUsecase.fail(
            uuid: _uuid,
            error: Failure(message: Failure.usecaseStillProcessing));
      }
      _uuid = _uuidGenerator.v4();
      var resultCall = await calling(_uuid, params);
      return ResultUsecase.ok(uuid: _uuid, success: resultCall);
    } on Failure catch (failure) {
      return ResultUsecase.fail(uuid: _uuid, error: failure);
    } catch (e) {
      return ResultUsecase.fail(
          uuid: _uuid,
          error: Failure(message: Failure.unknownNetworkFailureErrorMessage));
    } finally {
      _uuid = "";
      _isLoading = false;
    }
  }
}
