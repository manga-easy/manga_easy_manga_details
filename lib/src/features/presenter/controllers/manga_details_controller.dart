import 'package:flutter/material.dart';
import 'package:manga_easy_manga_details/src/features/domain/entities/manga_details_entity.dart';

import '../../domain/usecases/get_manga_details/get_manga_details_usecase.dart';

class MangaDetailsController extends ChangeNotifier {
  final GetMangaDetailsUseCase _getMangaDetailsUseCase;
  MangaDetailsController(this._getMangaDetailsUseCase);

  late MangaDetailsEntity manga;

  getMangaDetails(String name) async {
    manga = await _getMangaDetailsUseCase(name);
  }

  final Duration duration =
      const Duration(milliseconds: 200); // pageview animation duration
  final Cubic curves = Curves.easeInOut; // pageview animation curve

  // controller for details/rating pages
  PageController pageController = PageController(initialPage: 0);
  double get page {
    // getter to control pages
    if (pageController.hasClients) {
      return pageController.page ?? 0;
    }
    return 0;
  }

  final List<int> userChaptersReaded = [];

  void readUnreadChapter(int index) {
    if (userChaptersReaded.contains(index)) {
      userChaptersReaded.removeWhere((element) => element == index);
    } else {
      userChaptersReaded.add(index);
    }
    notifyListeners();
  }
}
