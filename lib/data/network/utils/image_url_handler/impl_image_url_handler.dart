import '../../../dto/movie/movie_data_dto.dart';
import '../../../dto/series/series_data_dto.dart';
import '../../constants/movies_api_constants.dart';
import '../../env_provider/env_provider.dart';
import 'image_url_handler.dart';

class ImplImageUrlHandler implements ImageUrlHandler {
  final EnvProvider _envProvider;

  ImplImageUrlHandler({
    required EnvProvider envProvider,
  }) : _envProvider = envProvider;

  @override
  MovieDataDto handleMovieImages(MovieDataDto movie) {
    return _handleMovieImages(movie);
  }

  @override
  SeriesDataDto handleSeriesImages(SeriesDataDto series) {
    return _handleSeriesImages(series);
  }

  @override
  List<MovieDataDto> handleMoviesListImages(List<MovieDataDto> movies) {
    return movies.map(_handleMovieImages).toList();
  }

  @override
  List<SeriesDataDto> handleSeriesListImages(List<SeriesDataDto> series) {
    return series.map(_handleSeriesImages).toList();
  }

  MovieDataDto _handleMovieImages(MovieDataDto movie) {
    return movie.copyWith(
      backdropPath: _getBackdropImageUrl(movie.backdropPath),
      posterPath: _getPosterImageUrl(movie.posterPath),
    );
  }

  SeriesDataDto _handleSeriesImages(SeriesDataDto series) {
    return series.copyWith(
      backdropPath: _getBackdropImageUrl(series.backdropPath),
      posterPath: _getPosterImageUrl(series.posterPath),
    );
  }

  String _getBackdropImageUrl(String? backdropPath) {
    return backdropPath != null
        ? '${_envProvider.imageUrl}${MoviesApiConstants.backdropSize}$backdropPath'
        : '';
  }

  String _getPosterImageUrl(String? posterPath) {
    return posterPath != null
        ? '${_envProvider.imageUrl}${MoviesApiConstants.posterSize}$posterPath'
        : '';
  }
}
