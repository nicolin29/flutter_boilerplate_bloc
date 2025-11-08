import 'package:flutter_boilerplate/src/core/models/response_model.dart';
import 'package:flutter_boilerplate/src/core/network/api_client.dart';
import 'package:flutter_boilerplate/src/core/network/api_endpoints.dart';
import 'package:flutter_boilerplate/src/features/article/data/models/article_model.dart';

class ArticleService {
  final ApiClient _apiClient;

  ArticleService(this._apiClient);

  Future<ResponseModel<List<ArticleModel>>> fetchArticles() async {
    final response = await _apiClient.get(ApiEndpoints.getArticles);
    return ResponseModel.fromJson(response.data, (data) {
      final list = data as List<dynamic>;
      return list
          .map((e) => ArticleModel.fromJson(e as Map<String, dynamic>))
          .toList();
    });
  }
}
