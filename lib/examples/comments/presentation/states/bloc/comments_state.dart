part of 'comments_bloc.dart';

@freezed
class CommentsState with _$CommentsState {
  factory CommentsState.loading() = _Loading;
  factory CommentsState.loaded(List<Comment> comments) = _Loaded;
  factory CommentsState.error(List<Comment> comments, Failure failure) = _Error;
}
