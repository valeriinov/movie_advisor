import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../domain/entities/result.dart';
import '../../../../../domain/usecases/auth_use_case.dart';
import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../base/view_model/utils/safe_operations_mixin.dart';
import '../model/delete_account_form_state.dart';
import 'delete_account_state.dart';

/// {@category StateManagement}
///
/// A type alias for [ASP] with [MoreViewModel] and [MoreState].
typedef DeleteAccountVSP = ASP<DeleteAccountViewModel, DeleteAccountState>;

/// {@category StateManagement}
///
/// A provider for the [DeleteAccountViewModel] class.
final deleteAccountViewModelPr =
    AutoDisposeNotifierProvider<DeleteAccountViewModel, DeleteAccountState>(
      DeleteAccountViewModel.new,
    );

/// {@category StateManagement}
///
/// A view model for managing `delete account`-specific logic and state.
///
/// This class is responsible for coordinating `delete account` behavior and interacting with the UI.
class DeleteAccountViewModel extends AutoDisposeNotifier<DeleteAccountState>
    with SafeOperationsMixin {
  late final AuthUseCase _authUseCase;

  @override
  DeleteAccountState build() {
    _authUseCase = ref.read(authUseCasePr);

    ref.onDispose(cancelSafeOperations);

    return const DeleteAccountState();
  }

  void updateFormState(DeleteAccountFormState formState) {
    state = state.copyWith(formState: formState);
  }

  Future<void> deleteAccount() async {
    _updateStatus(const DeleteAccountBaseInitStatus(isLoading: true));

    final deleteAccountData = state.formState.toDeleteAccountData();

    await safeCall(
      () => _authUseCase.deleteAccount(deleteAccountData),
      onResult: _handleResult,
    );
  }

  void _handleResult(Result<void> result) {
    result.fold(
      (error) {
        _updateStatus(DeleteAccountBaseInitStatus(errorMessage: error.message));
      },
      (_) {
        _updateStatus(const DeleteAccountSuccessStatus());
      },
    );
  }

  void _updateStatus(DeleteAccountStatus status) {
    state = state.copyWith(status: status);
  }
}
