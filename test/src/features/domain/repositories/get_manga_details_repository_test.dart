import 'package:flutter_test/flutter_test.dart';
import 'package:manga_easy_manga_details/src/features/data/datasources/get_manga_details_datasource.dart';
import 'package:manga_easy_manga_details/src/features/data/datasources/local/get_manga_details_datasource_imp.dart';
import 'package:manga_easy_manga_details/src/features/data/repositories/get_manga_details_repository_imp.dart';
import 'package:manga_easy_manga_details/src/features/domain/repositories/get_manga_details_repository.dart';

void main() {
  GetMangaDetailsDataSource dataSource = GetMangaDetailsDataSourceImp();
  GetMangaDetailsRepository repository =
      GetMangaDetailsRepositoryImp(dataSource);

  test('Devolve a quantidade de capítulos do manga One Piece', () async {
    var result = await repository('One Piece');

    expect(
      result.chapters.length,
      4,
    );
  });

  test('Devolve a avaliação do manga One Piece', () async {
    var result = await repository('One Piece');

    expect(
      result.rating,
      4.8,
    );
  });

  test('Devolve o status do manga One Piece', () async {
    var result = await repository('One Piece');

    expect(
      result.status,
      'Ativo',
    );
  });

  test('Devolve o host do manga One Piece', () async {
    var result = await repository('One Piece');

    expect(
      result.host,
      'One Piece Ex',
    );
  });
}
