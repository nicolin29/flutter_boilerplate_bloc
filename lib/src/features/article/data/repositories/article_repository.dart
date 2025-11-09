import 'package:flutter_boilerplate/src/features/article/data/datasources/article_service.dart';
import 'package:flutter_boilerplate/src/features/article/data/models/article_list_model.dart';
import 'package:flutter_boilerplate/src/features/article/data/models/article_model.dart';

class ArticleRepository {
  final ArticleService _articleService;

  ArticleRepository(this._articleService);

  Future<ArticleListModel> fetchArticles(int page, int limit) async {
    final response = await _articleService.fetchArticles(page, limit);

    if (response.status != 'success') {
      throw Exception(response.message);
    }

    return response.data!;
  }

  Future<ArticleModel> findArticleById(int id) async {
    final response = await _articleService.findArticleById(id);

    if (response.status != 'success') {
      throw Exception(response.message);
    }

    final article = response.data;
    if (article == null) {
      throw Exception('No articles data received from server');
    }

    return article;
  }
}
