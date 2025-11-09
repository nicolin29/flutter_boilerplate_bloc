import 'package:flutter_boilerplate/src/core/models/response_model.dart';
import 'package:flutter_boilerplate/src/core/network/api_client.dart';
import 'package:flutter_boilerplate/src/core/network/api_endpoints.dart';
import 'package:flutter_boilerplate/src/features/article/data/models/article_list_model.dart';
import 'package:flutter_boilerplate/src/features/article/data/models/article_model.dart';

class ArticleService {
  final ApiClient _apiClient;

  ArticleService(this._apiClient);

  Future<ResponseModel<ArticleListModel>> fetchArticles(
    int page,
    int limit,
  ) async {
    final response = await _apiClient.get(
      ApiEndpoints.getArticles,
      queryParams: {'page': page, 'limit': limit},
    );
    return ResponseModel.fromJson(response.data, (data) {
      return ArticleListModel.fromJson(data as Map<String, dynamic>);
    });
  }

  Future<ResponseModel<ArticleModel>> findArticleById(int id) async {
    final response = await _apiClient.get(ApiEndpoints.getArticleById(id));
    return ResponseModel.fromJson(
      response.data,
      (data) => ArticleModel.fromJson(data as Map<String, dynamic>),
    );
  }
}
