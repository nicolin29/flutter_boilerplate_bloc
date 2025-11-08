// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_model_old.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginResponseModelOld {

 String? get token; UserModelOld? get user;
/// Create a copy of LoginResponseModelOld
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginResponseModelOldCopyWith<LoginResponseModelOld> get copyWith => _$LoginResponseModelOldCopyWithImpl<LoginResponseModelOld>(this as LoginResponseModelOld, _$identity);

  /// Serializes this LoginResponseModelOld to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginResponseModelOld&&(identical(other.token, token) || other.token == token)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,user);

@override
String toString() {
  return 'LoginResponseModelOld(token: $token, user: $user)';
}


}

/// @nodoc
abstract mixin class $LoginResponseModelOldCopyWith<$Res>  {
  factory $LoginResponseModelOldCopyWith(LoginResponseModelOld value, $Res Function(LoginResponseModelOld) _then) = _$LoginResponseModelOldCopyWithImpl;
@useResult
$Res call({
 String? token, UserModelOld? user
});


$UserModelOldCopyWith<$Res>? get user;

}
/// @nodoc
class _$LoginResponseModelOldCopyWithImpl<$Res>
    implements $LoginResponseModelOldCopyWith<$Res> {
  _$LoginResponseModelOldCopyWithImpl(this._self, this._then);

  final LoginResponseModelOld _self;
  final $Res Function(LoginResponseModelOld) _then;

/// Create a copy of LoginResponseModelOld
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = freezed,Object? user = freezed,}) {
  return _then(_self.copyWith(
token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModelOld?,
  ));
}
/// Create a copy of LoginResponseModelOld
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelOldCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserModelOldCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginResponseModelOld].
extension LoginResponseModelOldPatterns on LoginResponseModelOld {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginResponseModelOld value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginResponseModelOld() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginResponseModelOld value)  $default,){
final _that = this;
switch (_that) {
case _LoginResponseModelOld():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginResponseModelOld value)?  $default,){
final _that = this;
switch (_that) {
case _LoginResponseModelOld() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? token,  UserModelOld? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginResponseModelOld() when $default != null:
return $default(_that.token,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? token,  UserModelOld? user)  $default,) {final _that = this;
switch (_that) {
case _LoginResponseModelOld():
return $default(_that.token,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? token,  UserModelOld? user)?  $default,) {final _that = this;
switch (_that) {
case _LoginResponseModelOld() when $default != null:
return $default(_that.token,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginResponseModelOld implements LoginResponseModelOld {
  const _LoginResponseModelOld({this.token, this.user});
  factory _LoginResponseModelOld.fromJson(Map<String, dynamic> json) => _$LoginResponseModelOldFromJson(json);

@override final  String? token;
@override final  UserModelOld? user;

/// Create a copy of LoginResponseModelOld
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginResponseModelOldCopyWith<_LoginResponseModelOld> get copyWith => __$LoginResponseModelOldCopyWithImpl<_LoginResponseModelOld>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginResponseModelOldToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginResponseModelOld&&(identical(other.token, token) || other.token == token)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,user);

@override
String toString() {
  return 'LoginResponseModelOld(token: $token, user: $user)';
}


}

/// @nodoc
abstract mixin class _$LoginResponseModelOldCopyWith<$Res> implements $LoginResponseModelOldCopyWith<$Res> {
  factory _$LoginResponseModelOldCopyWith(_LoginResponseModelOld value, $Res Function(_LoginResponseModelOld) _then) = __$LoginResponseModelOldCopyWithImpl;
@override @useResult
$Res call({
 String? token, UserModelOld? user
});


@override $UserModelOldCopyWith<$Res>? get user;

}
/// @nodoc
class __$LoginResponseModelOldCopyWithImpl<$Res>
    implements _$LoginResponseModelOldCopyWith<$Res> {
  __$LoginResponseModelOldCopyWithImpl(this._self, this._then);

  final _LoginResponseModelOld _self;
  final $Res Function(_LoginResponseModelOld) _then;

/// Create a copy of LoginResponseModelOld
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = freezed,Object? user = freezed,}) {
  return _then(_LoginResponseModelOld(
token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModelOld?,
  ));
}

/// Create a copy of LoginResponseModelOld
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelOldCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserModelOldCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
