import 'package:flutter_test/flutter_test.dart';
import 'package:manga_easy_manga_details/src/features/data/datasources/get_manga_chapters_qty_datasource.dart';
import 'package:manga_easy_manga_details/src/features/data/datasources/local/get_manga_chapters_qty_datasource_imp.dart';
import 'package:manga_easy_manga_details/src/features/data/repositories/get_manga_chapters_qty_repository_imp.dart';
import 'package:manga_easy_manga_details/src/features/domain/repositories/get_manga_chapters_qty_repository.dart';

void main() {
  GetMangaChaptersQtyDataSource dataSource = GetMangaChaptersQtyDataSourceImp();
  GetMangaChaptersQtyRepository repository =
      GetMangaChaptersQtyRepositoryImp(dataSource);

  test('Devolve a quantidade de capítulos do manga One Piece', () async {
    var result = await repository('One Piece');

    expect(
      result.chapters.length,
      4,
    );
  });
}
