import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';
import 'package:manga_easy_manga_details/src/features/presenter/ui/molecules/options_appbar.dart';

class TopSidePage extends StatefulWidget {
  const TopSidePage(
      {super.key, required this.mangaName, required this.mangaAuthorName, required this.coverImg});
  final String mangaName;
  final String mangaAuthorName;
  final String coverImg;
  @override
  State<TopSidePage> createState() => _TopSidePageState();
}

class _TopSidePageState extends State<TopSidePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
      color: ThemeService.of.primaryColor,
      child: Column(
        children: [
          const OptionsAppbar(),
          Center(
            // Manga photo
            child: CoffeeMangaCover(
              cover: widget.coverImg,
              filtraImg: true,
            ),
          ),
          const SizedBox(height: 20),
          Column(
            // Manga and author names
            children: [
              CoffeeText(
                text: widget.mangaName,
                color: ThemeService.of.primaryText,
                typography: CoffeeTypography.title,
              ),
              const SizedBox(height: 5),
              CoffeeText(
                text: widget.mangaAuthorName,
                color: ThemeService.of.backgroundText,
                typography: CoffeeTypography.body,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
