import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/src/features/article/presentation/pages/article_list_page.dart';
import 'package:flutter_boilerplate/src/features/auth/presentation/cubit/login_cubit.dart';
import 'package:flutter_boilerplate/src/features/auth/presentation/cubit/login_state.dart';
import 'package:flutter_boilerplate/src/features/auth/presentation/widgets/login_form.dart';
import 'package:flutter_boilerplate/src/shared/mixins/loading_mixin.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  static const String routePath = '/login';

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with LoadingMixin {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        state.whenOrNull(
          initial: () => hideLoading(),
          loading: () => showLoading(),
          success: (user) {
            hideLoading();
            context.go(ArticleListPage.routePath);
          },
          failure: (message) {
            hideLoading();
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(message)));
          },
        );
      },
      builder: (context, state) {
        return buildLoadingOverlay(
          child: Scaffold(
            appBar: AppBar(title: const Text('Login Page')),
            body: const Padding(
              padding: EdgeInsets.all(16.0),
              child: LoginForm(),
            ),
          ),
        );
      },
    );
  }
}
