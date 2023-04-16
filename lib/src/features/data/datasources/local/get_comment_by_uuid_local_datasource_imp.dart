import 'package:manga_easy_manga_details/src/features/data/datasources/get_comment_by_uuid_datasource.dart';
import 'package:manga_easy_manga_details/src/features/data/dtos/comment_dto.dart';

class GetCommentByUuidLocalDataSourceImp implements GetCommentByUuidDataSource {
  var jsonGenerated = {
    'uuid': 'eca16712-dbfa-11ed-afa1-0242ac120002',
    'username': 'Bruno Almeida',
    'avatar': 'avatar',
    'rating': 5.0,
    'date': 'date',
    'message': 'message',
    'likes': 0,
  };

  var jsonAny = {
    'uuid': 'any',
    'username': 'username2',
    'avatar': 'avatar2',
    'rating': 2.0,
    'date': 'date2',
    'message': 'message2',
    'likes': 100,
  };
  @override
  CommentDto call(String uuid) {
    if (uuid.contains('eca16712-dbfa-11ed-afa1-0242ac120002')) {
      return CommentDto.fromMap(jsonGenerated);
    }
    return CommentDto.fromMap(jsonAny);
  }
}
