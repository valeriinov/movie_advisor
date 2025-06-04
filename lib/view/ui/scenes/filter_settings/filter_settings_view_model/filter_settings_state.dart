import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/mappable_entity.dart';
import '../../../base/view_model/base_state.dart';

part 'filter_settings_state.mapper.dart';

/// {@category StateManagement}
///
/// Represents the state of a view model, extending [BaseState] with a [FilterSettingsStatus].
/// Manages the current status for reactive updates.
@mappableEntity
final class FilterSettingsState<F> extends BaseState<FilterSettingsStatus>
    with FilterSettingsStateMappable<F> {
  final F initFilter;
  final F filter;

  bool get isFilterChanged => filter != initFilter;

  @override
  final FilterSettingsStatus status;

  const FilterSettingsState({
    required this.initFilter,
    F? filter,
    this.status = const FilterSettingsBaseStatus(),
  }) : filter = filter ?? initFilter;
}

/// {@category StateManagement}
///
/// A sealed class representing the possible statuses of a [FilterSettingsState].
/// Provides properties for loading, initialization, and error handling.
sealed class FilterSettingsStatus extends BaseStatus {
  const FilterSettingsStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized,
  });
}

/// {@category StateManagement}
///
/// Represents the neutral or idle status of a [FilterSettingsState].
@mappableEntity
final class FilterSettingsBaseStatus extends FilterSettingsStatus
    with FilterSettingsBaseStatusMappable {
  const FilterSettingsBaseStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized = true,
  });
}

@mappableEntity
final class ApplyFilterSettingsStatus extends FilterSettingsStatus
    with ApplyFilterSettingsStatusMappable {
  const ApplyFilterSettingsStatus({super.isInitialized = false});
}
