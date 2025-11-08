import 'package:flutter_boilerplate/src/features/auth/data/models/user_model_old.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_model_old.freezed.dart';
part 'login_response_model_old.g.dart';

@freezed
abstract class LoginResponseModelOld with _$LoginResponseModelOld {
  const factory LoginResponseModelOld({String? token, UserModelOld? user}) =
      _LoginResponseModelOld;

  factory LoginResponseModelOld.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelOldFromJson(json);
}
