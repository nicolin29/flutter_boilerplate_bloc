import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/src/core/di/injection.dart';
import 'package:flutter_boilerplate/src/core/utils/error_utils.dart';
import 'package:flutter_boilerplate/src/features/auth/domain/login_usecase.dart';
import 'package:flutter_boilerplate/src/features/auth/presentation/cubit/login_cubit.dart';
import 'package:flutter_boilerplate/src/shared/helpers/toast_helper.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final uc = sl<LoginUsecase>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page')),
      body: ElevatedButton(
        onPressed: () async {
          try {
            await uc.execute('email', 'password');
          } catch (e) {
            ToastHelper.show(ErrorUtils.getMessage(e));
          }
        },
        child: Text('Click Me'),
      ),
    );
  }
}
