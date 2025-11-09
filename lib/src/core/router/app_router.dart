import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/src/core/di/injection.dart';
import 'package:flutter_boilerplate/src/features/article/presentation/cubit/article_detail_cubit/article_detail_cubit.dart';
import 'package:flutter_boilerplate/src/features/article/presentation/cubit/article_list_cubit/article_list_cubit.dart';
import 'package:flutter_boilerplate/src/features/article/presentation/pages/article_detail_page.dart';
import 'package:flutter_boilerplate/src/features/article/presentation/pages/article_list_page.dart';
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
        path: ArticleListPage.routePath,
        builder: (context, state) => BlocProvider(
          create: (_) => sl<ArticleListCubit>(),
          child: const ArticleListPage(),
        ),
      ),
      GoRoute(
        path: ArticleDetailPage.routePath,
        builder: (context, state) {
          final articleId = int.parse(state.pathParameters['id']!);

          return BlocProvider(
            create: (_) => sl<ArticleDetailCubit>(),
            child: ArticleDetailPage(articleId: articleId),
          );
        },
      ),
    ],
  );
}
