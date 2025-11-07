import 'package:flutter_boilerplate/src/features/auth/data/models/user_model.dart';
import 'package:flutter_boilerplate/src/features/auth/data/services/auth_service.dart';

class AuthRepository {
  final AuthService _authService;

  AuthRepository(this._authService);

  Future<UserModel> login(String email, String password) async {
    final response = await _authService.login(email, password);

    if (response.status != 'success') {
      throw Exception(response.message);
    }

    final user = response.data?.user;
    if (user == null) {
      throw Exception('No user data received from server');
    }

    // Optionally save token if needed
    // final token = response.data?.token;

    return user;
  }
}
