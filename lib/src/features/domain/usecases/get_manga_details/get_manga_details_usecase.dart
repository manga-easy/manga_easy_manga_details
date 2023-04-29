
import 'package:manga_easy_sdk/manga_easy_sdk.dart';

abstract class GetMangaDetailsUseCase {
  Future<InfoComicModel> call(String mangaName);
}
