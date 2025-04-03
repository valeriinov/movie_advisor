import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../domain/entities/result.dart';
import '../../../../../domain/usecases/auth_use_case.dart';
import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../base/view_model/utils/safe_operations_mixin.dart';
import '../model/reset_pass_form_state.dart';
import 'reset_pass_state.dart';

/// {@category StateManagement}
///
/// A type alias for [ASP] with [ResetPassViewModel] and [ResetPassState].
typedef ResetPassVSP = ASP<ResetPassViewModel, ResetPassState>;

/// {@category StateManagement}
///
/// A provider for the [ResetPassViewModel] class.
final resetPassViewModelPr =
    AutoDisposeNotifierProvider<ResetPassViewModel, ResetPassState>(
      ResetPassViewModel.new,
    );

/// {@category StateManagement}
///
/// A view model for managing `reset pass`-specific logic and state.
///
/// This class is responsible for coordinating `reset pass` behavior and interacting with the UI.
class ResetPassViewModel extends AutoDisposeNotifier<ResetPassState>
    with SafeOperationsMixin {
  late final AuthUseCase _authUseCase;

  @override
  ResetPassState build() {
    _authUseCase = ref.read(authUseCasePr);

    return const ResetPassState();
  }

  void updateFormState(ResetPassFormState formState) {
    state = state.copyWith(formState: formState);
  }

  Future<void> resetPass() async {
    _updateStatus(const ResetPassBaseInitStatus(isLoading: true));

    final resetPassData = state.formState.toResetPassData();

    await safeCall(
      () async => _authUseCase.resetPass(resetPassData),
      onResult: _handleResetPassResult,
    );
  }

  void _handleResetPassResult(Result<void> result) {
    result.fold(
      (error) {
        _updateStatus(ResetPassBaseInitStatus(errorMessage: error.message));
      },
      (_) {
        _resetFormState();
        _updateStatus(const ResetPassSuccessStatus());
      },
    );
  }

  void _resetFormState() {
    state = state.copyWith(formState: ResetPassFormState());
  }

  void _updateStatus(ResetPassStatus status) {
    state = state.copyWith(status: status);
  }
}
