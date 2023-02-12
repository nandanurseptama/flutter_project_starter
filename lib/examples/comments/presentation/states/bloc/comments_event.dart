part of 'comments_bloc.dart';

@freezed
class CommentsEvent with _$CommentsEvent {
  factory CommentsEvent.loadSingleComment(int id) = _LoadSingleComment;
}
