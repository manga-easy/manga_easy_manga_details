// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:manga_easy_manga_details/src/features/domain/entities/manga_details_entity.dart';
import 'package:manga_easy_manga_details/src/features/domain/repositories/get_manga_comments_repository.dart';
import 'package:manga_easy_manga_details/src/features/domain/usecases/get_manga_comments_usecase/get_manga_comments_usecase.dart';

class GetMangaCommentsUseCaseImp implements GetMangaCommentsUseCase {
  final GetMangaCommentsRepository _getMangaCommentsRepository;
  GetMangaCommentsUseCaseImp(this._getMangaCommentsRepository);

  @override
  Future<MangaDetailsEntity> call(String mangaName) async {
    return await _getMangaCommentsRepository(mangaName);
  }
}
