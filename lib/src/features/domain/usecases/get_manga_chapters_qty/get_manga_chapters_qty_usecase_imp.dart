import 'package:manga_easy_manga_details/src/features/domain/entities/manga_details_entity.dart';
import 'package:manga_easy_manga_details/src/features/domain/repositories/get_manga_chapters_qty_repository.dart';
import 'package:manga_easy_manga_details/src/features/domain/usecases/get_manga_chapters_qty/get_manga_chapters_qty_usecase.dart';

class GetMangaChaptersQtyUseCaseImp implements GetMangaChaptersQtyUseCase {
  final GetMangaChaptersQtyRepository _getMangaChapertsQtyRepository;
  GetMangaChaptersQtyUseCaseImp(this._getMangaChapertsQtyRepository);
  
  @override
  Future<MangaDetailsEntity> call(String name) async {
    return await _getMangaChapertsQtyRepository(name);
  }
}
