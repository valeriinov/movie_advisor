import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/mappable_entity.dart';
import '../../../base/view_model/base_state.dart';

part 'reg_state.mapper.dart';

/// {@category StateManagement}
///
/// Represents the state of a view model, extending [BaseState] with a [RegStatus].
/// Manages the current status for reactive updates.
@mappableEntity
final class RegState extends BaseState<RegStatus> with RegStateMappable {
  @override
  final RegStatus status;

  const RegState({
    this.status = const RegBaseStatus(),
  });
}

/// {@category StateManagement}
///
/// A sealed class representing the possible statuses of a [RegState].
/// Provides properties for loading, initialization, and error handling.
sealed class RegStatus extends BaseStatus {
const RegStatus(
{super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the initial or uninitialized status of a [RegState].
/// Used before it has completed its setup.
@mappableEntity
final class RegBaseStatus extends RegStatus
with RegBaseStatusMappable {
const RegBaseStatus(
{super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the neutral or idle status of a [RegState] after it has completed its initial setup.
/// Indicates that it is ready for interaction with [isInitialized] set to `true`.
@mappableEntity
final class RegBaseInitStatus extends RegStatus
with RegBaseInitStatusMappable {
const RegBaseInitStatus(
{super.isLoading, super.errorMessage, super.isInitialized = true});
}
