import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class Chapters extends StatefulWidget {
  final int qtdChapters;
  final String chapTranslator;
  final String chapAddedDate;
  final List<int> userChaptersReaded;
  final void Function(int) readUnreadChapter;
  const Chapters({
    super.key,
    required this.qtdChapters,
    required this.chapTranslator,
    required this.chapAddedDate,
    required this.userChaptersReaded,
    required this.readUnreadChapter,
  });

  @override
  State<Chapters> createState() => _ChaptersState();
}

class _ChaptersState extends State<Chapters> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: widget.qtdChapters,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              widget.readUnreadChapter(index);
              setState(() {});
            },
            child: Container(
              width: double.infinity,
              height: 85,
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: widget.userChaptersReaded.contains(index)
                    ? ThemeService.of.primaryColor
                    : ThemeService.of.selectColor,
                borderRadius: ThemeService.of.borderRadius,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CoffeeText(
                        text: 'Capitulo ${widget.qtdChapters - index}',
                        typography: CoffeeTypography.title,
                      ),
                      CoffeeText(
                        text: 'Traduzido por ${widget.chapTranslator}',
                        color: ThemeService.of.selectText,
                      ),
                      CoffeeText(
                        text: 'Adicionado em ${widget.chapAddedDate}',
                        color: ThemeService.of.selectText,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.file_download_outlined),
                        iconSize: 40,
                      ),
                      const SizedBox(width: 10),
                      widget.userChaptersReaded.contains(index)
                          ? const Icon(Icons.check_rounded, size: 40)
                          : const SizedBox.shrink(),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
