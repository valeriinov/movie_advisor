import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/mappable_entity.dart';
import '../../../base/view_model/base_state.dart';

part 'filter_state.mapper.dart';

/// {@category StateManagement}
///
/// Represents the state of a view model, extending [BaseState] with a [FilterStatus].
/// Manages the current status for reactive updates.
@mappableEntity
final class FilterState extends BaseState<FilterStatus> with FilterStateMappable {
  @override
  final FilterStatus status;

  const FilterState({
    this.status = const FilterBaseStatus(),
  });
}

/// {@category StateManagement}
///
/// A sealed class representing the possible statuses of a [FilterState].
/// Provides properties for loading, initialization, and error handling.
sealed class FilterStatus extends BaseStatus {
const FilterStatus(
{super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the initial or uninitialized status of a [FilterState].
/// Used before it has completed its setup.
@mappableEntity
final class FilterBaseStatus extends FilterStatus
with FilterBaseStatusMappable {
const FilterBaseStatus(
{super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the neutral or idle status of a [FilterState] after it has completed its initial setup.
/// Indicates that it is ready for interaction with [isInitialized] set to `true`.
@mappableEntity
final class FilterBaseInitStatus extends FilterStatus
with FilterBaseInitStatusMappable {
const FilterBaseInitStatus(
{super.isLoading, super.errorMessage, super.isInitialized = true});
}
