import 'package:manga_easy_manga_details/src/features/data/dtos/comment_dto.dart';

abstract class GetCommentByUuidDataSource {
  CommentDto call(String uuid);
}
