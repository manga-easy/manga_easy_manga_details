import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_manga_details/src/features/presenter/store/comments_store.dart';
import 'package:manga_easy_manga_details/src/features/presenter/ui/molecules/rating_stars.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class Comments extends StatefulWidget {
  const Comments({super.key});

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  CommentsStore commentsStore = CommentsStore();
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CoffeeText(
          text: 'Comentários (${commentsStore.comments.comments.length})',
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
            itemCount: commentsStore.comments.comments.length,
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
                                backgroundImage: NetworkImage(commentsStore
                                    .comments.comments[index].avatar),
                                minRadius: 42,
                              ),
                              const SizedBox(width: 15),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CoffeeText(
                                    text: commentsStore
                                        .comments.comments[index].username,
                                    typography: CoffeeTypography.title,
                                  ),
                                  RatingStars(
                                    rating: commentsStore
                                        .comments.comments[index].rating,
                                    iconSize: 17.0,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          CoffeeText(
                              text:
                                  commentsStore.comments.comments[index].date),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    CoffeeText(
                      text: commentsStore.comments.comments[index].message,
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
                                "${commentsStore.comments.comments[index].likes}"),
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
