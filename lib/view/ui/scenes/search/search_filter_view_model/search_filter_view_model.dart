import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import 'search_filter_state.dart';

final searchFilterViewModelPr =
AutoDisposeNotifierProvider<SearchFilterViewModel, SearchFilterState>(
  SearchFilterViewModel.new,
);

/// {@category StateManagement}
///
/// A type alias for [ASP] with [SearchFilterViewModel] and [SearchFilterState].
typedef SearchFilterVSP = ASP<SearchFilterViewModel, SearchFilterState>;

/// {@category StateManagement}
///
/// A view model for managing the [SearchFilterState].
class SearchFilterViewModel extends AutoDisposeNotifier<SearchFilterState> {
  @override
  SearchFilterState build() => const SearchFilterState();

  /// Updates the search query in the filter state.
  ///
  /// The [query] parameter is the new search query.
  /// If `null`, the query is reset.
  void updateSearchQuery(String? query) {
    final updFilter = state.filter.copyWith(query: query);

    state = state.copyWith(filter: updFilter);
  }
}
