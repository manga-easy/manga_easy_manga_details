// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:manga_easy_manga_details/src/features/data/datasources/remote/manga_easy_datasource.dart';
import 'package:manga_easy_manga_details/src/features/domain/mappers/mapper_manga.dart';
import 'package:manga_easy_manga_details/src/features/domain/repositories/get_manga_details_repository.dart';
import 'package:manga_easy_sdk/manga_easy_sdk.dart';

class GetMangaDetailsRepositoryImp implements GetMangaDetailsRepository {
  final MangaEasyDataSource _mangaEasyDataSource;
  final MapperManga _mapperManga;

  GetMangaDetailsRepositoryImp(this._mangaEasyDataSource, this._mapperManga);

  @override
  Future<InfoComicModel> getMangaDetails(String mangaUniqueId) async {
    var result = await _mangaEasyDataSource.getMangaDetails(
      mangaUniqueId: mangaUniqueId,
    );
    return result.data.map((e) => _mapperManga.from(e)).first;
  }
}
