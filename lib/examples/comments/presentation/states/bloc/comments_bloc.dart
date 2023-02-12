import 'package:cores_module/cores_module.dart';
import 'package:flutter_project_starter/examples/comments/data/models/comment.dart';
import 'package:flutter_project_starter/examples/comments/domain/usecases/get_single_comment_usecase.dart';
import 'package:flutter_project_starter/export.dart';



part 'comments_event.dart';
part 'comments_state.dart';

part 'comments_bloc.freezed.dart';

@injectable
class CommentsBloc extends Bloc<CommentsEvent, CommentsState> {
  @preResolve
  final GetSingleCommentUsecase _getSingleCommentUsecase;
  CommentsBloc({required GetSingleCommentUsecase getSingleCommentUsecase}) : _getSingleCommentUsecase = getSingleCommentUsecase, super(CommentsState.loading()) {
    on<CommentsEvent>((event, emit) {
      return event.maybeMap<void>(
        loadSingleComment: (loadSingleCommentEvent) {
          return _loadSingleCommentEventListener(loadSingleCommentEvent.id, emit);
        },
        orElse: (){
          return;
        }
      );
    });
  }
 void _loadSingleCommentEventListener(int id, Emitter<CommentsState> emit)async{
    emit(CommentsState.loading());
    return _getSingleCommentUsecase(id).then((result){
      return result.when<void>(ok: (uuid, success) {
        return emit(CommentsState.loaded([success]));
      },fail: (uuid, error) {
        return emit(CommentsState.error([],error ));
      });
    });
  }
}
