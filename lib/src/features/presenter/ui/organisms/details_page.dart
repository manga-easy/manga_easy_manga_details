// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';

import 'package:manga_easy_manga_details/src/features/presenter/controllers/manga_details_controller.dart';
import 'package:manga_easy_manga_details/src/features/presenter/ui/molecules/category.dart';
import 'package:manga_easy_manga_details/src/features/presenter/ui/molecules/chapters.dart';

class DetailsPage extends StatefulWidget {
  final MangaDetailsController controller;

  const DetailsPage({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    double devideWidth = MediaQuery.of(context).size.width;
    var manga = widget.controller.manga;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GenresChips(genres: manga.genres),
        const SizedBox(height: 20),
        const CoffeeText(text: 'Sinopse', typography: CoffeeTypography.title),
        CoffeeText(
          text: manga.synopsis,
          typography: CoffeeTypography.body,
        ),
        const SizedBox(height: 20),
        const CoffeeText(text: 'Host', typography: CoffeeTypography.title),
        CoffeeText(
          text: manga.host,
          typography: CoffeeTypography.body,
        ),
        const SizedBox(height: 20),
        CoffeeText(
          text: 'Capitulos (${manga.chapters.length})',
          typography: CoffeeTypography.title,
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            SizedBox(width: devideWidth * .7, child: const CoffeeSearchField()),
            const SizedBox(width: 15),
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          ],
        ),
        const SizedBox(height: 20),
        Chapters(
          controller: widget.controller,
        ),
      ],
    );
  }
}
