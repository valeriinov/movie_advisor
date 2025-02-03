
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'watch_list_state.dart';

/// {@category StateManagement}
///
/// A provider for the [WatchListViewModel] class.
final watchListViewModelPr =
    AutoDisposeNotifierProvider<WatchListViewModel, WatchListState>(WatchListViewModel.new);

/// {@category StateManagement}
///
/// A view model for managing `watch_list`-specific logic and state.
///
/// This class is responsible for coordinating `watch_list` behavior and interacting with the UI.
class WatchListViewModel extends AutoDisposeNotifier<WatchListState> {
  // TODO: Inject use case.
  // late final WatchListUseCase _watchListUseCase;

  @override
  WatchListState build() {
    // TODO: Inject use case.
    // _watchListUseCase = ref.read(watchListUseCasePr);

    return const WatchListState();
  }

  void _updateStatus(WatchListStatus status) {
    state = state.copyWith(status: status);
  }
}

