import 'package:dio/dio.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final response = err.response;
    String message = '';

    if (response?.data is Map && response?.data['message'] != null) {
      message = response!.data['message'];
    } else {
      message = err.message ?? 'Unknown error occured';
    }

    // Handle specific codes:
    if (response?.statusCode == 401) {
      message = 'Unauthorized — please log in again';
    } else if (response?.statusCode == 404) {
      message = '404 Not Found';
    }

    // Replace the error with a clean one
    handler.next(
      DioException(
        requestOptions: err.requestOptions,
        response: response,
        error: Exception(message),
        type: err.type,
      ),
    );
  }
}
