import 'package:manga_easy_manga_details/src/features/data/datasources/get_manga_details_datasource.dart';
import 'package:manga_easy_manga_details/src/features/domain/entities/manga_details_entity.dart';
import 'package:manga_easy_manga_details/src/features/domain/repositories/get_manga_details_repository.dart';

class GetMangaDetailsRepositoryImp implements GetMangaDetailsRepository {
  final GetMangaDetailsDataSource _getMangaDetailsDataSource;
  GetMangaDetailsRepositoryImp(this._getMangaDetailsDataSource);

  @override
  Future<MangaDetailsEntity> call(String name) async {
    return _getMangaDetailsDataSource(name);
  }
}
