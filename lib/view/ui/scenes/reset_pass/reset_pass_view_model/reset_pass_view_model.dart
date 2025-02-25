
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'reset_pass_state.dart';

/// {@category StateManagement}
///
/// A provider for the [ResetPassViewModel] class.
final resetPassViewModelPr =
    AutoDisposeNotifierProvider<ResetPassViewModel, ResetPassState>(ResetPassViewModel.new);

/// {@category StateManagement}
///
/// A view model for managing `reset pass`-specific logic and state.
///
/// This class is responsible for coordinating `reset pass` behavior and interacting with the UI.
class ResetPassViewModel extends AutoDisposeNotifier<ResetPassState> {
  // TODO: Inject use case.
  // late final ResetPassUseCase _resetPassUseCase;

  @override
  ResetPassState build() {
    // TODO: Inject use case.
    // _resetPassUseCase = ref.read(resetPassUseCasePr);

    return const ResetPassState();
  }

  void _updateStatus(ResetPassStatus status) {
    state = state.copyWith(status: status);
  }
}

