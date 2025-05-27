/// {@category StateManagement}
///
/// An abstract base class representing a generic state with a status.
/// The [status] getter provides the current status of the state, which
/// must be an instance of a class extending [BaseStatus].
///
/// Example:
///
/// ```dart
///
/// final class UserState extends BaseState<UserStatus> {
///   final String name;
///   final int age;
///
///   @override
///   final UserStatus status;
///
///   UserState(
///       {this.status = const UserBaseStatus(),
///       this.name = '',
///       this.age = -1});
/// }
///
/// sealed class UserStatus extends BaseStatus {
///   const UserStatus({super.isLoading, super.errorMessage});
/// }
///
/// final class UserBaseStatus extends UserStatus {
///   const UserBaseStatus({super.isLoading, super.errorMessage});
/// }
///
/// final class UserUpdaterSuccessStatus extends UserStatus {
///   const UserUpdaterSuccessStatus({super.isLoading, super.errorMessage});
/// }
/// ```
abstract base class BaseState<T extends BaseStatus> {
  const BaseState();

  T get status;
}

/// {@category StateManagement}
///
/// An abstract base class for defining the status of a state.
/// This class includes properties for loading status and error messages.
abstract class BaseStatus {
  /// Whether the status is initialized.
  final bool isInitialized;

  /// Whether the status is currently loading.
  final bool isLoading;

  /// An optional error message.
  ///
  /// If not null, indicates an error state.
  final String? errorMessage;

  /// Constructs a [BaseStatus] instance.
  ///
  /// The [isLoading] parameter indicates if the status is currently loading.
  /// The [isInitialized] parameter indicates if the status is initialized.
  /// The [errorMessage] parameter holds an optional error message.
  const BaseStatus({
    this.isLoading = false,
    this.isInitialized = false,
    this.errorMessage,
  });

  /// Whether the status has an error.
  ///
  /// Returns `true` if [errorMessage] is not null and not empty.
  bool get hasError => errorMessage != null && errorMessage!.isNotEmpty;
}
