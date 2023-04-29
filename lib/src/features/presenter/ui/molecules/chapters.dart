// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

import 'package:manga_easy_manga_details/src/features/presenter/controllers/manga_details_controller.dart';

class Chapters extends StatefulWidget {
  final MangaDetailsController controller;

  const Chapters({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<Chapters> createState() => _ChaptersState();
}

class _ChaptersState extends State<Chapters> {
  @override
  Widget build(BuildContext context) {
    var manga = widget.controller.manga;
    var mangaChapters = int.parse(manga.lastcap);
    return Expanded(
      child: ListView.builder(
        itemCount: mangaChapters,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              widget.controller.readUnreadChapter(index);
              setState(() {});
            },
            child: Container(
              width: double.infinity,
              height: 85,
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: widget.controller.userChaptersReaded.contains(index)
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
                        text: 'Capitulo ${mangaChapters - index}',
                        typography: CoffeeTypography.title,
                      ),
                      CoffeeText(
                        text: 'Traduzido por Tradutor',
                        color: ThemeService.of.selectText,
                      ),
                      CoffeeText(
                        text:
                            'Adicionado em ${DateTime.now().day}/0${DateTime.now().month}/2023',
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
                      widget.controller.userChaptersReaded.contains(index)
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
