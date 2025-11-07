import 'package:dio/dio.dart';
import 'package:flutter_boilerplate/src/core/models/response_model.dart';
import 'package:flutter_boilerplate/src/core/network/api_endpoints.dart';
import 'package:flutter_boilerplate/src/features/auth/data/models/login_response_model.dart';

class AuthService {
  final Dio _dio;

  AuthService(this._dio);

  Future<ResponseModel<LoginResponseModel>> login(
    String email,
    String password,
  ) async {
    try {
      final response = await _dio.post(
        ApiEndpoints.login,
        data: {'email': email, 'password': password},
      );
      return ResponseModel.fromJson(
        response.data,
        (data) => LoginResponseModel.fromJson(data as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? e.message);
    }
  }
}
