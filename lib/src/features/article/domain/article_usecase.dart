import 'package:flutter_boilerplate/src/features/article/data/models/article_list_model.dart';
import 'package:flutter_boilerplate/src/features/article/data/models/article_model.dart';
import 'package:flutter_boilerplate/src/features/article/data/repositories/article_repository.dart';

class ArticleUsecase {
  final ArticleRepository _articleRepository;

  ArticleUsecase(this._articleRepository);

  Future<ArticleListModel> fetchArticles(int page, int limit) async {
    return await _articleRepository.fetchArticles(page, limit);
  }

  Future<ArticleModel> findArticleById(int id) async {
    return await _articleRepository.findArticleById(id);
  }
}
