import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/src/core/utils/error_utils.dart';
import 'package:flutter_boilerplate/src/features/auth/domain/login_usecase.dart';
import 'package:flutter_boilerplate/src/features/auth/presentation/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUsecase _loginUsecase;

  LoginCubit(this._loginUsecase) : super(const LoginState.initial());

  Future<void> login(String email, String password) async {
    emit(const LoginState.loading());
    try {
      final user = await _loginUsecase.execute(email, password);
      emit(LoginState.success(user));
    } catch (e) {
      emit(LoginState.failure(ErrorUtils.getMessage(e)));
    }
  }
}
