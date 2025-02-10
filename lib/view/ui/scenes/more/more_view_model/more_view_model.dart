
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'more_state.dart';

/// {@category StateManagement}
///
/// A provider for the [MoreViewModel] class.
final moreViewModelPr =
    AutoDisposeNotifierProvider<MoreViewModel, MoreState>(MoreViewModel.new);

/// {@category StateManagement}
///
/// A view model for managing `more`-specific logic and state.
///
/// This class is responsible for coordinating `more` behavior and interacting with the UI.
class MoreViewModel extends AutoDisposeNotifier<MoreState> {
  // TODO: Inject use case.
  // late final MoreUseCase _moreUseCase;

  @override
  MoreState build() {
    // TODO: Inject use case.
    // _moreUseCase = ref.read(moreUseCasePr);

    return const MoreState();
  }

  void _updateStatus(MoreStatus status) {
    state = state.copyWith(status: status);
  }
}

