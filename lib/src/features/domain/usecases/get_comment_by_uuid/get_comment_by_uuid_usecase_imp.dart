import 'package:manga_easy_manga_details/src/features/domain/entities/comment_entity.dart';
import 'package:manga_easy_manga_details/src/features/domain/repositories/get_comment_by_uuid_repository.dart';
import 'package:manga_easy_manga_details/src/features/domain/usecases/get_comment_by_uuid/get_comment_by_uuid_usecase.dart';

class GetCommentByUuidUseCaseImp implements GetCommentByUuidUseCase {
  final GetCommentByUuidRepository _getCommentByUuidRepository;
  GetCommentByUuidUseCaseImp(this._getCommentByUuidRepository);

  @override
  Future<CommentEntity> call(String uuid) async {
    return await _getCommentByUuidRepository(uuid);
  }
}
