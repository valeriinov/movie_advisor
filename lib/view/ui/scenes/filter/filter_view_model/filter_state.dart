import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/mappable_entity.dart';
import '../../../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../base/media_load_info.dart';
import '../../../base/view_model/base_state.dart';

part 'filter_state.mapper.dart';

/// {@category StateManagement}
///
/// Represents the state of a view model, extending [BaseState] with a [FilterStatus].
/// Manages the current status for reactive updates.
@mappableEntity
final class FilterState<T, F> extends BaseState<FilterStatus>
    with FilterStateMappable<T, F> {
  /// Start page for pagination controller
  final int startPage;
  final F filter;
  final MediaLoadInfo<T> results;

  @override
  final FilterStatus status;

  FilterState({
    this.startPage = 1,
    required this.filter,
    MediaLoadInfo<T>? results,
    this.status = const FilterBaseStatus(),
  }) : results = results ?? MediaLoadInfo<T>();

  FilterState<T, F> copyWithUpdResults({
    FilterStatus? status,
    bool? isInitialized,
    bool isNextPageLoading = false,
    bool isNewPageLoaded = false,
    ListWithPaginationData<T>? data,
  }) {
    final updatedData = results.copyWithHandledData(
      isInitialized: isInitialized,
      isNextPageLoading: isNextPageLoading,
      isNewPageLoaded: isNewPageLoaded,
      data: data,
    );

    return copyWith(status: status ?? this.status, results: updatedData);
  }
}

/// {@category StateManagement}
///
/// A sealed class representing the possible statuses of a [FilterState].
/// Provides properties for loading, initialization, and error handling.
sealed class FilterStatus extends BaseStatus {
  const FilterStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized,
  });
}

/// {@category StateManagement}
///
/// Represents the initial or uninitialized status of a [FilterState].
/// Used before it has completed its setup.
@mappableEntity
final class FilterBaseStatus extends FilterStatus
    with FilterBaseStatusMappable {
  const FilterBaseStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized,
  });
}

/// {@category StateManagement}
///
/// Represents the neutral or idle status of a [FilterState] after it has completed its initial setup.
/// Indicates that it is ready for interaction with [isInitialized] set to `true`.
@mappableEntity
final class FilterBaseInitStatus extends FilterStatus
    with FilterBaseInitStatusMappable {
  const FilterBaseInitStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized = true,
  });
}
