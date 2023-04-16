import 'package:manga_easy_manga_details/src/features/data/datasources/get_manga_chapters_qty_datasource.dart';
import 'package:manga_easy_manga_details/src/features/data/dtos/manga_details_dto.dart';
import 'package:manga_easy_manga_details/src/features/domain/entities/manga_details_entity.dart';

class GetMangaChaptersQtyDataSourceImp
    implements GetMangaChaptersQtyDataSource {
  var apiMock = {
    "mangas": [
      {
        "name": "One Piece",
        "authorName": "Eiichiro Oda",
        "genres": [
          "Ação",
          "Aventura",
          "Comédia",
          "Fantasia",
          "Shounen",
          "Super Poderes"
        ],
        "synopsis":
            "One Piece começa quando Gol D. Roger, o Rei Dos Piratas que possuiu tudo nesse mundo, antes de ser executado, diz que escondeu o seu tesouro em algum lugar da Grand Line, um oceano extremamente perigoso. Desde então muitos piratas se aventuram pela Grand Line para tentar encontrar o tesouro chamado One Piece. Um deles é Monkey D. Luffy, o garoto que, acidentalmente, comeu uma das Akuma No Mi, a Gomu Gomu No Mi (Fruta da Borracha), e agora ele pode esticar seu corpo como se fosse uma borracha. A jornada dele começa atrás de companheiros e um barco, que ele vai conseguindo pouco a pouco, pois tem um objetivo: Ser o Rei Dos Piratas!!",
        "host": "One Piece Ex",
        "chapters": [
          {"translator": "Opex", "translatedAt": "19/07/2006"},
          {"translator": "Opex", "translatedAt": "20/07/2006"},
          {"translator": "Opex", "translatedAt": "23/07/2006"},
          {"translator": "Opex", "translatedAt": "05/08/2006"}
        ]
      },
      {
        "name": "One Piece",
        "authorName": "Eiichiro Oda",
        "genres": [
          "Ação",
          "Aventura",
          "Comédia",
          "Fantasia",
          "Shounen",
          "Super Poderes"
        ],
        "synopsis":
            "One Piece começa quando Gol D. Roger, o Rei Dos Piratas que possuiu tudo nesse mundo, antes de ser executado, diz que escondeu o seu tesouro em algum lugar da Grand Line, um oceano extremamente perigoso. Desde então muitos piratas se aventuram pela Grand Line para tentar encontrar o tesouro chamado One Piece. Um deles é Monkey D. Luffy, o garoto que, acidentalmente, comeu uma das Akuma No Mi, a Gomu Gomu No Mi (Fruta da Borracha), e agora ele pode esticar seu corpo como se fosse uma borracha. A jornada dele começa atrás de companheiros e um barco, que ele vai conseguindo pouco a pouco, pois tem um objetivo: Ser o Rei Dos Piratas!!",
        "host": "One Piece Ex",
        "chapters": [
          {"translator": "Opex", "translatedAt": "19/07/2006"},
          {"translator": "Opex", "translatedAt": "20/07/2006"},
          {"translator": "Opex", "translatedAt": "23/07/2006"},
          {"translator": "Opex", "translatedAt": "05/08/2006"}
        ]
      }
    ]
  };

  @override
  MangaDetailsEntity call(String name) {
    return MangaDetailsDto.fromJson(
        apiMock["mangas"]!.firstWhere((element) => element["name"] == name));
  }
}
