import 'package:manga_easy_manga_details/src/features/domain/entities/chapter_entity.dart';
import 'package:manga_easy_manga_details/src/features/domain/entities/manga_details_entity.dart';
import 'chapters_dto.dart';

extension MangaDetailsDto on MangaDetailsEntity {
  Map toJson() {
    return {
      'name': name,
      'authorName': authorName,
      'genres': genres,
      'synopsis': synopsis,
      'host': host,
      'chapters': chapters,
    };
  }

  static MangaDetailsEntity fromJson(Map map) {
    return MangaDetailsEntity(
      name: map['name'],
      authorName: map['authorName'],
      genres: map['genres'],
      synopsis: map['synopsis'],
      host: map['host'],
      chapters: List<ChapterEntity>.from(
        (map['chapters'] as List<dynamic>).map<ChapterEntity>(
          (e) => ChapterDto.fromJson(e as Map<String, dynamic>),
        ),
      ),
    );
  }
}
