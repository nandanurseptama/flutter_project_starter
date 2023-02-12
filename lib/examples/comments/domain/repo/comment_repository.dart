import 'package:flutter_project_starter/examples/comments/data/models/comment.dart';

abstract class CommentRepository{
  Future<Comment> getSingleComment(int id);
}