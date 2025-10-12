part of 'details_view_model.dart';

/// {@category StateManagement}
///
/// A type alias for [DetailsState] with [MovieData].
typedef DetailsMovieState = DetailsState<MovieData>;

/// {@category StateManagement}
///
/// A type alias for [VSP] with [DetailsMovieViewModel], [DetailsMovieState]
typedef DetailsMovieVSP = VSP<DetailsMovieViewModel, DetailsMovieState>;

/// {@category StateManagement}
///
/// A provider for the [DetailsMovieViewModel] class.
final detailsMovieViewModelPr = NotifierProvider.family
    .autoDispose<DetailsMovieViewModel, DetailsMovieState, int>(
      DetailsMovieViewModel.new,
    );

/// {@category StateManagement}
///
/// A view model for managing `details_movie`-specific logic and state.
///
/// This class is responsible for coordinating `details_movie` behavior and interacting with the UI.
final class DetailsMovieViewModel
    extends DetailsViewModel<MovieData, MovieShortData> {
  DetailsMovieViewModel(super.arg);

  @override
  DetailsMovieState build() {
    _detailsUseCase = ref.read(detailsMovieUseCasePr);
    _watchUseCase = ref.read(watchMoviesUseCasePr);

    ref.onDispose(cancelSafeOperations);
    scheduleCall(loadInitialData);

    return DetailsMovieState(
      data: MovieData(id: _arg, premiereDate: DateTime.now()),
    );
  }
}
