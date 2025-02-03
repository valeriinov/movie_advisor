import 'package:dartz/dartz.dart';

import 'failure.dart';

/// {@category Entities}
/// A type alias for representing the result of an operation that can either succeed or fail.
///
/// The [Result] type uses the `Either` type from the `dartz` package to encapsulate
/// two possible outcomes:
/// - `Left(Failure)`: Indicates that the operation failed, providing a [Failure] object with error details.
/// - `Right(T)`: Indicates that the operation was successful, containing a value of type [T].
///
/// This structure encourages explicit error handling by making it clear when an operation
/// can fail and requiring the caller to handle both success and failure cases.
///
/// Example:
/// ```dart
/// Future<Result<String>> fetchData() async {
///   try {
///     final data = await apiService.getData();
///     return Right(data);
///   } catch (e) {
///     return Left(Failure(message: 'Failed to fetch data'));
///   }
/// }
///
/// void handleResult(Result<String> result) {
///   result.fold(
///     (failure) => print('Error: ${failure.message}'),
///     (data) => print('Data: $data'),
///   );
/// }
/// ```
typedef Result<T> = Either<Failure, T>;
