import 'package:flutter_test/flutter_test.dart';
import 'package:manga_easy_manga_details/src/features/data/datasources/get_comment_by_uuid_datasource.dart';
import 'package:manga_easy_manga_details/src/features/data/datasources/local/get_comment_by_uuid_local_datasource_imp.dart';
import 'package:manga_easy_manga_details/src/features/data/repositories/get_comment_by_uuid_repository_imp.dart';
import 'package:manga_easy_manga_details/src/features/domain/repositories/get_comment_by_uuid_repository.dart';

void main() {
  GetCommentByUuidDataSource dataSource = GetCommentByUuidLocalDataSourceImp();
  GetCommentByUuidRepository repository =
      GetCommentByUuidRepositoryImp(dataSource);
  test('Devolve um comentário qualquer', () {
    var result = repository('qualquer');

    expect(result, isNotNull);
  });

  test(
      'Devolve o username Bruno Almeida com o uuid gerado: eca16712-dbfa-11ed-afa1-0242ac120002',
      () async {
    var result = await repository('eca16712-dbfa-11ed-afa1-0242ac120002');

    expect(
      result.username,
      'Bruno Almeida',
    );
  });
}
