import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../domain/usecases/auth_use_case.dart';
import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../base/view_model/utils/safe_operations_mixin.dart';
import '../model/set_pass_form_state.dart';
import 'set_pass_state.dart';

/// {@category StateManagement}
///
/// A type alias for [AFSP] with [SetPassViewModel], [SetPassState], and an string oobCode.
typedef SetPassAFSP = AFSP<SetPassViewModel, SetPassState, String>;

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
class SetPassViewModel extends AutoDisposeFamilyNotifier<SetPassState, String>
    with SafeOperationsMixin {
  late final AuthUseCase _authUseCase;

  @override
  SetPassState build(arg) {
    _authUseCase = ref.read(authUseCasePr);

    return SetPassState(oobCode: arg);
  }

  void updateFormState(SetPassFormState formState) {
    state = state.copyWith(formState: formState);
  }

  Future<void> setPass() async{}

  void _resetFormState() {
    state = state.copyWith(formState: const SetPassFormState());
  }

  void _updateStatus(SetPassStatus status) {
    state = state.copyWith(status: status);
  }
}
