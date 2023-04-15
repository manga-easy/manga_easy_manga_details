import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class MangaRatingChaptersStatus extends StatefulWidget {
  final double mangaRating;
  final String mangaStatus;
  final int mangaQtdChapters;
  
  const MangaRatingChaptersStatus({
    super.key,
    required this.mangaRating,
    required this.mangaStatus,
    required this.mangaQtdChapters,
  });

  @override
  State<MangaRatingChaptersStatus> createState() =>
      _MangaRatingChaptersStatusState();
}

class _MangaRatingChaptersStatusState extends State<MangaRatingChaptersStatus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(22)),
        color: ThemeService.of.backgroundColor,
        border: Border.all(color: ThemeService.of.backgroundText),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CoffeeText(
                text: widget.mangaRating.toString(),
                typography: CoffeeTypography.title,
              ),
              const CoffeeText(
                text: 'Avaliação',
                typography: CoffeeTypography.body,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CoffeeText(
                text: widget.mangaQtdChapters.toString(),
                typography: CoffeeTypography.title,
              ),
              const CoffeeText(
                text: 'Capitulos',
                typography: CoffeeTypography.body,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CoffeeText(
                text: widget.mangaStatus,
                typography: CoffeeTypography.title,
              ),
              const CoffeeText(
                text: 'Status',
                typography: CoffeeTypography.body,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
