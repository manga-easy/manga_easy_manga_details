// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:manga_easy_manga_details/src/features/domain/entities/chapter_entity.dart';

class MangaDetailsEntity {
  final String name;
  final String authorName;
  final List<String> genres;
  final String synopsis;
  final String host;
  final List<ChapterEntity> chapters;

  MangaDetailsEntity({
    required this.name,
    required this.authorName,
    required this.genres,
    required this.synopsis,
    required this.host,
    required this.chapters,
  });
}
