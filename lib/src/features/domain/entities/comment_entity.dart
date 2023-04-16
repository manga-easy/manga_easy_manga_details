class CommentEntity {
  final String uuid;
  final String username;
  final String avatar;
  final double rating;
  final String date;
  final String message;
  final int likes;

  CommentEntity({
    required this.uuid,
    required this.username,
    required this.avatar,
    required this.rating,
    required this.date,
    required this.message,
    required this.likes,
  });
}
