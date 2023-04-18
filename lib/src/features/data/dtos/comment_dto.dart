import 'package:manga_easy_manga_details/src/features/domain/entities/comment_entity.dart';

extension CommentsDto on CommentEntity {
  Map toJson() {
    return {
      'author': author,
      'avatar': avatar,
      'comment': comment,
      'rating': rating,
      'commentedAt': commentedAt,
      'likes': likes,
    };
  }

  static CommentEntity fromJson(Map map) {
    return CommentEntity(
      author: map['author'],
      avatar: map['avatar'],
      comment: map['comment'],
      rating: map['rating'],
      commentedAt: map['commentedAt'],
      likes: map['likes'],
    );
  }
}
