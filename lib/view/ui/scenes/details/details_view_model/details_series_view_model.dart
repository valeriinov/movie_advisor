part of 'details_view_model.dart';

/// {@category StateManagement}
///
/// A type alias for [DetailsState] with [SeriesData].
typedef DetailsSeriesState = DetailsState<SeriesData>;

/// {@category StateManagement}
///
/// A type alias for [VSP] with [DetailsSeriesViewModel], [DetailsSeriesState].
typedef DetailsSeriesVSP = VSP<DetailsSeriesViewModel, DetailsSeriesState>;

/// {@category StateManagement}
///
/// A provider for the [DetailsSeriesViewModel] class.
final detailsSeriesViewModelPr = NotifierProvider.family
    .autoDispose<DetailsSeriesViewModel, DetailsSeriesState, int>(
      DetailsSeriesViewModel.new,
    );

/// {@category StateManagement}
///
/// A view model for managing `details_series`-specific logic and state.
///
/// This class is responsible for coordinating `details_series` behavior and interacting with the UI.
final class DetailsSeriesViewModel
    extends DetailsViewModel<SeriesData, SeriesShortData> {
  DetailsSeriesViewModel(super.arg);

  @override
  DetailsSeriesState build() {
    _detailsUseCase = ref.read(detailsSeriesUseCasePr);
    _watchUseCase = ref.read(watchSeriesUseCasePr);

    ref.onDispose(cancelSafeOperations);
    scheduleCall(loadInitialData);

    return DetailsSeriesState(
      data: SeriesData(id: _arg, premiereDate: DateTime.now()),
    );
  }
}
