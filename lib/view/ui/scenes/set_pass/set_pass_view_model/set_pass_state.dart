import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/mappable_entity.dart';
import '../../../base/view_model/base_state.dart';

part 'set_pass_state.mapper.dart';

/// {@category StateManagement}
///
/// Represents the state of a view model, extending [BaseState] with a [SetPassStatus].
/// Manages the current status for reactive updates.
@mappableEntity
final class SetPassState extends BaseState<SetPassStatus> with SetPassStateMappable {
  final String oobCode;

  @override
  final SetPassStatus status;

  const SetPassState({
    this.oobCode = '',
    this.status = const SetPassBaseStatus(),
  });
}

/// {@category StateManagement}
///
/// A sealed class representing the possible statuses of a [SetPassState].
/// Provides properties for loading, initialization, and error handling.
sealed class SetPassStatus extends BaseStatus {
const SetPassStatus(
{super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the initial or uninitialized status of a [SetPassState].
/// Used before it has completed its setup.
@mappableEntity
final class SetPassBaseStatus extends SetPassStatus
with SetPassBaseStatusMappable {
const SetPassBaseStatus(
{super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the neutral or idle status of a [SetPassState] after it has completed its initial setup.
/// Indicates that it is ready for interaction with [isInitialized] set to `true`.
@mappableEntity
final class SetPassBaseInitStatus extends SetPassStatus
with SetPassBaseInitStatusMappable {
const SetPassBaseInitStatus(
{super.isLoading, super.errorMessage, super.isInitialized = true});
}
