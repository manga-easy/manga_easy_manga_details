import 'package:client_driver/client_driver.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:manga_easy_manga_details/src/features/data/datasources/remote/manga_easy_datasource.dart';
import 'package:manga_easy_manga_details/src/features/data/datasources/remote/manga_easy_datasource_imp.dart';
import 'package:manga_easy_manga_details/src/features/data/repositories/get_manga_details_repository_imp.dart';
import 'package:manga_easy_manga_details/src/features/domain/mappers/mapper_manga.dart';
import 'package:manga_easy_manga_details/src/features/domain/repositories/get_manga_details_repository.dart';

void main() {
  MangaEasyDataSource dataSource = MangaEasyDataSourceImp(DioDriver());
  MapperManga mapperManga = MapperManga();
  GetMangaDetailsRepository repository =
      GetMangaDetailsRepositoryImp(dataSource, mapperManga);

  test('Devolve a quantidade de capítulos do manga One Punch Man', () async {
    var result = await repository.getMangaDetails('onepunchman');

    expect(result.lastcap, '210');
  });
  test('Devolve a quantidade de capítulos do manga One Piece', () async {
    var result = await repository.getMangaDetails('onepiece');

    expect(result.lastcap, '1071');
  });

  test('Devolve o autor do manga One Piece', () async {
    var result = await repository.getMangaDetails('onepiece');

    expect(result.author, 'Oda Eiichiro');
  });

  test('Devolve O QUE? quando n tem nada?', () async {
    var result = await repository.getMangaDetails('');

    expect(result.name, '');
  });

//   test('Devolve a avaliação do manga One Piece', () async {
//     var result = await repository.getMangaDetails('One Piece');

//     expect(
//       result.rating,
//       4.8,
//     );
//   });

//   test('Devolve o status do manga One Piece', () async {
//     var result = await repository.getMangaDetails('One Piece');

//     expect(
//       result.status,
//       'Ativo',
//     );
//   });

//   test('Devolve o host do manga One Piece', () async {
//     var result = await repository.getMangaDetails('One Piece');

//     expect(
//       result.host,
//       'One Piece Ex',
//     );
//   });
// }
}
