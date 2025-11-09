import 'package:flutter_boilerplate/src/core/network/api_client.dart';
import 'package:flutter_boilerplate/src/features/article/data/datasources/article_service.dart';
import 'package:flutter_boilerplate/src/features/article/data/repositories/article_repository.dart';
import 'package:flutter_boilerplate/src/features/article/domain/article_usecase.dart';
import 'package:flutter_boilerplate/src/features/article/presentation/cubit/article_detail_cubit/article_detail_cubit.dart';
import 'package:flutter_boilerplate/src/features/article/presentation/cubit/article_list_cubit/article_list_cubit.dart';
import 'package:flutter_boilerplate/src/features/auth/data/datasources/auth_service.dart';
import 'package:flutter_boilerplate/src/features/auth/data/repositories/auth_repository.dart';
import 'package:flutter_boilerplate/src/features/auth/domain/login_usecase.dart';
import 'package:flutter_boilerplate/src/features/auth/presentation/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.instance;

Future<void> initDI() async {
  // ----- Core / Network -----
  di.registerLazySingleton(() => ApiClient());

  // ----- Auth Feature -----
  di.registerLazySingleton(() => AuthService(di<ApiClient>()));
  di.registerLazySingleton(() => AuthRepository(di<AuthService>()));
  di.registerLazySingleton(() => LoginUsecase(di<AuthRepository>()));

  // ----- Article Feature -----
  di.registerLazySingleton(() => ArticleService(di<ApiClient>()));
  di.registerLazySingleton(() => ArticleRepository(di<ArticleService>()));
  di.registerLazySingleton(() => ArticleUsecase(di<ArticleRepository>()));

  // ----- Presentation Layer / Cubit -----
  di.registerFactory(() => LoginCubit(di<LoginUsecase>()));
  di.registerFactory(() => ArticleListCubit(di<ArticleUsecase>()));
  di.registerFactory(() => ArticleDetailCubit(di<ArticleUsecase>()));
}
