import 'package:flutter_boilerplate/src/core/network/api_endpoints.dart';
import 'package:flutter_boilerplate/src/features/article/data/datasources/article_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../test_helpers/api_test_helpers.dart';

void main() {
  late MockApiClient mockApiClient;
  late ArticleService articleService;

  setUp(() {
    mockApiClient = MockApiClient();
    articleService = ArticleService(mockApiClient);
  });

  final articlesJson = [
    {
      "id": 1,
      "title": "Flutter Basics",
      "content": "This is an article about Flutter basics...",
      "author": "John Doe",
      "createdAt": "2025-11-08",
    },
  ];

  test('fetchArticles returns ResponseModel with list of articles', () async {
    when(() => mockApiClient.get(ApiEndpoints.getArticles)).thenAnswer(
      (_) async => mockResponse({
        "status": "success",
        "message": "Fetched successfully",
        "data": articlesJson,
      }, path: ApiEndpoints.getArticles),
    );

    final result = await articleService.getArticles();

    expect(result.status, 'success');
    expect(result.data?.length, 1);
    expect(result.data?.first.title, 'Flutter Basics');
  });
}
