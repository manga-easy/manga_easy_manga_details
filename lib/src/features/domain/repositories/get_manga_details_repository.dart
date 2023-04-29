import 'package:manga_easy_sdk/manga_easy_sdk.dart';

abstract class GetMangaDetailsRepository {
  Future<InfoComicModel> getMangaDetails(String mangaUniqueId);
}
