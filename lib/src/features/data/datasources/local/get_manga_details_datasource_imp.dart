import 'package:manga_easy_manga_details/src/features/data/datasources/get_manga_details_datasource.dart';
import 'package:manga_easy_manga_details/src/features/data/dtos/manga_details_dto.dart';
import 'package:manga_easy_manga_details/src/features/domain/entities/manga_details_entity.dart';
import '../api_mock.dart';

class GetMangaDetailsDataSourceImp implements GetMangaDetailsDataSource {
  @override
  MangaDetailsEntity call(String mangaName) {
    return MangaDetailsDto.fromJson(
      apiMock["mangas"]!.firstWhere(
        (element) => element["name"] == mangaName,
      ),
    );
  }
}
