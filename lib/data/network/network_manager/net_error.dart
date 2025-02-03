import '../../dto/app_exception.dart';

/// The [NetError] class is a sealed class that represents various types
/// of network-related errors. It implements the [AppException] interface
/// to provide a standardized way of handling exceptions in the application.
sealed class NetError implements AppException {}

/// The [TimeoutError] class is thrown when a network request exceeds
/// the specified timeout duration.
class TimeoutError implements NetError {
  @override
  final Object error;

  @override
  final String message;

  TimeoutError({required this.error, this.message = ''});
}

/// Thrown when there is no internet connection.
class ConnectionError implements NetError {
  @override
  final Object error;

  @override
  final String message;

  ConnectionError({required this.error, this.message = ''});
}

/// Thrown when the server responds with an error.
class ServerError implements NetError {
  @override
  final Object error;

  @override
  final String message;

  ServerError({required this.error, this.message = ''});
}

/// Thrown when access
/// is unauthorized (e.g., 401 status code).
class UnauthorizedError implements NetError {
  @override
  final Object error;

  @override
  final String message;

  UnauthorizedError({required this.error, this.message = ''});
}

/// Thrown when a bad request is sent
/// to the server (e.g., 400 status code).
class BadRequestError implements NetError {
  @override
  final Object error;

  @override
  final String message;

  BadRequestError({required this.error, this.message = ''});
}

/// Thrown when the requested resource
/// is not found (e.g., 404 status code).
class NotFoundError implements NetError {
  @override
  final Object error;

  @override
  final String message;

  NotFoundError({required this.error, this.message = ''});
}

/// Thrown when an unknown error occurs.
class UnknownError implements NetError {
  @override
  final Object error;

  @override
  final String message;

  UnknownError({required this.error, this.message = ''});
}
