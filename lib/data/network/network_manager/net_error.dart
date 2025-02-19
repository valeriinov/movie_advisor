import 'package:easy_localization/easy_localization.dart';

import '../../../view/ui/resources/locale_keys.g.dart';
import '../../dto/app_exception.dart';

/// The [NetError] class is a sealed class that represents various types
/// of network-related errors. It implements the [AppException] interface
/// to provide a standardized way of handling exceptions in the application.
sealed class NetError implements AppException {
  final String _message;

  @override
  Object error;

  @override
  String get message => _message.tr();

  NetError({required this.error, String message = ''}) : _message = message;
}

/// The [TimeoutError] class is thrown when a network request exceeds
/// the specified timeout duration.
class TimeoutError extends NetError {
  TimeoutError({
    required super.error,
    String message = LocaleKeys.timeoutErrorDesc,
  });
}

/// Thrown when there is no internet connection.
class ConnectionError extends NetError {
  ConnectionError({
    required super.error,
    String message = LocaleKeys.connectionErrorDesc,
  });
}

/// Thrown when the server responds with an error.
class ServerError extends NetError {
  ServerError({
    required super.error,
    String message = LocaleKeys.serverErrorDesc,
  });
}

/// Thrown when access
/// is unauthorized (e.g., 401 status code).
class UnauthorizedError extends NetError {
  UnauthorizedError({
    required super.error,
    String message = LocaleKeys.unauthorizedErrorDesc,
  });
}

/// Thrown when a bad request is sent
/// to the server (e.g., 400 status code).
class BadRequestError extends NetError {
  BadRequestError({
    required super.error,
    String message = LocaleKeys.badRequestErrorDesc,
  });
}

/// Thrown when the requested resource
/// is not found (e.g., 404 status code).
class NotFoundError extends NetError {
  NotFoundError({
    required super.error,
    String message = LocaleKeys.notFoundErrorDesc,
  });
}

/// Thrown when an unknown error occurs.
class UnknownError extends NetError {
  UnknownError({
    required super.error,
    String message = LocaleKeys.unexpectedErrorDesc,
  });
}
