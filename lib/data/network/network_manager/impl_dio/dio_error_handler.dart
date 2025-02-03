import 'package:dio/dio.dart';

import '../net_error.dart';

/// {@category Utils}
///
/// The [DioErrorHandler] class provides centralized error handling for Dio-based
/// HTTP requests. It translates various Dio exceptions into structured [NetError]
/// types, making error management more predictable and easier to handle throughout
/// the application.
///
/// This handler covers common network errors such as timeouts, connection issues,
/// and HTTP response errors (e.g., 400, 401, 404, 500). For unexpected errors, it
/// defaults to [UnknownError], ensuring that all errors are properly categorized.
class DioErrorHandler {
  /// Handles Dio exceptions and maps them to corresponding [NetError] types.
  ///
  /// The [error] parameter can be any exception thrown during a network request.
  /// If the error is not a [DioException], it returns an [UnknownError].
  /// Otherwise, it categorizes the error into timeout, connection, or HTTP response errors.
  ///
  /// Returns a specific [NetError] subclass based on the error type.
  NetError handleError(dynamic error) {
    if (error is! DioException) {
      return UnknownError(error: error);
    }

    final message = error.message ?? '';

    if (_isTimeoutError(error)) {
      return TimeoutError(error: error, message: message);
    }

    if (_isConnectionError(error)) {
      return ConnectionError(error: error, message: message);
    }

    return _handleResponseError(error);
  }

  bool _isTimeoutError(DioException error) {
    return error.type == DioExceptionType.connectionTimeout ||
        error.type == DioExceptionType.sendTimeout ||
        error.type == DioExceptionType.receiveTimeout;
  }

  bool _isConnectionError(DioException error) {
    return error.type == DioExceptionType.connectionError;
  }

  NetError _handleResponseError(DioException error) {
    final response = error.response;
    if (response == null) {
      return UnknownError(error: error);
    }

    final statusCode = response.statusCode;
    final message = response.statusMessage ?? '';

    return switch (statusCode) {
      400 => BadRequestError(error: error, message: message),
      401 => UnauthorizedError(error: error, message: message),
      404 => NotFoundError(error: error, message: message),
      500 => ServerError(error: error, message: message),
      _ => UnknownError(error: error, message: message),
    };
  }
}
