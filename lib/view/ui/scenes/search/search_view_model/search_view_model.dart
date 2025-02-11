import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../base/content_mode.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import 'search_state.dart';

typedef SearchAFSP = AFSP<SearchViewModel, SearchState, ContentMode>;

/// {@category StateManagement}
///
/// A provider for the [SearchViewModel] class.
final searchViewModelPr = AutoDisposeNotifierProvider.family<SearchViewModel,
    SearchState, ContentMode>(
  SearchViewModel.new,
);

/// {@category StateManagement}
///
/// A view model for managing `search`-specific logic and state.
///
/// This class is responsible for coordinating `search` behavior and interacting with the UI.
class SearchViewModel
    extends AutoDisposeFamilyNotifier<SearchState, ContentMode> {
  @override
  SearchState build(arg) {
    return SearchState(contentMode: arg);
  }

  toggleContentMode() {
    final contentMode =
        state.contentMode.isMovies ? ContentMode.series : ContentMode.movies;

    state = state.copyWith(contentMode: contentMode);
  }
}
