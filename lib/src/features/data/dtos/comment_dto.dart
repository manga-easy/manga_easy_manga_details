import 'package:manga_easy_manga_details/src/features/domain/entities/comment_entity.dart';

class CommentDto extends CommentEntity {
  CommentDto({
    required super.uuid,
    required super.username,
    required super.avatar,
    required super.rating,
    required super.date,
    required super.message,
    required super.likes,
  });

  Map toMap() {
    return {
      'uuid': uuid,
      'username': username,
      'avatar': avatar,
      'rating': rating,
      'date': date,
      'message': message,
      'likes': likes,
    };
  }

  static CommentDto fromMap(Map map) {
    return CommentDto(
      uuid: map['uuid'],
      username: map['username'],
      avatar: map['avatar'],
      rating: map['rating'],
      date: map['date'],
      message: map['message'],
      likes: map['likes'],
    );
  }
}
