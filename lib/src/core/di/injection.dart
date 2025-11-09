import 'package:flutter_boilerplate/src/core/network/api_client.dart';
import 'package:flutter_boilerplate/src/features/article/data/datasources/article_service.dart';
import 'package:flutter_boilerplate/src/features/article/data/repositories/article_repository.dart';
import 'package:flutter_boilerplate/src/features/article/domain/article_usecase.dart';
import 'package:flutter_boilerplate/src/features/article/presentation/cubit/article_page_cubit/article_page_cubit.dart';
import 'package:flutter_boilerplate/src/features/auth/data/datasources/auth_service.dart';
import 'package:flutter_boilerplate/src/features/auth/data/repositories/auth_repository.dart';
import 'package:flutter_boilerplate/src/features/auth/domain/login_usecase.dart';
import 'package:flutter_boilerplate/src/features/auth/presentation/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initDI() async {
  // ----- Core / Network -----
  sl.registerLazySingleton(() => ApiClient());

  // ----- Auth Feature -----
  sl.registerLazySingleton(() => AuthService(sl<ApiClient>()));
  sl.registerLazySingleton(() => AuthRepository(sl<AuthService>()));
  sl.registerLazySingleton(() => LoginUsecase(sl<AuthRepository>()));

  // ----- Article Feature -----
  sl.registerLazySingleton(() => ArticleService(sl<ApiClient>()));
  sl.registerLazySingleton(() => ArticleRepository(sl<ArticleService>()));
  sl.registerLazySingleton(() => ArticleUsecase(sl<ArticleRepository>()));

  // ----- Presentation Layer / Cubit -----
  sl.registerFactory(() => LoginCubit(sl<LoginUsecase>()));
  sl.registerFactory(() => ArticlePageCubit(sl<ArticleUsecase>()));
}
