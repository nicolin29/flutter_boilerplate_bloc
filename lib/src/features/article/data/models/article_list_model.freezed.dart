// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ArticleListModel {

 List<ArticleModel>? get articles; int? get page; int? get limit; bool? get hasMore;
/// Create a copy of ArticleListModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticleListModelCopyWith<ArticleListModel> get copyWith => _$ArticleListModelCopyWithImpl<ArticleListModel>(this as ArticleListModel, _$identity);

  /// Serializes this ArticleListModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticleListModel&&const DeepCollectionEquality().equals(other.articles, articles)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(articles),page,limit,hasMore);

@override
String toString() {
  return 'ArticleListModel(articles: $articles, page: $page, limit: $limit, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $ArticleListModelCopyWith<$Res>  {
  factory $ArticleListModelCopyWith(ArticleListModel value, $Res Function(ArticleListModel) _then) = _$ArticleListModelCopyWithImpl;
@useResult
$Res call({
 List<ArticleModel>? articles, int? page, int? limit, bool? hasMore
});




}
/// @nodoc
class _$ArticleListModelCopyWithImpl<$Res>
    implements $ArticleListModelCopyWith<$Res> {
  _$ArticleListModelCopyWithImpl(this._self, this._then);

  final ArticleListModel _self;
  final $Res Function(ArticleListModel) _then;

/// Create a copy of ArticleListModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? articles = freezed,Object? page = freezed,Object? limit = freezed,Object? hasMore = freezed,}) {
  return _then(_self.copyWith(
articles: freezed == articles ? _self.articles : articles // ignore: cast_nullable_to_non_nullable
as List<ArticleModel>?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,hasMore: freezed == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [ArticleListModel].
extension ArticleListModelPatterns on ArticleListModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticleListModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticleListModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticleListModel value)  $default,){
final _that = this;
switch (_that) {
case _ArticleListModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticleListModel value)?  $default,){
final _that = this;
switch (_that) {
case _ArticleListModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ArticleModel>? articles,  int? page,  int? limit,  bool? hasMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticleListModel() when $default != null:
return $default(_that.articles,_that.page,_that.limit,_that.hasMore);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ArticleModel>? articles,  int? page,  int? limit,  bool? hasMore)  $default,) {final _that = this;
switch (_that) {
case _ArticleListModel():
return $default(_that.articles,_that.page,_that.limit,_that.hasMore);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ArticleModel>? articles,  int? page,  int? limit,  bool? hasMore)?  $default,) {final _that = this;
switch (_that) {
case _ArticleListModel() when $default != null:
return $default(_that.articles,_that.page,_that.limit,_that.hasMore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArticleListModel implements ArticleListModel {
   _ArticleListModel({final  List<ArticleModel>? articles, this.page, this.limit, this.hasMore}): _articles = articles;
  factory _ArticleListModel.fromJson(Map<String, dynamic> json) => _$ArticleListModelFromJson(json);

 final  List<ArticleModel>? _articles;
@override List<ArticleModel>? get articles {
  final value = _articles;
  if (value == null) return null;
  if (_articles is EqualUnmodifiableListView) return _articles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? page;
@override final  int? limit;
@override final  bool? hasMore;

/// Create a copy of ArticleListModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticleListModelCopyWith<_ArticleListModel> get copyWith => __$ArticleListModelCopyWithImpl<_ArticleListModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticleListModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticleListModel&&const DeepCollectionEquality().equals(other._articles, _articles)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_articles),page,limit,hasMore);

@override
String toString() {
  return 'ArticleListModel(articles: $articles, page: $page, limit: $limit, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$ArticleListModelCopyWith<$Res> implements $ArticleListModelCopyWith<$Res> {
  factory _$ArticleListModelCopyWith(_ArticleListModel value, $Res Function(_ArticleListModel) _then) = __$ArticleListModelCopyWithImpl;
@override @useResult
$Res call({
 List<ArticleModel>? articles, int? page, int? limit, bool? hasMore
});




}
/// @nodoc
class __$ArticleListModelCopyWithImpl<$Res>
    implements _$ArticleListModelCopyWith<$Res> {
  __$ArticleListModelCopyWithImpl(this._self, this._then);

  final _ArticleListModel _self;
  final $Res Function(_ArticleListModel) _then;

/// Create a copy of ArticleListModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articles = freezed,Object? page = freezed,Object? limit = freezed,Object? hasMore = freezed,}) {
  return _then(_ArticleListModel(
articles: freezed == articles ? _self._articles : articles // ignore: cast_nullable_to_non_nullable
as List<ArticleModel>?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,hasMore: freezed == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
