import 'package:flutter/material.dart';
import 'package:coffee_cup/features/text/coffee_text.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class RatingBarReviews extends StatefulWidget {
  const RatingBarReviews({super.key});

  @override
  State<RatingBarReviews> createState() => _RatingBarReviewsState();
}

class _RatingBarReviewsState extends State<RatingBarReviews> {
  double oneStar = 0.01;
  double twoStar = 0.02;
  double threeStar = 0.07;
  double fourStar = 0.1;
  double fiveStar = 0.8;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double ratingBarWidth = deviceWidth * .6;
    return SizedBox(
      height: 130,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        reverse: true,
        itemCount: 5,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CoffeeText(text: '${index + 1}'),
              Stack(
                children: [
                  Container(
                    width: ratingBarWidth,
                    height: 15,
                    decoration: BoxDecoration(
                      color: ThemeService.of.primaryColor.withOpacity(0.3),
                      borderRadius: ThemeService.of.borderRadius,
                    ),
                  ),
                  Container(
                    width: index == 0
                        ? ratingBarWidth * oneStar
                        : index == 1
                            ? ratingBarWidth * twoStar
                            : index == 2
                                ? ratingBarWidth * threeStar
                                : index == 3
                                    ? ratingBarWidth * fourStar
                                    : ratingBarWidth * fiveStar,
                    height: 15,
                    decoration: BoxDecoration(
                      color: ThemeService.of.primaryColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(22),
                        bottomLeft: Radius.circular(22),
                      ),
                    ),
                  )
                ],
              ),
              CoffeeText(
                text: index == 0
                    ? '${oneStar * 100.0}%'
                    : index == 1
                        ? '${twoStar * 100.0}%'
                        : index == 2
                            ? '${(threeStar * 100.0).toStringAsFixed(2)}%'
                            : index == 3
                                ? '${fourStar * 100.0}%'
                                : '${fiveStar * 100.0}%',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
