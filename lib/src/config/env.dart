import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static String get baseUrlProd => dotenv.env['BASE_URL_PROD'] ?? '';
  static String get baseUrlDev => dotenv.env['BASE_URL_DEV'] ?? '';
}
