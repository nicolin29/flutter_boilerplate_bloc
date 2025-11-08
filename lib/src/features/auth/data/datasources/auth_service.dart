import 'package:flutter_boilerplate/src/core/models/response_model.dart';
import 'package:flutter_boilerplate/src/core/network/api_client.dart';
import 'package:flutter_boilerplate/src/core/network/api_endpoints.dart';
import 'package:flutter_boilerplate/src/features/auth/data/models/login_response_model_old.dart';

class AuthService {
  final ApiClient _apiClient;

  AuthService(this._apiClient);

  Future<ResponseModel<LoginResponseModelOld>> login(
    String email,
    String password,
  ) async {
    final response = await _apiClient.get(
      // ApiEndpoints.login,
      '/comments',
      data: {'email': email, 'password': password},
    );
    return ResponseModel.fromJson(
      response.data,
      (data) => LoginResponseModelOld.fromJson(data as Map<String, dynamic>),
    );
  }
}
