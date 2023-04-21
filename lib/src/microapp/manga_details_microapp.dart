import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:manga_easy_manga_details/src/features/data/datasources/get_manga_details_datasource.dart';
import 'package:manga_easy_manga_details/src/features/data/datasources/local/get_manga_details_datasource_imp.dart';
import 'package:manga_easy_manga_details/src/features/data/repositories/get_manga_details_repository_imp.dart';
import 'package:manga_easy_manga_details/src/features/domain/repositories/get_manga_details_repository.dart';
import 'package:manga_easy_manga_details/src/features/domain/usecases/get_manga_details/get_manga_details_usecase.dart';
import 'package:manga_easy_manga_details/src/features/domain/usecases/get_manga_details/get_manga_details_imp.dart';
import 'package:manga_easy_manga_details/src/features/presenter/controllers/manga_details_controller.dart';
import 'package:manga_easy_manga_details/src/features/presenter/ui/manga_details_page.dart';
import 'package:manga_easy_routes/manga_easy_routes.dart';

class MangaDetailsMicroApp extends MicroApp {
  GetIt getIt = GetIt.instance;
  @override
  Map<String, Widget> routers = {
    MangaDetailsPage.route: const MangaDetailsPage()
  };

  @override
  void registerDependencies() {
    // datasources
    getIt.registerFactory<GetMangaDetailsDataSource>(
      () => GetMangaDetailsDataSourceImp(),
    );

    // repositories
    getIt.registerFactory<GetMangaDetailsRepository>(
      () => GetMangaDetailsRepositoryImp(getIt()),
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
