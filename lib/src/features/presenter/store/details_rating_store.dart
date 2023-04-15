import 'package:flutter/material.dart';

class DetailsRatingStore extends ChangeNotifier {
  // TOP SIDE PAGE
  final String mangaName = 'One Piece';
  final String mangaAuthorName = 'Eiichiro Oda';
  final String coverImg =
      'https://pbs.twimg.com/media/FpaJw-2WYAERg3h?format=jpg&name=900x900';

  // middle widget (RATING_CHAPTERS_STATUS)
  final double mangaRating = 4.5; // also used on rating page
  final int mangaQtdChapters = 1080;
  final String mangaStatus = 'Ativo';

  // ALL BELOW IS TO BOTTOM SIDE PAGE

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

  // DETAILS PAGE

  List<String> mangaGenres = [
    // manga genres
    "Ação",
    "Aventura",
    "Comédia",
    "Fantasia",
    "Shounen",
    "Super Poderes",
  ];

  final String mangaSinopse =
      'One Piece começa quando Gol D. Roger, o Rei Dos Piratas que possuiu tudo nesse mundo, antes de ser executado, diz que escondeu o seu tesouro em algum lugar da Grand Line, um oceano extremamente perigoso. Desde então muitos piratas se aventuram pela Grand Line para tentar encontrar o tesouro chamado One Piece. Um deles é Monkey D. Luffy, o garoto que, acidentalmente, comeu uma das Akuma No Mi, a Gomu Gomu No Mi (Fruta da Borracha), e agora ele pode esticar seu corpo como se fosse uma borracha. A jornada dele começa atrás de companheiros e um barco, que ele vai conseguindo pouco a pouco, pois tem um objetivo: Ser o Rei Dos Piratas!!';
  final String mangaHost = 'One Piece Ex';

  // Chapters
  final String chapTranslator = 'Opex';
  final String chapAddedDate = '14/04/2023';
  final List<int> userChaptersReaded = [];

  void readUnreadChapter(int index) {
    if (userChaptersReaded.contains(index)) {
      userChaptersReaded.removeWhere((element) => element == index);
    } else {
      userChaptersReaded.add(index);
    }
    notifyListeners();
  }

  // RATING PAGE
  final int mangaReviewQtd = 230;
  final int mangaCommentQtd = 1;
  final String commentedBy = 'Bruno Almeida';
  final double userRating = 5.0;

  

}
