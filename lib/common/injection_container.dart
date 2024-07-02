import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../screen/list/data/remote/news_api_service.dart';
import '../screen/list/data/repository/article_repository_impl.dart';
import '../screen/list/domain/repository/article_repository.dart';
import '../screen/list/domain/usecases/get_article.dart';
import '../screen/list/presentation/bloc/remote/remote_article_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // final database = await $FloorAppDatabase.databaseBuilder('app_database.db').build();
  // sl.registerSingleton<AppDatabase>(database);
  // Dio
  sl.registerSingleton<Dio>(Dio());

  // Data sources
  sl.registerSingleton<NewsApiService>(NewsApiService(sl()));

  // Repository
  sl.registerLazySingleton<ArticleRepository>(
      () => ArticeRepositoryImpl(sl()));

  // Use cases
  sl.registerLazySingleton(() => GetArticleUseCase(sl()));

  // sl.registerLazySingleton(() => GetSavedArticleUseCase(sl()));

  // sl.registerLazySingleton(() => SaveArticleUseCase(sl()));

  // sl.registerLazySingleton(() => RemoveArticleUseCase(sl()));

  // Blocs
  sl.registerFactory(() => RemoteArticlesBloc(sl()));

  // sl.registerFactory<LocalArticleBloc>(() => LocalArticleBloc(sl(), sl(), sl()));
}
