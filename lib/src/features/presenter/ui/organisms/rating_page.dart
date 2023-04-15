import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_manga_details/src/features/presenter/ui/molecules/comments.dart';
import 'package:manga_easy_manga_details/src/features/presenter/ui/molecules/rating_bar_reviews.dart';
import 'package:manga_easy_manga_details/src/features/presenter/ui/molecules/rating_stars.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class RatingPage extends StatefulWidget {
  final double rating;
  final int reviewQtd;
  final int commentQtd;
  final String userComment;
  final double userRating;
  const RatingPage({
    super.key,
    required this.rating,
    required this.reviewQtd,
    required this.commentQtd,
    required this.userComment,
    required this.userRating,
  });

  @override
  State<RatingPage> createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CoffeeText(
              text: '${widget.rating}',
              typography: CoffeeTypography.title,
            ),
          ),
          const SizedBox(height: 10),
          RatingStars(rating: widget.rating, iconSize: 42.0),
          const SizedBox(height: 10),
          Center(child: CoffeeText(text: '${widget.reviewQtd} Reviews')),
          const SizedBox(height: 25),
          const RatingBarReviews(),
          const SizedBox(height: 25),
          CoffeeButton(label: 'Avaliar', onPress: () {}),
          const SizedBox(height: 25),
          Divider(color: ThemeService.of.primaryColor, thickness: 1),
          const SizedBox(height: 10),
          
          
            const Comments(),
          
        ],
      ),
    );
  }
}
