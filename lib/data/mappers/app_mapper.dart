import 'package:flutter_utils/flutter_utils.dart';

import '../../domain/entities/failure.dart';
import '../dto/app_exception.dart';

/// {@category Mappers}
///
/// The [AppMapper] is a base class that provides functionality to map errors and exceptions
/// into a standardized [Failure] object for consistent error handling throughout
/// the application.
base class AppMapper {
  const AppMapper();

  /// Maps an error object to a [Failure] object.
  ///
  /// The [error] parameter is the object representing the exception or error
  /// that occurred.
  ///
  /// Returns a [Failure] object containing the error message.
  Failure getException(Object error) {
    if (error is! AppException) return _handleUnexpectedError(error);

    final failure = switch (error) {
      _ => Failure(message: error.message) // TODO: Add cases for exceptions
    };

    _logException(error.error, failure.message);

    return failure;
  }

  Failure _handleUnexpectedError(Object error) {
    final message = 'Unexpected Error'; // TODO: Add the message for the error

    _logException(error, message);

    return Failure(message: message);
  }

  void _logException(Object dataError, String appMessage) {
    debugLog('[DATA ERROR]: $dataError\n[APP MESSAGE]: $appMessage');
  }
}
