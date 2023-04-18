// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:manga_easy_manga_details/src/features/domain/entities/chapter_entity.dart';
import 'package:manga_easy_manga_details/src/features/domain/entities/comment_entity.dart';

class MangaDetailsEntity {
  final String name;
  final String coverImg;
  final String authorName;
  final List<String> genres;
  final String synopsis;
  final String host;
  final double rating;
  final String status;
  final List<ChapterEntity> chapters;
  final List<CommentEntity> comments;

  MangaDetailsEntity({
    required this.name,
    required this.coverImg,
    required this.authorName,
    required this.genres,
    required this.synopsis,
    required this.host,
    required this.rating,
    required this.status,
    required this.chapters,
    required this.comments,
  });
}
