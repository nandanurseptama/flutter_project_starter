import 'package:flutter_project_starter/cores/cores_module.dart';
import 'package:flutter_project_starter/export.dart';

part 'comment.g.dart';

@JsonSerializable()
class Comment {
  @JsonKey(name: 'id', defaultValue: 0, disallowNullValue: true)
  final int id;
  @JsonKey(name: 'body', defaultValue: "", disallowNullValue: true)
  final String body;

  const Comment({required this.id, required this.body});

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}
