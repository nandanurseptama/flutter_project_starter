import 'package:flutter_project_starter/examples/comments/data/models/comment.dart';
import 'package:flutter_project_starter/examples/comments/domain/repo/comment_repository.dart';
import 'package:flutter_project_starter/export.dart';

@injectable
class GetSingleCommentUsecase extends BaseUsecase<int, Comment> {
  @preResolve
  final CommentRepository _commentRepository;

  GetSingleCommentUsecase(
      {required CommentRepository commentRepository,
      @preResolve required super.uuidGenerator})
      : _commentRepository = commentRepository;

  @override
  Future<Comment> calling(String uuid, int params) {
    return _commentRepository.getSingleComment(params);
  }
}
