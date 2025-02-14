import 'package:flutter_utils/flutter_utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../domain/entities/base_media/media_data.dart';
import '../../../../../domain/entities/movie/movie_data.dart';
import '../../../../../domain/entities/result.dart';
import '../../../../../domain/entities/series/series_data.dart';
import '../../../../../domain/usecases/details/details_use_case.dart';
import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../base/view_model/utils/safe_operations_mixin.dart';
import '../../../base/view_model/utils/schedule_operation_mixin.dart';
import '../model/details_tab.dart';
import 'details_state.dart';

part 'details_movie_view_model.dart';
part 'details_series_view_model.dart';

/// {@category StateManagement}
///
/// A view model for managing `details`-specific logic and state.
///
/// This class is responsible for coordinating `details` behavior and interacting with the UI.
abstract base class _DetailsViewModel<T extends MediaData>
    extends AutoDisposeFamilyNotifier<DetailsState<T>, int>
    with SafeOperationsMixin, ScheduleOperationsMixin {
  late final DetailsUseCase<T> _detailsUseCase;

  Future<void> loadInitialData({bool showLoader = true}) async {
    _updateStatus(DetailsBaseStatus(isLoading: showLoader));

    await 4.seconds.delay();

    await safeCall(
      () => _detailsUseCase.getDetails(state.data.id),
      onResult: _handleDetailsResult,
    );
  }

  void _handleDetailsResult(Result<T>? result) {
    result?.fold((error) {
      _updateStatus(DetailsBaseInitStatus(errorMessage: error.message));
    }, (data) {
      state = state.copyWith(
        status: DetailsBaseInitStatus(),
        data: data,
      );
    });
  }

  void updateCurrentTab(DetailsTab tab) {
    if (tab == state.currentTab) return;

    state = state.copyWith(currentTab: tab);
  }

  void _updateStatus(DetailsStatus status) {
    state = state.copyWith(status: status);
  }
}
