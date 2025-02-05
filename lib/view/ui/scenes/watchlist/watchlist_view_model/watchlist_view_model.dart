
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'watchlist_state.dart';

/// {@category StateManagement}
///
/// A provider for the [WatchlistViewModel] class.
final watchlistViewModelPr =
    AutoDisposeNotifierProvider<WatchlistViewModel, WatchlistState>(WatchlistViewModel.new);

/// {@category StateManagement}
///
/// A view model for managing `watchlist`-specific logic and state.
///
/// This class is responsible for coordinating `watchlist` behavior and interacting with the UI.
class WatchlistViewModel extends AutoDisposeNotifier<WatchlistState> {
  // TODO: Inject use case.
  // late final WatchListUseCase _watchListUseCase;

  @override
  WatchlistState build() {
    // TODO: Inject use case.
    // _watchListUseCase = ref.read(watchListUseCasePr);

    return const WatchlistState();
  }

  void _updateStatus(WatchlistStatus status) {
    state = state.copyWith(status: status);
  }
}

