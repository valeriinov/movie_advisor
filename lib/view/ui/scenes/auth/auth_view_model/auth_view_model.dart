import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../domain/entities/result.dart';
import '../../../../../domain/usecases/auth_use_case.dart';
import '../../../../../domain/usecases/sync_use_case.dart';
import '../../../../di/injector.dart';
import '../../../base/view_model/utils/safe_operations_mixin.dart';
import '../model/auth_form_state.dart';
import 'auth_state.dart';

/// {@category StateManagement}
///
/// A provider for the [AuthViewModel] class.
final authViewModelPr = AutoDisposeNotifierProvider<AuthViewModel, AuthState>(
  AuthViewModel.new,
);

/// {@category StateManagement}
///
/// A view model for managing `auth`-specific logic and state.
///
/// This class is responsible for coordinating `auth` behavior and interacting with the UI.
class AuthViewModel extends AutoDisposeNotifier<AuthState>
    with SafeOperationsMixin {
  late final AuthUseCase _authUseCase;
  late final SyncUseCase _syncUseCase;

  @override
  AuthState build() {
    _authUseCase = ref.read(authUseCasePr);
    _syncUseCase = ref.read(syncUseCasePr);

    ref.onDispose(cancelSafeOperations);

    return const AuthState();
  }

  void updateFormState(AuthFormState formState) {
    state = state.copyWith(formState: formState);
  }

  Future<void> signIn() async {
    _updateStatus(const AuthBaseInitStatus(isLoading: true));

    final authData = state.formState.toAuthData();

    await safeCall(
      () async => _authUseCase.signIn(authData),
      onResult: _handleSignInResult,
    );
  }

  void _handleSignInResult(Result<void> result) {
    result.fold(
      (error) {
        _updateStatus(AuthBaseInitStatus(errorMessage: error.message));
      },
      (_) {
        _runSyncData();
        _updateStatus(const AuthSuccessStatus());
      },
    );
  }

  Future<void> _runSyncData() async {
    await _syncUseCase.syncMovies();
    await _syncUseCase.syncSeries();
  }

  void _updateStatus(AuthStatus status) {
    state = state.copyWith(status: status);
  }
}
