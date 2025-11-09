// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ArticleListModel _$ArticleListModelFromJson(Map<String, dynamic> json) =>
    _ArticleListModel(
      articles: (json['articles'] as List<dynamic>?)
          ?.map((e) => ArticleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: (json['page'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      hasMore: json['hasMore'] as bool?,
    );

Map<String, dynamic> _$ArticleListModelToJson(_ArticleListModel instance) =>
    <String, dynamic>{
      'articles': instance.articles,
      'page': instance.page,
      'limit': instance.limit,
      'hasMore': instance.hasMore,
    };
