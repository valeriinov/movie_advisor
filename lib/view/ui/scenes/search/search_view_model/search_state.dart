import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/mappable_entity.dart';
import '../../../base/content_mode.dart';
import '../../../base/view_model/base_state.dart';

part 'search_state.mapper.dart';

/// {@category StateManagement}
///
/// Represents the state of a view model, extending [BaseState] with a [SearchStatus].
/// Manages the current status for reactive updates.
@mappableEntity
final class SearchState extends BaseState<SearchStatus>
    with SearchStateMappable {
  final ContentMode contentMode;

  @override
  final SearchStatus status;

  const SearchState({
    this.contentMode = ContentMode.movies,
    this.status = const SearchBaseStatus(),
  });
}

/// {@category StateManagement}
///
/// A sealed class representing the possible statuses of a [SearchState].
/// Provides properties for loading, initialization, and error handling.
sealed class SearchStatus extends BaseStatus {
  const SearchStatus(
      {super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the neutral or idle status of a [HomeState].
@mappableEntity
final class SearchBaseStatus extends SearchStatus
    with SearchBaseStatusMappable {
  const SearchBaseStatus(
      {super.isLoading, super.errorMessage, super.isInitialized = true});
}
