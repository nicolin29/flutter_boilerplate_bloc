// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model_old.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginResponseModelOld _$LoginResponseModelOldFromJson(
  Map<String, dynamic> json,
) => _LoginResponseModelOld(
  token: json['token'] as String?,
  user: json['user'] == null
      ? null
      : UserModelOld.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LoginResponseModelOldToJson(
  _LoginResponseModelOld instance,
) => <String, dynamic>{'token': instance.token, 'user': instance.user};
