import 'package:dio/dio.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final response = err.response;

    // Extract response data if available
    final Map<String, dynamic>? data = response?.data is Map<String, dynamic>
        ? response!.data
        : null;

    // Default error message
    String message =
        data?['message'] as String? ?? err.message ?? 'Unknown error occurred';

    // Handle HTTP status codes explicitly
    switch (response?.statusCode) {
      case 400:
        message = data?['message'] as String? ?? 'Bad Request';
        break;
      case 401:
        message = 'Unauthorized — please log in again';
        // Optionally, trigger logout or token refresh here
        break;
      case 403:
        message = 'Forbidden — you do not have access';
        break;
      case 404:
        message = 'Not Found';
        break;
      case 500:
        message = 'Internal Server Error — please try again later';
        break;
      default:
        // Use existing message
        break;
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
