import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_demo/screen/list/data/model/article.dart';

import '../../../domain/model/article.dart';

abstract class RemoteArticlesState extends Equatable {
  final ArticleModel? articles;
  final DioException? error;

  const RemoteArticlesState({this.articles, this.error});

  @override
  List<Object> get props => [articles!, error!];
}

class RemoteArticlesLoading extends RemoteArticlesState {
  const RemoteArticlesLoading();
}

class RemoteArticlesDone extends RemoteArticlesState {
  const RemoteArticlesDone({required ArticleModel articles}) : super(articles: articles);
}

class RemoteArticlesError extends RemoteArticlesState {
  const RemoteArticlesError({required DioException error}) : super(error: error);
}
