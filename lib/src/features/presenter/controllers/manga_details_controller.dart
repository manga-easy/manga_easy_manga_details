// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:manga_easy_manga_details/src/features/domain/entities/manga_details_entity.dart';

import '../../domain/usecases/get_manga_chapters_qty/get_manga_chapters_qty_usecase.dart';

class MangaDetailsController extends ChangeNotifier {
  final GetMangaChaptersQtyUseCase _getMangaChaptersQtyUseCase;
  MangaDetailsController(this._getMangaChaptersQtyUseCase);

  late MangaDetailsEntity mangaName;

  getMangaChaptersQty(String name) async {
    mangaName = await _getMangaChaptersQtyUseCase(name);
  }
}
