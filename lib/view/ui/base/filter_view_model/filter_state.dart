import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/mappable_entity.dart';
import '../../../../domain/entities/search/search_filter_data.dart';
import '../../base/view_model/base_state.dart';

part 'filter_state.mapper.dart';

/// {@category StateManagement}
///
/// Represents the state of a view model, extending [BaseState] with a [FilterState].
/// Manages the current status for reactive updates.
@mappableEntity
final class FilterState extends BaseState<FilterStatus>
    with FilterStateMappable {
  final SearchFilterData filter;

  @override
  final FilterStatus status;

  const FilterState({
    this.filter = const SearchFilterData(),
    this.status = const FilterBaseStatus(),
  });
}

/// {@category StateManagement}
///
/// A sealed class representing the possible statuses of a [FilterState].
/// Provides properties for loading, initialization, and error handling.
class FilterStatus extends BaseStatus {
  const FilterStatus(
      {super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the neutral or idle status of a [FilterStatus].
@mappableEntity
final class FilterBaseStatus extends FilterStatus
    with FilterBaseStatusMappable {
  const FilterBaseStatus(
      {super.isLoading, super.errorMessage, super.isInitialized = true});
}
