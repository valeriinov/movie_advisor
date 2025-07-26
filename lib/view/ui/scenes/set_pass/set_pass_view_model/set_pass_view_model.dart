import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'set_pass_state.dart';

/// {@category StateManagement}
///
/// A provider for the [SetPassViewModel] class.
final setPassViewModelPr =
    AutoDisposeNotifierProvider.family<SetPassViewModel, SetPassState, String>(
  SetPassViewModel.new,
);

/// {@category StateManagement}
///
/// A view model for managing `set pass`-specific logic and state.
///
/// This class is responsible for coordinating `set pass` behavior and interacting with the UI.
class SetPassViewModel extends AutoDisposeFamilyNotifier<SetPassState, String> {
  // TODO: Inject use case.
  // late final SetPassUseCase _setPassUseCase;

  @override
  SetPassState build(arg) {
    // TODO: Inject use case.
    // _setPassUseCase = ref.read(setPassUseCasePr);

    return SetPassState(oobCode: arg);
  }

  void _updateStatus(SetPassStatus status) {
    state = state.copyWith(status: status);
  }
}


