// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

import 'package:manga_easy_manga_details/src/features/presenter/controllers/manga_details_controller.dart';
import 'package:manga_easy_manga_details/src/features/presenter/ui/molecules/comments.dart';
import 'package:manga_easy_manga_details/src/features/presenter/ui/molecules/rating_bar_reviews.dart';
import 'package:manga_easy_manga_details/src/features/presenter/ui/molecules/rating_stars.dart';

class RatingPage extends StatefulWidget {
  final MangaDetailsController controller;

  const RatingPage({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<RatingPage> createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  void _showModal() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      backgroundColor: ThemeService.of.backgroundColor,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          // You can wrap this Column with Padding of 8.0 for better design
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                CoffeeText(
                    text: 'O que achou?', typography: CoffeeTypography.title),
                SizedBox(height: 5.0),
                RatingStars(rating: 0, iconSize: 42),
                SizedBox(height: 5.0),
                TextField(),
                SizedBox(height: 25.0),
                CoffeeButton(label: 'Avaliar'),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var manga = widget.controller.manga;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CoffeeText(
              text: '${manga.rating}',
              typography: CoffeeTypography.title,
            ),
          ),
          const SizedBox(height: 10),
          RatingStars(rating: manga.rating, iconSize: 42.0),
          const SizedBox(height: 10),
          Center(child: CoffeeText(text: '${manga.comments.length} Reviews')),
          const SizedBox(height: 25),
          const RatingBarReviews(),
          const SizedBox(height: 25),
          CoffeeButton(label: 'Avaliar', onPress: () => _showModal()),
          const SizedBox(height: 25),
          Divider(color: ThemeService.of.primaryColor, thickness: 1),
          const SizedBox(height: 10),
          Comments(controller: widget.controller),
        ],
      ),
    );
  }
}
