import 'package:dio/dio.dart';

import '../net_req_options.dart';
import '../net_response.dart';
import '../network_manager.dart';
import 'dio_error_handler.dart';

class ImplNetworkManager implements NetworkManager {
  final Dio _dio;
  final DioErrorHandler _errorHandler;

  ImplNetworkManager({required Dio dio, required DioErrorHandler errorHandler})
      : _dio = dio,
        _errorHandler = errorHandler;

  @override
  Future<NetResponse<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    NetReqOptions? options,
  }) async {
    try {
      final response = await _dio.get<T>(
        path,
        queryParameters: queryParameters,
        options: _getOptions(options),
      );

      return _getNetResponse(response);
    } catch (e) {
      throw _errorHandler.handleError(e);
    }
  }

  @override
  Future<NetResponse<T>> post<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    NetReqOptions? options,
  }) async {
    try {
      final response = await _dio.post<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: _getOptions(options),
      );

      return _getNetResponse(response);
    } catch (e) {
      throw _errorHandler.handleError(e);
    }
  }

  @override
  Future<NetResponse<T>> put<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    NetReqOptions? options,
  }) async {
    try {
      final response = await _dio.put<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: _getOptions(options),
      );

      return _getNetResponse(response);
    } catch (e) {
      throw _errorHandler.handleError(e);
    }
  }

  @override
  Future<NetResponse<T>> delete<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    NetReqOptions? options,
  }) async {
    try {
      final response = await _dio.delete<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: _getOptions(options),
      );

      return _getNetResponse(response);
    } catch (e) {
      throw _errorHandler.handleError(e);
    }
  }

  Options _getOptions(NetReqOptions? reqOptions) {
    return Options(
        receiveTimeout: reqOptions?.timeout,
        sendTimeout: reqOptions?.timeout,
        headers: reqOptions?.headers);
  }

  NetResponse<T> _getNetResponse<T>(Response<T> response) {
    return NetResponse(
        data: response.data,
        statusCode: response.statusCode,
        message: response.statusMessage);
  }
}
