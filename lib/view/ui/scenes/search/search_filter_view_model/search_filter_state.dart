import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/mappable_entity.dart';
import '../../../../../domain/entities/search/search_filter_data.dart';
import '../../../base/view_model/base_state.dart';

part 'search_filter_state.mapper.dart';

/// {@category StateManagement}
///
/// Represents the state of a view model, extending [BaseState] with a [SearchFilterState].
/// Manages the current status for reactive updates.
@mappableEntity
final class SearchFilterState extends BaseState<SearchFilterStatus>
    with SearchFilterStateMappable {
  final SearchFilterData filter;

  @override
  final SearchFilterStatus status;

  const SearchFilterState({
    this.filter = const SearchFilterData(),
    this.status = const SearchFilterBaseStatus(),
  });
}

/// {@category StateManagement}
///
/// A sealed class representing the possible statuses of a [SearchFilterState].
/// Provides properties for loading, initialization, and error handling.
class SearchFilterStatus extends BaseStatus {
  const SearchFilterStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized,
  });
}

/// {@category StateManagement}
///
/// Represents the neutral or idle status of a [SearchFilterStatus].
@mappableEntity
final class SearchFilterBaseStatus extends SearchFilterStatus
    with SearchFilterBaseStatusMappable {
  const SearchFilterBaseStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized = true,
  });
}
