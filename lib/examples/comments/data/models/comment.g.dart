// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Comment _$CommentFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    disallowNullValues: const ['id', 'body'],
  );
  return Comment(
    id: json['id'] as int? ?? 0,
    body: json['body'] as String? ?? '',
  );
}

Map<String, dynamic> _$CommentToJson(Comment instance) => <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
    };
