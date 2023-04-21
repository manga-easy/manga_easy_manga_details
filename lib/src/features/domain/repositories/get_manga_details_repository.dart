import 'package:manga_easy_manga_details/src/features/domain/entities/manga_details_entity.dart';

abstract class GetMangaDetailsRepository {
  Future<MangaDetailsEntity> call(String name);
}
