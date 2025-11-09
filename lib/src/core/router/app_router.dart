import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/src/core/di/injection.dart';
import 'package:flutter_boilerplate/src/features/article/presentation/cubit/article_page_cubit/article_page_cubit.dart';
import 'package:flutter_boilerplate/src/features/article/presentation/pages/article_page.dart';
import 'package:flutter_boilerplate/src/features/auth/presentation/cubit/login_cubit.dart';
import 'package:flutter_boilerplate/src/features/auth/presentation/pages/login_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: LoginPage.routePath,
    routes: [
      GoRoute(
        path: LoginPage.routePath,
        builder: (context, state) => BlocProvider(
          create: (_) => sl<LoginCubit>(),
          child: const LoginPage(),
        ),
      ),
      GoRoute(
        path: ArticlePage.routePath,
        builder: (context, state) => BlocProvider(
          create: (_) => sl<ArticlePageCubit>(),
          child: const ArticlePage(),
        ),
      ),
    ],
  );
}
