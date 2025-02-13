part of 'details_view_model.dart';

typedef DetailsSeriesState = DetailsState<SeriesData>;

typedef DetailsSeriesVSP
    = AFSP<DetailsSeriesViewModel, DetailsSeriesState, int>;

/// {@category StateManagement}
///
/// A provider for the [DetailsSeriesViewModel] class.
final detailsSeriesViewModelPr = AutoDisposeNotifierProvider.family<
    DetailsSeriesViewModel, DetailsSeriesState, int>(
  DetailsSeriesViewModel.new,
);

/// {@category StateManagement}
///
/// A view model for managing `details_series`-specific logic and state.
///
/// This class is responsible for coordinating `details_series` behavior and interacting with the UI.
final class DetailsSeriesViewModel extends _DetailsViewModel<SeriesData> {
  @override
  DetailsSeriesState build(arg) {
    _detailsUseCase = ref.read(detailsSeriesUseCasePr);

    ref.onDispose(cancelSafeOperations);
    scheduleCall(loadInitialData);

    return DetailsSeriesState(
      data: SeriesData(
        id: arg,
        premiereDate: DateTime.now(),
      ),
    );
  }
}
