class CommentEntity {
  final String author;
  final String avatar;
  final String comment;
  final double rating;
  final String commentedAt;
  final int likes;

  CommentEntity({
    required this.author,
    required this.avatar,
    required this.comment,
    required this.rating,
    required this.commentedAt,
    required this.likes,
  });
}
