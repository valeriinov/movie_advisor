import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/mappable_entity.dart';
import '../../../base/view_model/base_state.dart';
import '../model/reset_pass_form_state.dart';

part 'reset_pass_state.mapper.dart';

/// {@category StateManagement}
///
/// Represents the state of a view model, extending [BaseState] with a [ResetPassStatus].
/// Manages the current status for reactive updates.
@mappableEntity
final class ResetPassState extends BaseState<ResetPassStatus>
    with ResetPassStateMappable {
  final ResetPassFormState formState;

  @override
  final ResetPassStatus status;

  const ResetPassState({
    this.formState = const ResetPassFormState(),
    this.status = const ResetPassBaseStatus(),
  });
}

/// {@category StateManagement}
///
/// A sealed class representing the possible statuses of a [ResetPassState].
/// Provides properties for loading, initialization, and error handling.
sealed class ResetPassStatus extends BaseStatus {
  const ResetPassStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized,
  });
}

/// {@category StateManagement}
///
/// Represents the initial or uninitialized status of a [ResetPassState].
/// Used before it has completed its setup.
@mappableEntity
final class ResetPassBaseStatus extends ResetPassStatus
    with ResetPassBaseStatusMappable {
  const ResetPassBaseStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized,
  });
}

/// {@category StateManagement}
///
/// Represents the neutral or idle status of a [ResetPassState] after it has completed its initial setup.
/// Indicates that it is ready for interaction with [isInitialized] set to `true`.
@mappableEntity
final class ResetPassBaseInitStatus extends ResetPassStatus
    with ResetPassBaseInitStatusMappable {
  const ResetPassBaseInitStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized = true,
  });
}

@mappableEntity
final class ResetPassSuccessStatus extends ResetPassStatus
    with ResetPassSuccessStatusMappable {
  const ResetPassSuccessStatus({
    super.isLoading = false,
    super.errorMessage,
    super.isInitialized = true,
  });
}
