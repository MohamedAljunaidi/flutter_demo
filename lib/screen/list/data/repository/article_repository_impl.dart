import 'dart:io';

import 'package:dio/dio.dart';

import '../../../../common/constants/constants.dart';
import '../../../../common/resources/data_state.dart';
import '../../domain/repository/article_repository.dart';
import '../model/article.dart';
import '../remote/news_api_service.dart';

class ArticeRepositoryImpl implements ArticleRepository {
  final NewsApiService _newsApiService;
  // final AppDatabase _appDatabase;
  ArticeRepositoryImpl(this._newsApiService);
  @override
  Future<DataState<ArticleModel>> getNewsArticles() async {
    try {
      final httpResponse = await _newsApiService.getNewsArticles(
        apiKey: newsAPIKey,
        country: countryQuery,
        category: categoryQuery,
      );

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(
          DioException(
            requestOptions: httpResponse.response.requestOptions,
            response: httpResponse.response,
            error: httpResponse.response.statusMessage,
            type: DioExceptionType.badResponse,
          ),
        );
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }

  // @override
  // Future<List<ArticleEntity>> getSavedArticles() async {
  //   return _appDatabase.articleDao.getArticles();
  // }
  //
  // @override
  // Future<void> removeArticle(ArticleEntity article) {
  //   return _appDatabase.articleDao.deleteArticle(ArticleModel.fromEntity(article));
  // }
  //
  // @override
  // Future<void> saveArticle(ArticleEntity article) {
  //   return _appDatabase.articleDao.insertArticle(ArticleModel.fromEntity(article));
  // }
}
