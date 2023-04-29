import 'package:manga_easy_manga_details/src/features/data/dtos/manga_dto.dart';

abstract class MangaEasyDataSource {
  Future<MangaDto> getMangaDetails({required String mangaUniqueId});
}
