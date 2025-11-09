import 'package:flutter_boilerplate/src/features/article/data/models/article_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_list_model.freezed.dart';
part 'article_list_model.g.dart';

@freezed
abstract class ArticleListModel with _$ArticleListModel {
  factory ArticleListModel({
    List<ArticleModel>? articles,
    int? page,
    int? limit,
    bool? hasMore,
  }) = _ArticleListModel;

  factory ArticleListModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleListModelFromJson(json);
}
