import 'package:flutter_boilerplate/src/core/network/api_client.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dio/dio.dart';

/// -------------------------
/// Mock ApiClient
/// -------------------------
class MockApiClient extends Mock implements ApiClient {}

/// -------------------------
/// Helper to create mock Dio Response
/// -------------------------
Response<T> mockResponse<T>(T data, {int statusCode = 200, String path = ''}) {
  return Response<T>(
    requestOptions: RequestOptions(path: path),
    data: data,
    statusCode: statusCode,
  );
}

/// -------------------------
/// Helper to simulate DioException
/// -------------------------
DioException mockDioException({
  String path = '',
  int statusCode = 500,
  dynamic data,
}) {
  return DioException(
    requestOptions: RequestOptions(path: path),
    response: Response(
      requestOptions: RequestOptions(path: path),
      statusCode: statusCode,
      data: data ?? {'message': 'Server error'},
    ),
  );
}
