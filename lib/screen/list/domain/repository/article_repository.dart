import '../../../../../common/resources/data_state.dart';
import '../../data/model/article.dart';
import '../model/article.dart';

abstract class ArticleRepository {
  // API Methods
  Future<DataState<ArticleModel>> getNewsArticles();

  // Database Methods
  // Future<List<ArticleEntity>> getSavedArticles();

  // Future<void> saveArticle(ArticleEntity article);

  // Future<void> removeArticle(ArticleEntity article);
}
