import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../domain/entities/movie/movie_short_data.dart';
import '../../../../../domain/entities/pagination/list_with_pagination_data.dart';
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
    scheduleCall(loadInitialData);

    return const HomeState();
  }

  Future<void> loadInitialData({bool showLoader = true}) async {
    _updateStatus(HomeBaseStatus(isLoading: showLoader));

    await safeCall(
      _homeUseCase.getSuggestedMovies,
      onResult: (result) => _handleMoviesResult(result, (data) {
        state = state.copyWithUpdSugMov(
          isInitialized: true,
          data: data,
        );
      }),
    );

    await safeCall(
      _homeUseCase.getNowPlayingMovies,
      onResult: (result) => _handleMoviesResult(result, (data) {
        state = state.copyWithUpdTabMov(
          status: HomeBaseInitStatus(),
          isInitialized: true,
          data: data,
        );
      }),
    );
  }

  void toggleContentMode() {
    state = state.copyWithToggleContentMode();
  }

  void _handleMoviesResult(
    Result<ListWithPaginationData<MovieShortData>> result,
    Function(ListWithPaginationData<MovieShortData> data) onSuccess,
  ) {
    result.fold((error) {
      _updateStatus(HomeBaseInitStatus(errorMessage: error.message));
    }, onSuccess);
  }

  void _updateStatus(HomeStatus status) {
    state = state.copyWith(status: status);
  }
}
