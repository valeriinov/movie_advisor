/// The [AppException] abstract interface class serves as a base for all
/// application-specific exceptions within the `Data Layer`.
/// It implements the [Exception] interface, providing a standardized structure for handling
/// low-level errors related to data operations, such as network failures or
/// database errors.
///
/// This class defines two key properties: [error] and [message], which
/// should be implemented by subclasses to provide details about the exception.
abstract interface class AppException implements Exception {
  /// The underlying error that caused the exception.
  ///
  /// This can be any object, such as an exception, error code, or any value
  /// providing context about the root cause of the issue.
  Object get error;

  /// The message providing additional context about the exception.
  ///
  /// This message is typically used for logging or displaying a user-friendly
  /// description of the issue.
  String get message;
}
