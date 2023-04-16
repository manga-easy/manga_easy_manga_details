import 'package:manga_easy_manga_details/src/features/data/datasources/get_manga_chapters_qty_datasource.dart';
import 'package:manga_easy_manga_details/src/features/domain/entities/manga_details_entity.dart';
import 'package:manga_easy_manga_details/src/features/domain/repositories/get_manga_chapters_qty_repository.dart';

class GetMangaChaptersQtyRepositoryImp
    implements GetMangaChaptersQtyRepository {
  final GetMangaChaptersQtyDataSource _getMangaChaptersQtyDataSource;
  GetMangaChaptersQtyRepositoryImp(this._getMangaChaptersQtyDataSource);

  @override
  Future<MangaDetailsEntity> call(String name) async {
    return _getMangaChaptersQtyDataSource(name);
  }
}
