import 'package:flutter/material.dart';
import 'package:manga_easy_manga_details/src/features/presenter/store/details_rating_store.dart';
import 'package:manga_easy_manga_details/src/features/presenter/ui/organisms/bottom_side_page.dart';
import 'package:manga_easy_manga_details/src/features/presenter/ui/organisms/top_side_page.dart';
import 'package:manga_easy_manga_details/src/features/presenter/ui/molecules/manga_rating_chapters_status.dart';

class MangaDetailsPage extends StatefulWidget {
  const MangaDetailsPage({super.key});

  @override
  State<MangaDetailsPage> createState() => _MangaDetailsPageState();
}

class _MangaDetailsPageState extends State<MangaDetailsPage> {
  final DetailsRatingStore _detailsRatingStore = DetailsRatingStore();

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double pageScrollLenght = 1580.0;

    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          height: pageScrollLenght,
          width: deviceWidth,
          child: Stack(
            children: [
              TopSidePage(
                mangaAuthorName: _detailsRatingStore.mangaAuthorName,
                mangaName: _detailsRatingStore.mangaName,
                coverImg: _detailsRatingStore.coverImg,
              ),
              Positioned(
                top: 620,
                width: deviceWidth,
                child: BottomSidePage(detailsRatingStore: _detailsRatingStore),
              ),
              Positioned(
                top: 510,
                right: 38,
                left: 38,
                height: 80,
                child: MangaRatingChaptersStatus(
                  mangaRating: _detailsRatingStore.mangaRating,
                  mangaQtdChapters: _detailsRatingStore.mangaQtdChapters,
                  mangaStatus: _detailsRatingStore.mangaStatus,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
