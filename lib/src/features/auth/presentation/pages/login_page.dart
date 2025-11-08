import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/src/core/di/injection.dart';
import 'package:flutter_boilerplate/src/features/auth/domain/login_usecase.dart';

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
          await uc.execute('email', 'password');
        },
        child: Text('Click Me'),
      ),
    );
  }
}
