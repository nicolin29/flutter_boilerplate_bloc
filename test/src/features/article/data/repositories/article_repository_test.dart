import 'package:flutter_boilerplate/src/features/article/data/models/article_list_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_boilerplate/src/features/article/data/models/article_model.dart';
import 'package:flutter_boilerplate/src/features/article/data/datasources/article_service.dart';
import 'package:flutter_boilerplate/src/features/article/data/repositories/article_repository.dart';
import 'package:flutter_boilerplate/src/core/models/response_model.dart';

import '../../mocks/mock_articles_json.dart';

class MockArticleService extends Mock implements ArticleService {}

void main() {
  late MockArticleService mockService;
  late ArticleRepository repository;

  setUp(() {
    mockService = MockArticleService();
    repository = ArticleRepository(mockService);
  });

  final articlesJson = [
    ArticleModel(
      id: 1,
      title: 'Article 1',
      image: 'https://picsum.photos/id/1011/600/400',
    ),
    ArticleModel(
      id: 2,
      title: 'Article 2',
      image: 'https://picsum.photos/id/1012/600/400',
    ),
    ArticleModel(
      id: 3,
      title: 'Article 3',
      image: 'https://picsum.photos/id/1013/600/400',
    ),
  ];

  test('fetchArticles returns list of articles on success', () async {
    final page = 1;
    final limit = 10;

    when(() => mockService.getArticles(page, limit)).thenAnswer(
      (_) async => ResponseModel.success(
        ArticleListModel.fromJson(mockArticlesJson),
        'Fetched successfully',
      ),
    );

    // Act
    final result = await repository.getArticles(page, limit);

    // Assert
    expect(result, isA<ArticleListModel>());
    expect(result.articles, isA<List<ArticleModel>>());
    expect(result.articles?.length, 10);
    expect(result.articles?.first.title, 'Article 1');
  });

  test('findArticleById returns the correct article when ID exists', () async {
    // Arrange
    when(() => mockService.findArticleById(1)).thenAnswer(
      (_) async => ResponseModel.success(
        articlesJson.firstWhere((i) => i.id == 1), // ✅ use ['id'] if JSON map
        'Fetched successfully',
      ),
    );

    // Act
    final result = await repository.findArticleById(
      1,
    ); // ✅ match actual method name

    // Assert
    expect(result, isA<ArticleModel>());
    expect(result.id, 1);
    expect(result.title, 'Article 1');
  });
}
