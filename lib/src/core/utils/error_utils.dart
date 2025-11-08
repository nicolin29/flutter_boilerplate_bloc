import 'package:dio/dio.dart';

class ErrorUtils {
  static String getMessage(Object e) {
    if (e is DioException) {
      if (e.error is Exception) return e.error.toString();
      if (e.message != null) return e.message!;
    }
    return e.toString();
  }
}
