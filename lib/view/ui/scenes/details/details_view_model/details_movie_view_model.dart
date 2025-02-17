part of 'details_view_model.dart';

typedef DetailsMovieState = DetailsState<MovieData>;

typedef DetailsMovieVSP = AFSP<DetailsMovieViewModel, DetailsMovieState, int>;

/// {@category StateManagement}
///
/// A provider for the [DetailsMovieViewModel] class.
final detailsMovieViewModelPr = AutoDisposeNotifierProvider.family<
    DetailsMovieViewModel, DetailsMovieState, int>(
  DetailsMovieViewModel.new,
);

/// {@category StateManagement}
///
/// A view model for managing `details_movie`-specific logic and state.
///
/// This class is responsible for coordinating `details_movie` behavior and interacting with the UI.
final class DetailsMovieViewModel
    extends _DetailsViewModel<MovieData, MovieShortData> {
  @override
  DetailsMovieState build(arg) {
    _detailsUseCase = ref.read(detailsMovieUseCasePr);
    _watchUseCase = ref.read(watchMoviesUseCasePr);

    ref.onDispose(cancelSafeOperations);
    scheduleCall(loadInitialData);

    return DetailsMovieState(
      data: MovieData(
        id: arg,
        premiereDate: DateTime.now(),
      ),
    );
  }
}
