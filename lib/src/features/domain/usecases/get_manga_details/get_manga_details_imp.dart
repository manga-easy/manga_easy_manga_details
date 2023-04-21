import 'package:manga_easy_manga_details/src/features/domain/entities/manga_details_entity.dart';
import 'package:manga_easy_manga_details/src/features/domain/repositories/get_manga_details_repository.dart';
import 'package:manga_easy_manga_details/src/features/domain/usecases/get_manga_details/get_manga_details_usecase.dart';

class GetMangaDetailsUseCaseImp implements GetMangaDetailsUseCase {
  final GetMangaDetailsRepository _getMangaDetailsRepository;
  GetMangaDetailsUseCaseImp(this._getMangaDetailsRepository);

  @override
  Future<MangaDetailsEntity> call(String mangaName) async {
    return await _getMangaDetailsRepository(mangaName);
  }
}
