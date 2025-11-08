// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Geo {

 String? get lat; String? get lng;
/// Create a copy of Geo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeoCopyWith<Geo> get copyWith => _$GeoCopyWithImpl<Geo>(this as Geo, _$identity);

  /// Serializes this Geo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Geo&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,lng);

@override
String toString() {
  return 'Geo(lat: $lat, lng: $lng)';
}


}

/// @nodoc
abstract mixin class $GeoCopyWith<$Res>  {
  factory $GeoCopyWith(Geo value, $Res Function(Geo) _then) = _$GeoCopyWithImpl;
@useResult
$Res call({
 String? lat, String? lng
});




}
/// @nodoc
class _$GeoCopyWithImpl<$Res>
    implements $GeoCopyWith<$Res> {
  _$GeoCopyWithImpl(this._self, this._then);

  final Geo _self;
  final $Res Function(Geo) _then;

/// Create a copy of Geo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lat = freezed,Object? lng = freezed,}) {
  return _then(_self.copyWith(
lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as String?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Geo].
extension GeoPatterns on Geo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Geo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Geo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Geo value)  $default,){
final _that = this;
switch (_that) {
case _Geo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Geo value)?  $default,){
final _that = this;
switch (_that) {
case _Geo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? lat,  String? lng)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Geo() when $default != null:
return $default(_that.lat,_that.lng);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? lat,  String? lng)  $default,) {final _that = this;
switch (_that) {
case _Geo():
return $default(_that.lat,_that.lng);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? lat,  String? lng)?  $default,) {final _that = this;
switch (_that) {
case _Geo() when $default != null:
return $default(_that.lat,_that.lng);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Geo implements Geo {
   _Geo({this.lat, this.lng});
  factory _Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);

@override final  String? lat;
@override final  String? lng;

/// Create a copy of Geo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeoCopyWith<_Geo> get copyWith => __$GeoCopyWithImpl<_Geo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Geo&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,lng);

@override
String toString() {
  return 'Geo(lat: $lat, lng: $lng)';
}


}

/// @nodoc
abstract mixin class _$GeoCopyWith<$Res> implements $GeoCopyWith<$Res> {
  factory _$GeoCopyWith(_Geo value, $Res Function(_Geo) _then) = __$GeoCopyWithImpl;
@override @useResult
$Res call({
 String? lat, String? lng
});




}
/// @nodoc
class __$GeoCopyWithImpl<$Res>
    implements _$GeoCopyWith<$Res> {
  __$GeoCopyWithImpl(this._self, this._then);

  final _Geo _self;
  final $Res Function(_Geo) _then;

/// Create a copy of Geo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lat = freezed,Object? lng = freezed,}) {
  return _then(_Geo(
lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as String?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
