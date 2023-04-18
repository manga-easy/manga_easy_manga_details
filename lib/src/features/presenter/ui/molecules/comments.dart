// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_manga_details/src/features/presenter/controllers/manga_details_controller.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

import 'package:manga_easy_manga_details/src/features/presenter/ui/molecules/rating_stars.dart';

class Comments extends StatefulWidget {
  final MangaDetailsController controller;
  const Comments({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  @override
  Widget build(BuildContext context) {
    var comments = widget.controller.manga.comments;
    double deviceWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CoffeeText(
          text: 'Comentários (${comments.length})',
          typography: CoffeeTypography.title,
        ),
        const SizedBox(height: 5),
        CoffeeText(
          text: 'Mais recentes',
          typography: CoffeeTypography.body,
          color: ThemeService.of.primaryText,
        ),
        const SizedBox(height: 25),
        SizedBox(
          height: 445, // valor tirado completamente do c#
          width: deviceWidth,
          child: ListView.builder(
            itemCount: comments.length,
            itemBuilder: (context, index) {
              return Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 55,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(comments[index].avatar),
                                minRadius: 42,
                              ),
                              const SizedBox(width: 15),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CoffeeText(
                                    text: comments[index].author,
                                    typography: CoffeeTypography.title,
                                  ),
                                  RatingStars(
                                    rating: comments[index].rating,
                                    iconSize: 17.0,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          CoffeeText(
                              text:
                               comments[index].commentedAt),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    CoffeeText(
                      text: comments[index].comment,
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: const Icon(Icons.favorite),
                        ),
                        const SizedBox(width: 10),
                        CoffeeText(
                            text:
                                "${comments[index].likes}"),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
