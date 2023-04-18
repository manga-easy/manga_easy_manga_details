import 'package:flutter_test/flutter_test.dart';
import 'package:manga_easy_manga_details/src/features/data/datasources/get_manga_comments_datasource.dart';
import 'package:manga_easy_manga_details/src/features/data/datasources/local/get_manga_comments_datasource_imp.dart';
import 'package:manga_easy_manga_details/src/features/data/repositories/get_manga_comments_repository_imp.dart';
import 'package:manga_easy_manga_details/src/features/domain/repositories/get_manga_comments_repository.dart';

void main() {
  GetMangaCommentsDataSource dataSource = GetMangaCommentsDataSourceImp();
  GetMangaCommentsRepository repository =
      GetMangaCommentsRepositoryImp(dataSource);

  test('Devolve os comentários do mangá One Piece', () async {
    var result = await repository('One Piece');

    expect(
      result.comments.length,
      3,
    );
  });
}
