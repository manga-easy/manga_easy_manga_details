import 'package:manga_easy_manga_details/src/features/domain/entities/chapter_entity.dart';

extension ChapterDto on ChapterEntity {
 Map toJson() {
    return {
      'translator': translator,
      'translatedAt': translatedAt,
    };
  }

  static ChapterEntity fromJson(Map map) {
    return ChapterEntity(
      translator: map['translator'],
      translatedAt: map['translatedAt'],
    );
  }
}
