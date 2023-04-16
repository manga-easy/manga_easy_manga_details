import 'package:manga_easy_manga_details/src/features/data/datasources/get_comment_by_uuid_datasource.dart';
import 'package:manga_easy_manga_details/src/features/domain/entities/comment_entity.dart';
import 'package:manga_easy_manga_details/src/features/domain/repositories/get_comment_by_uuid_repository.dart';

class GetCommentByUuidRepositoryImp implements GetCommentByUuidRepository {
  final GetCommentByUuidDataSource _getCommentByUuidDatasource;
  GetCommentByUuidRepositoryImp(this._getCommentByUuidDatasource);

  @override
  Future<CommentEntity> call(String uuid) async {
    return _getCommentByUuidDatasource(uuid);
  }
}
