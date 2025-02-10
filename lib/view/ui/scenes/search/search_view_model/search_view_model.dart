import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'search_state.dart';

/// {@category StateManagement}
///
/// A provider for the [SearchViewModel] class.
final searchViewModelPr =
    AutoDisposeNotifierProvider.family<SearchViewModel, SearchState, int>(
  SearchViewModel.new,
);

/// {@category StateManagement}
///
/// A view model for managing `search`-specific logic and state.
///
/// This class is responsible for coordinating `search` behavior and interacting with the UI.
// TODO: change the input type of the family provider to the type of the argument you want to pass to the view model.
class SearchViewModel extends AutoDisposeFamilyNotifier<SearchState, int> {
  // TODO: Inject use case.
  // late final SearchUseCase _searchUseCase;

  @override
  SearchState build(arg) {
    // TODO: Inject use case.
    // _searchUseCase = ref.read(searchUseCasePr);

    return const SearchState();
  }

  void _updateStatus(SearchStatus status) {
    state = state.copyWith(status: status);
  }
}


