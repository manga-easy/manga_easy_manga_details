import 'package:manga_easy_manga_details/src/features/domain/entities/comment_entity.dart';
import 'package:manga_easy_manga_details/src/features/domain/usecases/get_comment_by_uuid/get_comment_by_uuid_usecase.dart';

class CommentController {
  final GetCommentByUuidUseCase _getCommentByUuidUseCase;

  CommentController(this._getCommentByUuidUseCase) {
    getCommentByUuid('eca16712-dbfa-11ed-afa1-0242ac120002');
  }

  late CommentEntity comment;

  getCommentByUuid(String uuid) async {
    comment = await _getCommentByUuidUseCase(uuid);
  }
}
