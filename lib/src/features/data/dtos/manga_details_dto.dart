import 'package:manga_easy_manga_details/src/features/data/dtos/comment_dto.dart';
import 'package:manga_easy_manga_details/src/features/domain/entities/chapter_entity.dart';
import 'package:manga_easy_manga_details/src/features/domain/entities/comment_entity.dart';
import 'package:manga_easy_manga_details/src/features/domain/entities/manga_details_entity.dart';
import 'chapter_dto.dart';

extension MangaDetailsDto on MangaDetailsEntity {
  Map toJson() {
    return {
      'name': name,
      'authorName': authorName,
      'coverImg': coverImg,
      'genres': genres,
      'synopsis': synopsis,
      'host': host,
      'rating': rating,
      'status': status,
      'chapters': chapters,
      'comments': comments,
    };
  }

  static MangaDetailsEntity fromJson(Map map) {
    return MangaDetailsEntity(
      name: map['name'],
      coverImg: map['coverImg'],
      authorName: map['authorName'],
      genres: map['genres'],
      synopsis: map['synopsis'],
      host: map['host'],
      rating: map['rating'],
      status: map['status'],
      chapters: List<ChapterEntity>.from(
        (map['chapters'] as List<dynamic>).map<ChapterEntity>(
          (e) => ChapterDto.fromJson(e as Map<String, dynamic>),
        ),
      ),
      comments: List<CommentEntity>.from(
        (map['comments'] as List<dynamic>).map<CommentEntity>(
          (e) => CommentsDto.fromJson(e as Map<dynamic, dynamic>),
        ),
      ),
    );
  }
}
