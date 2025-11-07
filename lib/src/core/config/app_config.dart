import 'package:flutter_boilerplate/src/core/config/env.dart';

class AppConfig {
  static String get environment =>
      const String.fromEnvironment('ENVIRONMENT', defaultValue: 'production');

  static String get baseUrl {
    switch (environment.toLowerCase()) {
      case 'production':
        return Env.baseUrlProd;
      case 'development':
        return Env.baseUrlDev;
      default:
        throw Exception('BaseUrl not found');
    }
  }

  static const int connectTimeout = 5000;
  static const int receiveTimeout = 30000;
}
