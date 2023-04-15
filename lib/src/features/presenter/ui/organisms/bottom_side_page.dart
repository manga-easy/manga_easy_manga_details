import 'package:flutter/material.dart';
import 'package:manga_easy_manga_details/src/features/presenter/store/details_rating_store.dart';
import 'package:manga_easy_manga_details/src/features/presenter/ui/molecules/text_button_bottom_border.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';
import 'rating_page.dart';
import 'details_page.dart';

class BottomSidePage extends StatefulWidget {
  const BottomSidePage({super.key, required this.detailsRatingStore});
  final DetailsRatingStore detailsRatingStore;
  @override
  State<BottomSidePage> createState() => _BottomSidePageState();
}

class _BottomSidePageState extends State<BottomSidePage> {
  @override
  void initState() {
    widget.detailsRatingStore.pageController.addListener(() {
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      color: ThemeService.of.backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: 3,
                  color: ThemeService.of.primaryColor,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextButtonBottomBorder(
                    text: 'Detalhes',
                    onTap: () =>
                        widget.detailsRatingStore.pageController.animateToPage(
                      0,
                      duration: widget.detailsRatingStore.duration,
                      curve: widget.detailsRatingStore.curves,
                    ),
                    color: widget.detailsRatingStore.page == 0
                        ? ThemeService.of.backgroundText
                        : ThemeService.of.primaryColor,
                  ),
                  const SizedBox(width: 10),
                  TextButtonBottomBorder(
                    text: 'Avaliações',
                    onTap: () =>
                        widget.detailsRatingStore.pageController.animateToPage(
                      1,
                      duration: widget.detailsRatingStore.duration,
                      curve: widget.detailsRatingStore.curves,
                    ),
                    color: widget.detailsRatingStore.page == 1
                        ? ThemeService.of.backgroundText
                        : ThemeService.of.primaryColor,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 1030,
            child: PageView(
              controller: widget.detailsRatingStore.pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                DetailsPage(
                  sinopse: widget.detailsRatingStore.mangaSinopse,
                  mangaHost: widget.detailsRatingStore.mangaHost,
                  qtdChapters: widget.detailsRatingStore.mangaQtdChapters,
                  mangaGenres: widget.detailsRatingStore.mangaGenres,
                  chapTranslator: widget.detailsRatingStore.chapTranslator,
                  chapAddedDate: widget.detailsRatingStore.chapAddedDate,
                  userChaptersReaded:
                      widget.detailsRatingStore.userChaptersReaded,
                  readUnreadChapter:
                      widget.detailsRatingStore.readUnreadChapter,
                ),
                RatingPage(
                  rating: widget.detailsRatingStore.mangaRating,
                  commentQtd: widget.detailsRatingStore.mangaCommentQtd,
                  reviewQtd: widget.detailsRatingStore.mangaReviewQtd,
                  userComment: widget.detailsRatingStore.commentedBy,
                  userRating: widget.detailsRatingStore.userRating,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
