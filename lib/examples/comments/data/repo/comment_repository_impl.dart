
import 'package:flutter_project_starter/examples/comments/data/models/comment.dart';
import 'package:flutter_project_starter/examples/comments/domain/repo/comment_repository.dart';
import 'package:flutter_project_starter/export.dart';

@Injectable(as: CommentRepository)
class CommentRepositoryImpl implements CommentRepository {
  @preResolve
  final RemoteDatasource _remoteDatasource;

  CommentRepositoryImpl({required RemoteDatasource remoteDatasource})
      : _remoteDatasource = remoteDatasource;

  @override
  Future<Comment> getSingleComment(int id) async {
    try {
      var response = await _remoteDatasource.get(
          url: "https://dummyjson.com/comments/$id");
      if (response.data == null) {
        throw NoDataResponseFailure();
      }
      return Comment.fromJson(response.data);
    } catch (e) {
      throw remoteDataSourceErrorCatcher(e);
    }
  }
}
