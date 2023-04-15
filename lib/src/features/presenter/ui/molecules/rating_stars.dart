import 'package:flutter/material.dart';

class RatingStars extends StatefulWidget {
  final double rating;
  final double iconSize;
  const RatingStars({
    super.key,
    required this.rating,
    required this.iconSize,
  });

  @override
  State<RatingStars> createState() => _RatingStarsState();
}

class _RatingStarsState extends State<RatingStars> {
  @override
  Widget build(BuildContext context) {
    int filledStars = widget.rating.floor();
    bool hasHalfStar = widget.rating - filledStars >= 0.5;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        5,
        (index) => Icon(
          index < filledStars
              ? Icons.star_rate_rounded
              : index == filledStars && hasHalfStar
                  ? Icons.star_half_rounded
                  : Icons.star_border_rounded,
          size: widget.iconSize,
          color: index < filledStars
              ? Colors.yellow
              : index == filledStars && hasHalfStar
                  ? Colors.yellow
                  : Colors.grey,
        ),
      ),
    );
  }
}
