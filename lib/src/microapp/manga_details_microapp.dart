// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:manga_easy_manga_details/src/features/data/datasources/remote/manga_easy_datasource.dart';
import 'package:manga_easy_manga_details/src/features/data/datasources/remote/manga_easy_datasource_imp.dart';
import 'package:manga_easy_manga_details/src/features/data/repositories/get_manga_details_repository_imp.dart';
import 'package:manga_easy_manga_details/src/features/domain/mappers/mapper_manga.dart';
import 'package:manga_easy_manga_details/src/features/domain/repositories/get_manga_details_repository.dart';
import 'package:manga_easy_manga_details/src/features/domain/usecases/get_manga_details/get_manga_details_imp.dart';
import 'package:manga_easy_manga_details/src/features/domain/usecases/get_manga_details/get_manga_details_usecase.dart';
import 'package:manga_easy_manga_details/src/features/presenter/controllers/manga_details_controller.dart';
import 'package:manga_easy_manga_details/src/features/presenter/ui/manga_details_page.dart';
import 'package:manga_easy_routes/manga_easy_routes.dart';

class MangaDetailsMicroApp extends MicroApp {
  GetIt getIt = GetIt.instance;
  final String uniqueIdManga;

  @override
  late Map<String, Widget> routers;

  MangaDetailsMicroApp({this.uniqueIdManga = ''}) {
    routers = {
      MangaDetailsPage.route: MangaDetailsPage(
        uniqueIdManga: uniqueIdManga,
      )
    };
  }

  @override
  void registerDependencies() {
    // mappers
    getIt.registerFactory(() => MapperManga());

    // datasources
    getIt.registerFactory<MangaEasyDataSource>(
        () => MangaEasyDataSourceImp(getIt()));

    // repositories
    getIt.registerFactory<GetMangaDetailsRepository>(
      () => GetMangaDetailsRepositoryImp(getIt(), getIt()),
    );

    // usecases
    getIt.registerFactory<GetMangaDetailsUseCase>(
      () => GetMangaDetailsUseCaseImp(getIt()),
    );

    // controllers
    getIt.registerFactory<MangaDetailsController>(
      () => MangaDetailsController(getIt()),
    );
  }
}
