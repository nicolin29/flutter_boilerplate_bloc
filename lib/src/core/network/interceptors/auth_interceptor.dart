// // auth_interceptor.dart
// class AuthInterceptor extends Interceptor {
//   final String token;
//   AuthInterceptor(this.token);

//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
//     options.headers['Authorization'] = 'Bearer $token';
//     return handler.next(options);
//   }
// }
