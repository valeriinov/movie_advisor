import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/mappable_entity.dart';
import '../../../base/view_model/base_state.dart';
import '../model/auth_form_state.dart';

part 'auth_state.mapper.dart';

/// {@category StateManagement}
///
/// Represents the state of a view model, extending [BaseState] with a [AuthStatus].
/// Manages the current status for reactive updates.
@mappableEntity
final class AuthState extends BaseState<AuthStatus> with AuthStateMappable {
  final AuthFormState formState;

  @override
  final AuthStatus status;

  const AuthState({
    this.formState = const AuthFormState(),
    this.status = const AuthBaseStatus(),
  });
}

/// {@category StateManagement}
///
/// A sealed class representing the possible statuses of a [AuthState].
/// Provides properties for loading, initialization, and error handling.
sealed class AuthStatus extends BaseStatus {
  const AuthStatus({super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the initial or uninitialized status of a [AuthState].
/// Used before it has completed its setup.
@mappableEntity
final class AuthBaseStatus extends AuthStatus with AuthBaseStatusMappable {
  const AuthBaseStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized,
  });
}

/// {@category StateManagement}
///
/// Represents the neutral or idle status of a [AuthState] after it has completed its initial setup.
/// Indicates that it is ready for interaction with [isInitialized] set to `true`.
@mappableEntity
final class AuthBaseInitStatus extends AuthStatus
    with AuthBaseInitStatusMappable {
  const AuthBaseInitStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized = true,
  });
}

@mappableEntity
final class AuthSuccessStatus extends AuthStatus
    with AuthSuccessStatusMappable {
  const AuthSuccessStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized = true,
  });
}
