import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../domain/entities/auth/user_data.dart';
import '../../../../../domain/entities/result.dart';
import '../../../../../domain/usecases/auth_use_case.dart';
import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../base/view_model/utils/safe_operations_mixin.dart';
import '../../../base/view_model/utils/schedule_operation_mixin.dart';
import 'more_state.dart';

/// {@category StateManagement}
///
/// A type alias for [ASP] with [MoreViewModel] and [MoreState].
typedef MoreVSP = ASP<MoreViewModel, MoreState>;

/// {@category StateManagement}
///
/// A provider for the [MoreViewModel] class.
final moreViewModelPr = AutoDisposeNotifierProvider<MoreViewModel, MoreState>(
  MoreViewModel.new,
);

/// {@category StateManagement}
///
/// A view model for managing `more`-specific logic and state.
///
/// This class is responsible for coordinating `more` behavior and interacting with the UI.
class MoreViewModel extends AutoDisposeNotifier<MoreState>
    with SafeOperationsMixin, ScheduleOperationsMixin {
  late final AuthUseCase _authUseCase;
  late final StreamSubscription<Result<UserData?>> _userSubscription;

  @override
  MoreState build() {
    _authUseCase = ref.read(authUseCasePr);

    _userSubscription = _authUseCase.userChanges.listen(_handleUserResult);

    ref.onDispose(() {
      cancelSafeOperations();
      _userSubscription.cancel();
    });

    scheduleCall(loadInitialData);

    return const MoreState();
  }

  Future<void> loadInitialData({bool showLoader = true}) async {
    _updateStatus(MoreBaseStatus(isLoading: showLoader));

    await safeCall(_authUseCase.getUser, onResult: _handleUserResult);
  }

  void _handleUserResult(Result<UserData?> result) {
    result.fold(
      (error) {
        _updateStatus(MoreBaseInitStatus(errorMessage: error.message));
      },
      (user) {
        state = state.copyWith(status: const MoreBaseInitStatus(), user: user);
      },
    );
  }

  Future<void> signOut() async {
    _updateStatus(const MoreBaseInitStatus(isLoading: true));

    await safeCall(_authUseCase.signOut, onResult: _handleResult);
  }

  void _handleResult(Result<void> result) {
    result.fold(
      (error) {
        _updateStatus(MoreBaseInitStatus(errorMessage: error.message));
      },
      (_) {
        _updateStatus(const MoreBaseInitStatus());
      },
    );
  }

  void _updateStatus(MoreStatus status) {
    state = state.copyWith(status: status);
  }
}
