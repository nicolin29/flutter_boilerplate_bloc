import 'package:flutter_boilerplate/src/core/network/api_endpoints.dart';
import 'package:flutter_boilerplate/src/features/article/data/datasources/article_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../test_helpers/api_test_helpers.dart';
import '../../mocks/mock_articles_json.dart';

void main() {
  late MockApiClient mockApiClient;
  late ArticleService articleService;

  setUp(() {
    mockApiClient = MockApiClient();
    articleService = ArticleService(mockApiClient);
  });
  test('fetchArticles returns ResponseModel with list of articles', () async {
    final page = 1;
    final limit = 10;

    when(
      () => mockApiClient.get(
        ApiEndpoints.getArticles,
        queryParams: {'page': page, 'limit': limit},
      ),
    ).thenAnswer(
      (_) async => mockResponse({
        "status": "success",
        "message": "Fetched successfully",
        "data": mockArticlesJson,
      }, path: ApiEndpoints.getArticles),
    );

    final result = await articleService.getArticles(page, limit);

    expect(result.status, 'success');
    expect(result.data?.page, page);
    expect(result.data?.limit, limit);
    expect(result.data?.articles?.length, limit);
    expect(result.data?.articles?.first.title, 'Article 1');
  });
}
