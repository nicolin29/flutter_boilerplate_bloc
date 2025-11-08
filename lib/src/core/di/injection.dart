import 'package:dio/dio.dart';
import 'package:flutter_boilerplate/src/core/network/api_client.dart';
import 'package:flutter_boilerplate/src/features/auth/data/datasources/auth_service.dart';
import 'package:flutter_boilerplate/src/features/auth/data/repositories/auth_repository.dart';
import 'package:flutter_boilerplate/src/features/auth/domain/login_usecase.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initDI() async {
  // ----- Core / Network -----
  sl.registerLazySingleton(() => ApiClient());

  // ----- Auth Feature -----
  sl.registerLazySingleton(() => AuthService(sl<ApiClient>()));
  sl.registerLazySingleton(() => AuthRepository(sl<AuthService>()));
  sl.registerLazySingleton(() => LoginUsecase(sl<AuthRepository>()));

  // ----- Presentation Layer / Cubit -----
  // sl.registerFactory(() => AuthCubit(sl<LoginUseCase>()));
}
