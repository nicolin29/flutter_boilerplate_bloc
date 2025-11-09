import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/src/features/article/domain/article_usecase.dart';
import 'package:flutter_boilerplate/src/features/article/presentation/cubit/article_detail_cubit/article_detail_state.dart';

class ArticleDetailCubit extends Cubit<ArticleDetailState> {
  final ArticleUsecase articleUsecase;

  ArticleDetailCubit(this.articleUsecase)
    : super(const ArticleDetailState.initial());

  Future<void> fetchArticleDetail(int articleId) async {
    emit(const ArticleDetailState.loading());
    try {
      final article = await articleUsecase.findArticleById(articleId);
      emit(ArticleDetailState.loaded(article));
    } catch (e) {
      emit(ArticleDetailState.error(e.toString()));
    }
  }
}
