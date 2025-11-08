import 'package:flutter_boilerplate/src/features/article/data/datasources/article_service.dart';
import 'package:flutter_boilerplate/src/features/article/data/models/article_model.dart';

class ArticleRepository {
  final ArticleService _articleService;

  ArticleRepository(this._articleService);

  Future<List<ArticleModel>> fetchArticles() async {
    final response = await _articleService.fetchArticles();

    if (response.status != 'success') {
      throw Exception(response.message);
    }

    final articles = response.data;
    if (articles == null) {
      throw Exception('No articles data received from server');
    }

    return articles;
  }
}
