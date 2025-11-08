import 'package:flutter_boilerplate/src/features/auth/data/models/user_model_old.dart';
import 'package:flutter_boilerplate/src/features/auth/data/repositories/auth_repository.dart';

class LoginUsecase {
  final AuthRepository _authRepository;

  LoginUsecase(this._authRepository);

  Future<UserModelOld> execute(String email, String password) async {
    // --- Semantic validation here, Syntatic validation on UI layer
    // if (!email.endsWith('@example.com')) {
    //   throw Exception('Only @example.com accounts are allowed');
    // }

    return await _authRepository.login(email, password);
  }
}
