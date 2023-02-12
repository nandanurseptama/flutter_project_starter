import 'package:cores_module/cores_module.dart';

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
