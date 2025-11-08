import 'package:dio/dio.dart';
import 'package:flutter_boilerplate/src/core/config/app_config.dart';
import 'package:flutter_boilerplate/src/core/network/interceptors/error_interceptor.dart';
import 'package:flutter_boilerplate/src/core/network/interceptors/logging_interceptor.dart';

class ApiClient {
  late final Dio _dio;

  ApiClient()
    : _dio = Dio(
        BaseOptions(
          baseUrl: AppConfig.baseUrl,
          connectTimeout: const Duration(
            milliseconds: AppConfig.connectTimeout,
          ),
          receiveTimeout: const Duration(
            milliseconds: AppConfig.receiveTimeout,
          ),
          headers: {'Content-Type': 'application/json'},
        ),
      ) {
    // Add Interceptors
    _dio.interceptors.addAll([LoggingInterceptor.build(), ErrorInterceptor()]);
  }

  Dio get http => _dio;

  // GET request
  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? data,
  }) async {
    return await _dio.get(path, queryParameters: queryParams, data: data);
  }

  // POST request
  Future<Response> post(
    String path, {
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? data,
  }) async {
    return await _dio.post(path, queryParameters: queryParams, data: data);
  }

  // PUT request
  Future<Response> put(
    String path, {
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? data,
  }) async {
    return await _dio.put(path, queryParameters: queryParams, data: data);
  }

  // DELETE request
  Future<Response> delete(
    String path, {
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? data,
  }) async {
    return await _dio.delete(path, queryParameters: queryParams, data: data);
  }
}
