import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../domain/entities/result.dart';
import '../../../../../domain/usecases/auth_use_case.dart';
import '../../../../../domain/usecases/sync_use_case.dart';
import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../base/view_model/utils/safe_operations_mixin.dart';
import '../model/reg_form_state.dart';
import 'reg_state.dart';

/// {@category StateManagement}
///
/// A type alias for [ASP] with [RegViewModel] and [RegState].
typedef RegVSP = ASP<RegViewModel, RegState>;

/// {@category StateManagement}
///
/// A provider for the [RegViewModel] class.
final regViewModelPr = AutoDisposeNotifierProvider<RegViewModel, RegState>(
  RegViewModel.new,
);

/// {@category StateManagement}
///
/// A view model for managing `reg`-specific logic and state.
///
/// This class is responsible for coordinating `reg` behavior and interacting with the UI.
class RegViewModel extends AutoDisposeNotifier<RegState>
    with SafeOperationsMixin {
  late final AuthUseCase _authUseCase;
  late final SyncUseCase _syncUseCase;

  @override
  RegState build() {
    _authUseCase = ref.read(authUseCasePr);
    _syncUseCase = ref.read(syncUseCasePr);

    return const RegState();
  }

  void updateFormState(RegFormState formState) {
    state = state.copyWith(formState: formState);
  }

  Future<void> signUp() async {
    _updateStatus(const RegBaseInitStatus(isLoading: true));

    final regData = state.formState.toRegData();

    await safeCall(
      () async => _authUseCase.signUp(regData),
      onResult: _handleSignUpResult,
    );
  }

  void _handleSignUpResult(Result<void> result) {
    result.fold(
      (error) {
        _updateStatus(RegBaseInitStatus(errorMessage: error.message));
      },
      (_) {
        _runSyncData();
        _resetFormState();
        _updateStatus(const RegSuccessStatus());
      },
    );
  }

  Future<void> _runSyncData() async {
    await _syncUseCase.syncMovies();
    await _syncUseCase.syncSeries();
  }

  void _resetFormState() {
    state = state.copyWith(formState: const RegFormState());
  }

  void _updateStatus(RegStatus status) {
    state = state.copyWith(status: status);
  }
}
