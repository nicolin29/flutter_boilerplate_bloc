import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_model.freezed.dart';
part 'response_model.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class ResponseModel<T> with _$ResponseModel<T> {
  const factory ResponseModel({
    required String status,
    required String message,
    T? data,
  }) = _ResponseModel<T>;

  factory ResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$ResponseModelFromJson(json, fromJsonT);

  // Convenience helpers
  factory ResponseModel.success(T? data, String message) =>
      ResponseModel(status: 'success', message: message, data: data);

  factory ResponseModel.error(String message, {T? data}) =>
      ResponseModel(status: 'error', message: message, data: data);
}
