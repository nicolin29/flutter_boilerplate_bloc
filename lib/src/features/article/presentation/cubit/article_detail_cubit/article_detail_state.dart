import 'package:flutter_boilerplate/src/features/article/data/models/article_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_detail_state.freezed.dart';

@freezed
class ArticleDetailState with _$ArticleDetailState {
  const factory ArticleDetailState.initial() = _Initial;
  const factory ArticleDetailState.loading() = _Loading;
  const factory ArticleDetailState.loaded(ArticleModel article) = _Loaded;
  const factory ArticleDetailState.error(String message) = _Error;
}
