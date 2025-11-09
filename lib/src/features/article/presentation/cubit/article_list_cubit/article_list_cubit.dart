import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/src/core/constants/app_constants.dart';
import 'package:flutter_boilerplate/src/features/article/data/models/article_model.dart';
import 'package:flutter_boilerplate/src/features/article/domain/article_usecase.dart';
import 'article_list_state.dart';

class ArticleListCubit extends Cubit<ArticleListState> {
  final ArticleUsecase articleUsecase;

  int _currentPage = 1;
  bool _isFetching = false;
  bool _hasMore = true;

  ArticleListCubit(this.articleUsecase)
    : super(const ArticleListState.initial());

  Future<void> fetchFirstPage() async {
    _currentPage = 1;
    _hasMore = true;
    emit(const ArticleListState.loading([], hasMore: true));

    await fetchNextPage();
  }

  Future<void> fetchNextPage() async {
    if (_isFetching || !_hasMore) return;
    _isFetching = true;

    try {
      final currentArticles = state.maybeWhen(
        success: (articles, _) => articles,
        loading: (articles, _) => articles,
        orElse: () => <ArticleModel>[],
      );

      emit(ArticleListState.loading(currentArticles, hasMore: _hasMore));

      final response = await articleUsecase.getArticles(
        _currentPage,
        AppConstants.paginationLimit,
      );

      final newArticles = response.articles ?? [];
      final updatedArticles = [...currentArticles, ...newArticles];

      _hasMore = response.hasMore ?? false;
      _currentPage++;

      emit(ArticleListState.success(updatedArticles, hasMore: _hasMore));
    } catch (e) {
      emit(ArticleListState.error(e.toString()));
    } finally {
      _isFetching = false;
    }
  }

  Future<void> refresh() async {
    _currentPage = 1;
    _hasMore = true;
    emit(const ArticleListState.initial());
    await fetchNextPage();
  }
}
