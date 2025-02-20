part of 'watched_view_model.dart';

/// {@category StateManagement}
///
/// A type alias for [WatchedState] with [SeriesShortData].
typedef WatchedSeriesState = WatchedState<SeriesShortData>;

/// {@category StateManagement}
///
/// A type alias for [ASP] with [WatchedSeriesViewModel] and [WatchedSeriesState].
typedef WatchedSeriesVSP = ASP<WatchedSeriesViewModel, WatchedSeriesState>;

/// {@category StateManagement}
///
/// A provider for the [WatchedSeriesViewModel] class.
final watchedSeriesViewModelPr =
    AutoDisposeNotifierProvider<WatchedSeriesViewModel, WatchedSeriesState>(
      WatchedSeriesViewModel.new,
    );

/// {@category StateManagement}
///
/// A view model for managing `watched_series`-specific logic and state.
///
/// This class is responsible for coordinating `watched_series` behavior and interacting with the UI.
final class WatchedSeriesViewModel extends WatchedViewModel<SeriesShortData> {
  @override
  WatchedSeriesState build() {
    _watchUseCase = ref.read(watchSeriesUseCasePr);

    _watchChangesSubscription = _watchUseCase.watchChanges().listen(
      _handleWatchChanges,
    );

    ref.onDispose(() {
      cancelSafeOperations();
      _watchChangesSubscription.cancel();
    });

    scheduleCall(loadInitialData);

    return WatchedSeriesState();
  }
}
