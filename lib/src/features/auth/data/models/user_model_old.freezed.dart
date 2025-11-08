// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model_old.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModelOld {

 int? get id; String? get name; String? get email;
/// Create a copy of UserModelOld
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelOldCopyWith<UserModelOld> get copyWith => _$UserModelOldCopyWithImpl<UserModelOld>(this as UserModelOld, _$identity);

  /// Serializes this UserModelOld to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModelOld&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email);

@override
String toString() {
  return 'UserModelOld(id: $id, name: $name, email: $email)';
}


}

/// @nodoc
abstract mixin class $UserModelOldCopyWith<$Res>  {
  factory $UserModelOldCopyWith(UserModelOld value, $Res Function(UserModelOld) _then) = _$UserModelOldCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? email
});




}
/// @nodoc
class _$UserModelOldCopyWithImpl<$Res>
    implements $UserModelOldCopyWith<$Res> {
  _$UserModelOldCopyWithImpl(this._self, this._then);

  final UserModelOld _self;
  final $Res Function(UserModelOld) _then;

/// Create a copy of UserModelOld
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserModelOld].
extension UserModelOldPatterns on UserModelOld {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModelOld value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModelOld() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModelOld value)  $default,){
final _that = this;
switch (_that) {
case _UserModelOld():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModelOld value)?  $default,){
final _that = this;
switch (_that) {
case _UserModelOld() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModelOld() when $default != null:
return $default(_that.id,_that.name,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? email)  $default,) {final _that = this;
switch (_that) {
case _UserModelOld():
return $default(_that.id,_that.name,_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? email)?  $default,) {final _that = this;
switch (_that) {
case _UserModelOld() when $default != null:
return $default(_that.id,_that.name,_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserModelOld implements UserModelOld {
  const _UserModelOld({this.id, this.name, this.email});
  factory _UserModelOld.fromJson(Map<String, dynamic> json) => _$UserModelOldFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  String? email;

/// Create a copy of UserModelOld
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelOldCopyWith<_UserModelOld> get copyWith => __$UserModelOldCopyWithImpl<_UserModelOld>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelOldToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModelOld&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email);

@override
String toString() {
  return 'UserModelOld(id: $id, name: $name, email: $email)';
}


}

/// @nodoc
abstract mixin class _$UserModelOldCopyWith<$Res> implements $UserModelOldCopyWith<$Res> {
  factory _$UserModelOldCopyWith(_UserModelOld value, $Res Function(_UserModelOld) _then) = __$UserModelOldCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? email
});




}
/// @nodoc
class __$UserModelOldCopyWithImpl<$Res>
    implements _$UserModelOldCopyWith<$Res> {
  __$UserModelOldCopyWithImpl(this._self, this._then);

  final _UserModelOld _self;
  final $Res Function(_UserModelOld) _then;

/// Create a copy of UserModelOld
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,}) {
  return _then(_UserModelOld(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
