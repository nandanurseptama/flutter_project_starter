import 'package:flutter_project_starter/examples/comments/domain/repo/comment_repository.dart';
import 'package:flutter_project_starter/examples/comments/domain/usecases/get_single_comment_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:uuid/uuid.dart';

import '../../../../mocks.dart';
import '../../mocks.dart';

void main(){
  final Uuid uuidGenerator = UuidMock();
  final CommentRepository commentRepository = CommentRepositoryMock();
  final GetSingleCommentUsecase getSingleCommentUsecase = GetSingleCommentUsecase(commentRepository: commentRepository, uuidGenerator: uuidGenerator);

  group("Get single comment usecase test", (){
   test("When get single comment usecase called should call function on repository", ()async{
      var result = await getSingleCommentUsecase(1);

      expect(getSingleCommentUsecase.isLoading, false);
      verify(()=>uuidGenerator.v4()).called(1);
      verify(()=>commentRepository.getSingleComment(1)).called(1);
   });
  });
}