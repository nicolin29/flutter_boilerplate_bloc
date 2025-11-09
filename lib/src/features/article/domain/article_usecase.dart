import 'package:flutter_boilerplate/src/features/article/data/models/article_model.dart';
import 'package:flutter_boilerplate/src/features/article/data/repositories/article_repository.dart';

class ArticleUsecase {
  final ArticleRepository _articleRepository;

  ArticleUsecase(this._articleRepository);

  Future<List<ArticleModel>> fetchArticles({int page = 1}) async {
    return await _articleRepository.fetchArticles();
  }

  Future<ArticleModel> findArticleById(int id) async {
    return await _articleRepository.findArticleById(id);
  }
}
