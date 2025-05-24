part of 'details_view_model.dart';

/// {@category StateManagement}
///
/// A type alias for [DetailsState] with [SeriesData].
typedef DetailsSeriesState = DetailsState<SeriesData>;

/// {@category StateManagement}
///
/// A type alias for [AFSP] with [DetailsSeriesViewModel], [DetailsSeriesState], and an integer ID.
typedef DetailsSeriesVSP =
    AFSP<DetailsSeriesViewModel, DetailsSeriesState, int>;

/// {@category StateManagement}
///
/// A provider for the [DetailsSeriesViewModel] class.
final detailsSeriesViewModelPr =
    AutoDisposeNotifierProvider.family<
      DetailsSeriesViewModel,
      DetailsSeriesState,
      int
    >(DetailsSeriesViewModel.new);

/// {@category StateManagement}
///
/// A view model for managing `details_series`-specific logic and state.
///
/// This class is responsible for coordinating `details_series` behavior and interacting with the UI.
final class DetailsSeriesViewModel
    extends DetailsViewModel<SeriesData, SeriesShortData> {
  @override
  DetailsSeriesState build(arg) {
    _detailsUseCase = ref.read(detailsSeriesUseCasePr);
    _watchUseCase = ref.read(watchSeriesUseCasePr);

    ref.onDispose(cancelSafeOperations);
    scheduleCall(loadInitialData);

    return DetailsSeriesState(
      data: SeriesData(id: arg, premiereDate: DateTime.now()),
    );
  }
}
