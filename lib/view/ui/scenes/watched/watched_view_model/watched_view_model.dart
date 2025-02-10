
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'watched_state.dart';

/// {@category StateManagement}
///
/// A provider for the [WatchedViewModel] class.
final watchedViewModelPr =
    AutoDisposeNotifierProvider<WatchedViewModel, WatchedState>(WatchedViewModel.new);

/// {@category StateManagement}
///
/// A view model for managing `watched`-specific logic and state.
///
/// This class is responsible for coordinating `watched` behavior and interacting with the UI.
class WatchedViewModel extends AutoDisposeNotifier<WatchedState> {
  // TODO: Inject use case.
  // late final WatchedUseCase _watchedUseCase;

  @override
  WatchedState build() {
    // TODO: Inject use case.
    // _watchedUseCase = ref.read(watchedUseCasePr);

    return const WatchedState();
  }

  void _updateStatus(WatchedStatus status) {
    state = state.copyWith(status: status);
  }
}

