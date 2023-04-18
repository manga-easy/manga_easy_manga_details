import 'package:manga_easy_manga_details/src/features/data/datasources/get_manga_comments_datasource.dart';
import 'package:manga_easy_manga_details/src/features/domain/entities/manga_details_entity.dart';
import 'package:manga_easy_manga_details/src/features/domain/repositories/get_manga_comments_repository.dart';

class GetMangaCommentsRepositoryImp implements GetMangaCommentsRepository {
  final GetMangaCommentsDataSource _getMangaCommentsDataSource;
  GetMangaCommentsRepositoryImp(this._getMangaCommentsDataSource);

  @override
  Future<MangaDetailsEntity> call(String name) async {
    return _getMangaCommentsDataSource(name);
  }
}
