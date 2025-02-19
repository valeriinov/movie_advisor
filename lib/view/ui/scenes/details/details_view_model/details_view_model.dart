import 'dart:ui';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../domain/entities/base_media/media_data.dart';
import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../../../domain/entities/movie/movie_data.dart';
import '../../../../../domain/entities/movie/movie_short_data.dart';
import '../../../../../domain/entities/result.dart';
import '../../../../../domain/entities/series/series_data.dart';
import '../../../../../domain/entities/series/series_short_data.dart';
import '../../../../../domain/usecases/details/details_use_case.dart';
import '../../../../../domain/usecases/watch/watch_use_case.dart';
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
abstract base class _DetailsViewModel<T extends MediaData,
        S extends MediaShortData>
    extends AutoDisposeFamilyNotifier<DetailsState<T>, int>
    with SafeOperationsMixin, ScheduleOperationsMixin {
  late final DetailsUseCase<T> _detailsUseCase;
  late final WatchUseCase<S> _watchUseCase;

  Future<void> loadInitialData({bool showLoader = true}) async {
    _updateStatus(DetailsBaseStatus(isLoading: showLoader));

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

  Future<void> addToWatchlist() async {
    _updateStatus(DetailsBaseInitStatus(isLoading: true));

    await safeCall(
      () => _watchUseCase.addToWatchlist(state.data.toShortData()),
      onResult: (r) => _handleResult(r, () {
        state = state.copyWith(
          status: AddedToWatchlistStatus(),
          data: state.data.copyWith(isInWatchlist: true) as T,
        );
      }),
    );
  }

  Future<void> addToWatched(int userRating) async {
    _updateStatus(DetailsBaseInitStatus(isLoading: true));

    final data =
        state.data.copyWith(isWatched: true, userRating: userRating) as T;

    await safeCall(
      () => _watchUseCase.addToWatched(data.toShortData()),
      onResult: (r) => _handleResult(r, () {
        state = state.copyWith(
          status: AddedToWatchedStatus(),
          data: data,
        );
      }),
    );
  }

  Future<void> removeFromWatchlist() async {
    _updateStatus(DetailsBaseInitStatus(isLoading: true));

    await safeCall(
      () => _watchUseCase.removeFromWatchlist(state.data.id),
      onResult: (r) => _handleResult(r, () {
        state = state.copyWith(
          status: RemovedFromWatchlistStatus(),
          data: state.data.copyWith(isInWatchlist: false) as T,
        );
      }),
    );
  }

  Future<void> removeFromWatched() async {
    _updateStatus(DetailsBaseInitStatus(isLoading: true));

    await safeCall(
      () => _watchUseCase.removeFromWatched(state.data.id),
      onResult: (r) => _handleResult(r, () {
        state = state.copyWith(
          status: RemovedFromWatchedStatus(),
          data: state.data.copyWith(userRating: 0, isWatched: false) as T,
        );
      }),
    );
  }

  void _handleResult(Result<void>? result, VoidCallback onSuccess) {
    result?.fold((error) {
      _updateStatus(DetailsBaseInitStatus(errorMessage: error.message));
    }, (_) => onSuccess());
  }

  void updateCurrentTab(DetailsTab tab) {
    if (tab == state.currentTab) return;

    state = state.copyWith(currentTab: tab);
  }

  void _updateStatus(DetailsStatus status) {
    state = state.copyWith(status: status);
  }
}

extension _MediaToShortMapper on MediaData {
  S toShortData<S extends MediaShortData>() {
    return switch (this) {
      MovieData d => MovieShortData(
          id: d.id,
          posterUrl: d.posterUrl,
          genres: d.genres,
          premiereDate: d.premiereDate,
          title: d.title,
          tmdbRating: d.tmdbRating,
          userRating: d.userRating,
          isInWatchlist: d.isInWatchlist,
          isWatched: d.isWatched,
        ),
      SeriesData d => SeriesShortData(
          id: d.id,
          posterUrl: d.posterUrl,
          genres: d.genres,
          premiereDate: d.premiereDate,
          title: d.title,
          tmdbRating: d.tmdbRating,
          userRating: d.userRating,
          isInWatchlist: d.isInWatchlist,
          isWatched: d.isWatched,
        ),
      _ => throw Exception('Unknown media type')
    } as S;
  }
}
