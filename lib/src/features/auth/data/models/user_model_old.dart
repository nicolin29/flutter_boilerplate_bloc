import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model_old.freezed.dart';
part 'user_model_old.g.dart';

@freezed
abstract class UserModelOld with _$UserModelOld {
  const factory UserModelOld({int? id, String? name, String? email}) =
      _UserModelOld;

  factory UserModelOld.fromJson(Map<String, dynamic> json) =>
      _$UserModelOldFromJson(json);
}
