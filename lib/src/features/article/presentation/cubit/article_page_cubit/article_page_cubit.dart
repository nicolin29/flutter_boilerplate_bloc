import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/src/features/article/data/models/article_model.dart';
import 'package:flutter_boilerplate/src/features/article/domain/article_usecase.dart';
import 'article_page_state.dart';

class ArticlePageCubit extends Cubit<ArticleListState> {
  final ArticleUsecase articleUsecase;

  int _currentPage = 1;
  bool _isFetching = false;
  bool _hasMore = true;

  ArticlePageCubit(this.articleUsecase)
    : super(const ArticleListState.initial());

  Future<void> fetchFirstPage() async {
    _currentPage = 1;
    _hasMore = true;
    emit(const ArticleListState.loading([], hasMore: true));

    await fetchNextPage();
  }

  Future<void> fetchNextPage() async {
    // avoid double fetching or fetching when no more data
    if (_isFetching || !_hasMore) return;
    _isFetching = true;

    try {
      final currentArticles = state.maybeWhen(
        success: (articles, _) => articles,
        loading: (articles, _) => articles,
        orElse: () => <ArticleModel>[],
      );

      // emit loading state with existing data
      emit(ArticleListState.loading(currentArticles, hasMore: _hasMore));

      // fetch next page
      final newArticles = await articleUsecase.fetchArticles(
        page: _currentPage,
      );

      // merge old + new
      final updatedArticles = [...currentArticles, ...newArticles];

      // if fewer items returned than expected, assume no more pages
      _hasMore = newArticles.isNotEmpty;

      emit(ArticleListState.success(updatedArticles, hasMore: _hasMore));

      // next page index
      if (_hasMore) _currentPage++;
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
