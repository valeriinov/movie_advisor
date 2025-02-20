import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../view_model/ext/vm_state_provider_creator.dart';
import 'filter_state.dart';

/// {@category StateManagement}
///
/// A type alias for [ASP] with [FilterViewModel] and [FilterState].
typedef FilterVSP = ASP<FilterViewModel, FilterState>;

/// {@category StateManagement}
///
/// A view model for managing the [FilterState].
class FilterViewModel extends AutoDisposeNotifier<FilterState> {
  @override
  FilterState build() => const FilterState();

  /// Updates the search query in the filter state.
  ///
  /// The [query] parameter is the new search query.
  /// If `null`, the query is reset.
  void updateSearchQuery(String? query) {
    final updFilter = state.filter.copyWith(query: query);

    state = state.copyWith(filter: updFilter);
  }
}
