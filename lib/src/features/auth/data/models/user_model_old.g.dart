// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model_old.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModelOld _$UserModelOldFromJson(Map<String, dynamic> json) =>
    _UserModelOld(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$UserModelOldToJson(_UserModelOld instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
    };
