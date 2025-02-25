
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'reg_state.dart';

/// {@category StateManagement}
///
/// A provider for the [RegViewModel] class.
final regViewModelPr =
    AutoDisposeNotifierProvider<RegViewModel, RegState>(RegViewModel.new);

/// {@category StateManagement}
///
/// A view model for managing `reg`-specific logic and state.
///
/// This class is responsible for coordinating `reg` behavior and interacting with the UI.
class RegViewModel extends AutoDisposeNotifier<RegState> {
  // TODO: Inject use case.
  // late final RegUseCase _regUseCase;

  @override
  RegState build() {
    // TODO: Inject use case.
    // _regUseCase = ref.read(regUseCasePr);

    return const RegState();
  }

  void _updateStatus(RegStatus status) {
    state = state.copyWith(status: status);
  }
}

