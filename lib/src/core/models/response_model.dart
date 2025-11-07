import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_model.freezed.dart';
part 'response_model.g.dart'; // only if you want JSON

@freezed
abstract class ResponseModel with _$ResponseModel {
  const factory ResponseModel({
    required String status,
    required String message,
    Map<String, dynamic>? data,
  }) = _ResponseModel;

  factory ResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseModelFromJson(json);
}
