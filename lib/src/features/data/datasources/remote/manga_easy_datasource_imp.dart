import 'package:client_driver/client_driver.dart';
import 'package:manga_easy_manga_details/src/features/data/datasources/remote/manga_easy_datasource.dart';
import 'package:manga_easy_manga_details/src/features/data/dtos/manga_dto.dart';

class MangaEasyDataSourceImp extends MangaEasyDataSource {
  final DriverHttp _clientDriver;
  final String path = 'catalog';
  final String url = 'http://catalog.lucas-cm.com.br';
  final String version = 'v1';

  MangaEasyDataSourceImp(this._clientDriver);

  @override
  Future<MangaDto> getMangaDetails({
    required String mangaUniqueId,
  }) async {
    var result = await _clientDriver.get(
      path: '$url/$version/$path?uniqueid=$mangaUniqueId',
    );

    return MangaDto.fromJson(result.data);
  }
}
