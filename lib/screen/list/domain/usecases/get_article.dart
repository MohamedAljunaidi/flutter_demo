import '../../../../common/resources/data_state.dart';
import '../../../../common/usecase/usecase.dart';
import '../../data/model/article.dart';
import '../model/article.dart';
import '../repository/article_repository.dart';

class GetArticleUseCase implements UseCase<DataState<ArticleModel>, void> {
  final ArticleRepository _articleRepository;

  GetArticleUseCase(this._articleRepository);
  @override
  Future<DataState<ArticleModel>> call({void params}) {
    return _articleRepository.getNewsArticles();
  }
}
