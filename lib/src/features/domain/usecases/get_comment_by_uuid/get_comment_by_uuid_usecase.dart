import 'package:manga_easy_manga_details/src/features/domain/entities/comment_entity.dart';

abstract class GetCommentByUuidUseCase {
  Future<CommentEntity> call(String uuid);
}
