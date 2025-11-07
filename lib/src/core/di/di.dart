import 'package:flutter_boilerplate/src/core/network/api_client.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initDI() async {
  // ----- Core / Network -----
  sl.registerLazySingleton(() => ApiClient());
}
