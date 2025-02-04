import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../domain/entities/result.dart';
import '../../../../../domain/usecases/home_use_case.dart';
import '../../../../di/injector.dart';
import '../../../base/view_model/utils/safe_operations_mixin.dart';
import '../../../base/view_model/utils/schedule_operation_mixin.dart';
import 'home_state.dart';

/// {@category StateManagement}
///
/// A provider for the [HomeViewModel] class.
final homeViewModelPr =
    AutoDisposeNotifierProvider<HomeViewModel, HomeState>(HomeViewModel.new);

/// {@category StateManagement}
///
/// A view model for managing `home`-specific logic and state.
///
/// This class is responsible for coordinating `home` behavior and interacting with the UI.
class HomeViewModel extends AutoDisposeNotifier<HomeState>
    with SafeOperationsMixin, ScheduleOperationsMixin {
  late final HomeUseCase _homeUseCase;

  @override
  HomeState build() {
    _homeUseCase = ref.read(homeUseCasePr);

    ref.onDispose(cancelSafeOperations);
    scheduleCall(loadMovies);

    return const HomeState();
  }

  Future<void> loadMovies({bool showLoader = true}) async {
    _updateStatus(HomeBaseStatus(isLoading: showLoader));

    await safeCall(_homeUseCase.fetch, onResult: _handleMoviesResult);
  }

  void _handleMoviesResult(Result<void> result) {
    result.fold((error) {
      _updateStatus(HomeBaseInitStatus(errorMessage: error.message));
    }, (user) {
      _updateStatus(HomeBaseInitStatus());
    });
  }

  void _updateStatus(HomeStatus status) {
    state = state.copyWith(status: status);
  }
}
