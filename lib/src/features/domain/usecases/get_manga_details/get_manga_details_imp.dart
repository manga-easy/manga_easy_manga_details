import 'package:manga_easy_manga_details/src/features/data/dtos/manga_dto.dart';
import 'package:manga_easy_manga_details/src/features/domain/repositories/get_manga_details_repository.dart';
import 'package:manga_easy_manga_details/src/features/domain/usecases/get_manga_details/get_manga_details_usecase.dart';
import 'package:manga_easy_sdk/manga_easy_sdk.dart';

class GetMangaDetailsUseCaseImp implements GetMangaDetailsUseCase {
  final GetMangaDetailsRepository _getMangaDetailsRepository;
  GetMangaDetailsUseCaseImp(this._getMangaDetailsRepository);

  @override
  Future<InfoComicModel> call(String mangaUniqueId) async {
    return await _getMangaDetailsRepository.getMangaDetails(mangaUniqueId);
  }
}
