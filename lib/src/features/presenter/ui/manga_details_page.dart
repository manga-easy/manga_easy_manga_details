// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:manga_easy_manga_details/src/features/presenter/controllers/manga_details_controller.dart';
import 'package:manga_easy_manga_details/src/features/presenter/states/loading_state.dart';
import 'package:manga_easy_manga_details/src/features/presenter/ui/molecules/manga_rating_chapters_status.dart';
import 'package:manga_easy_manga_details/src/features/presenter/ui/organisms/bottom_side_page.dart';
import 'package:manga_easy_manga_details/src/features/presenter/ui/organisms/top_side_page.dart';

class MangaDetailsPage extends StatefulWidget {
  static const route = '/manga-details';
  final String uniqueIdManga;
  const MangaDetailsPage({
    Key? key,
    required this.uniqueIdManga,
  }) : super(key: key);

  @override
  State<MangaDetailsPage> createState() => _MangaDetailsPageState();
}

class _MangaDetailsPageState extends State<MangaDetailsPage> {
  final MangaDetailsController _controller = GetIt.I();

  @override
  void initState() {
    // uniqueid da api
    _controller.getMangaDetails(widget.uniqueIdManga);
    _controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

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
              child: _controller.state is SuccessLoadingState
                  ? Stack(
                      children: [
                        TopSidePage(
                          mangaAuthorName: _controller.manga.author,
                          mangaName: _controller.manga.name,
                          coverImg: _controller.manga.thumb,
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
                            mangaRating: _controller.manga.ratio.toDouble(),
                            mangaQtdChapters:
                                int.parse(_controller.manga.lastcap),
                            mangaStatus: 'Ativo',
                          ),
                        ),
                      ],
                    )
                  : _controller.state is FailedLoadingState
                      ? const Center(
                          child: Text(""),
                        )
                      : const Center(
                          child: CircularProgressIndicator(color: Colors.white),
                        )),
        ),
      ),
    );
  }
}
