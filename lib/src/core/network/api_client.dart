import 'package:dio/dio.dart';
import 'package:flutter_boilerplate/src/core/config/app_config.dart';

class ApiClient {
  late final Dio _dio;

  ApiClient()
    : _dio = Dio(
        BaseOptions(
          baseUrl: AppConfig.baseUrl,
          connectTimeout: Duration(milliseconds: AppConfig.connectTimeout),
          receiveTimeout: Duration(milliseconds: AppConfig.receiveTimeout),
          headers: {'Content-Type': 'application/json'},
        ),
      );

  // GET request
  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? data,
  }) async {
    try {
      return await _dio.get(path, queryParameters: queryParams, data: data);
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? e.message);
    }
  }

  // POST request
  Future<Response> post(
    String path, {
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? data,
  }) async {
    try {
      return await _dio.post(path, queryParameters: queryParams, data: data);
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? e.message);
    }
  }

  // PUT request
  Future<Response> put(
    String path, {
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? data,
  }) async {
    try {
      return await _dio.put(path, queryParameters: queryParams, data: data);
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? e.message);
    }
  }

  // DELETE request
  Future<Response> delete(
    String path, {
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? data,
  }) async {
    try {
      return await _dio.delete(path, queryParameters: queryParams, data: data);
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? e.message);
    }
  }
}
