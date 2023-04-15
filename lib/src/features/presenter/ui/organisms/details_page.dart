import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_manga_details/src/features/presenter/ui/molecules/category.dart';
import 'package:manga_easy_manga_details/src/features/presenter/ui/molecules/chapters.dart';

class DetailsPage extends StatefulWidget {
  final String sinopse;
  final String mangaHost;
  final int qtdChapters;
  final List<String> mangaGenres;
  final String chapTranslator;
  final String chapAddedDate;
  final List<int> userChaptersReaded;
  final void Function(int) readUnreadChapter;
  const DetailsPage({
    super.key,
    required this.sinopse,
    required this.mangaHost,
    required this.qtdChapters,
    required this.mangaGenres,
    required this.chapTranslator,
    required this.chapAddedDate,
    required this.userChaptersReaded,
    required this.readUnreadChapter,
  });

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    double devideWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GenresChips(genres: widget.mangaGenres),
        const SizedBox(height: 20),
        const CoffeeText(text: 'Sinopse', typography: CoffeeTypography.title),
        CoffeeText(
          text: widget.sinopse,
          typography: CoffeeTypography.body,
        ),
        const SizedBox(height: 20),
        const CoffeeText(text: 'Host', typography: CoffeeTypography.title),
        CoffeeText(
          text: widget.mangaHost,
          typography: CoffeeTypography.body,
        ),
        const SizedBox(height: 20),
        CoffeeText(
          text: 'Capitulos (${widget.qtdChapters})',
          typography: CoffeeTypography.title,
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            SizedBox(
              width: devideWidth * .7,
              child: const CoffeeField(
                hintText: 'Pesquisar',
                fontWeightHint: FontWeight.bold,
                icone: Icons.search,
              ),
            ),
            const SizedBox(width: 15),
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          ],
        ),
        const SizedBox(height: 20),
        Chapters(
          qtdChapters: widget.qtdChapters,
          chapTranslator: widget.chapTranslator,
          chapAddedDate: widget.chapAddedDate,
          userChaptersReaded: widget.userChaptersReaded,
          readUnreadChapter: widget.readUnreadChapter,
        ),
      ],
    );
  }
}
