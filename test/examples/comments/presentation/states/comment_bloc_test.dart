import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_project_starter/cores/cores_module.dart';
import 'package:flutter_project_starter/examples/comments/data/models/comment.dart';
import 'package:flutter_project_starter/examples/comments/domain/usecases/get_single_comment_usecase.dart';
import 'package:flutter_project_starter/examples/comments/presentation/states/bloc/comments_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mocks.dart';

void main() {
  final GetSingleCommentUsecase getSingleCommentUsecase =
      GetSingleCommentUsecaseMock();

  final Comment exampleComment = const Comment(id: 1, body: "ok");
  final String exampleUuid = "123456";
  final InternalServerErrorFailure internalServerErrorFailure =
      InternalServerErrorFailure();

  group("Comment Bloc test", () {
    blocTest<CommentsBloc, CommentsState>(
      'When get single comment usecase give success result, should emit state in order [CommentState.loading, CommentState.loaded]',
      build: () => CommentsBloc(getSingleCommentUsecase: getSingleCommentUsecase),
      act: (bloc) => bloc.add(CommentsEvent.loadSingleComment(1)),
      setUp: () {
        when(() => getSingleCommentUsecase(1)).thenAnswer((invocation) =>
            Future.value(
                ResultUsecase.ok(uuid: exampleUuid, success: exampleComment)));
      },
      expect: () => <CommentsState>[
        CommentsState.loading(),
        CommentsState.loaded([exampleComment])
      ],
    );

    blocTest<CommentsBloc, CommentsState>(
      'When get single comment usecase give fail result, should emit state in order [CommentState.loading, CommentState.error]',
      build: () => CommentsBloc(getSingleCommentUsecase: getSingleCommentUsecase),
      act: (bloc) => bloc.add(CommentsEvent.loadSingleComment(1)),
      setUp: () {
        when(() => getSingleCommentUsecase(1)).thenAnswer((invocation) =>
            Future.value(ResultUsecase.fail(
                uuid: exampleUuid, error: internalServerErrorFailure)));
      },
      expect: () => <CommentsState>[
        CommentsState.loading(),
        CommentsState.error([], internalServerErrorFailure)
      ],
    );
  });
}
