import 'package:flutter_boilerplate/src/features/article/data/models/article_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_list_state.freezed.dart';

@freezed
class ArticleListState with _$ArticleListState {
  const factory ArticleListState.initial() = _Initial;
  const factory ArticleListState.loading(
    List<ArticleModel> articles, {
    @Default(true) bool hasMore,
  }) = _Loading;
  const factory ArticleListState.success(
    List<ArticleModel> articles, {
    @Default(true) bool hasMore,
  }) = _Success;
  const factory ArticleListState.error(String message) = _Error;
}
