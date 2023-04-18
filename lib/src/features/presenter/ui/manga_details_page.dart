import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:manga_easy_manga_details/src/features/presenter/controllers/manga_details_controller.dart';
import 'package:manga_easy_manga_details/src/features/presenter/ui/organisms/bottom_side_page.dart';
import 'package:manga_easy_manga_details/src/features/presenter/ui/organisms/top_side_page.dart';
import 'package:manga_easy_manga_details/src/features/presenter/ui/molecules/manga_rating_chapters_status.dart';

class MangaDetailsPage extends StatefulWidget {
  static const route = '/manga-details';
  const MangaDetailsPage({super.key});

  @override
  State<MangaDetailsPage> createState() => _MangaDetailsPageState();
}

class _MangaDetailsPageState extends State<MangaDetailsPage> {
  @override
  void initState() {
    _controller.getMangaChaptersQty('One Piece');
    _controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  final MangaDetailsController _controller = GetIt.I();
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double pageScrollLenght = 1580.0;

    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: pageScrollLenght,
            width: deviceWidth,
            child: Stack(
              children: [
                TopSidePage(
                  mangaAuthorName: _controller.manga.authorName,
                  mangaName: _controller.manga.name,
                  coverImg: _controller.manga.coverImg,
                ),
                Positioned(
                  top: 550,
                  width: deviceWidth,
                  child: BottomSidePage(controller: _controller),
                ),
                Positioned(
                  top: 510,
                  right: 38,
                  left: 38,
                  height: 80,
                  child: MangaRatingChaptersStatus(
                    mangaRating: _controller.manga.rating,
                    mangaQtdChapters: 3,
                    mangaStatus: _controller.manga.status,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
