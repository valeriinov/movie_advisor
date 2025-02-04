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
  List<MovieDataDto> handleMoviesImages(List<MovieDataDto> movies) {
    return movies
        .map(
          (m) => m.copyWith(
            backdropPath: _getBackdropImageUrl(m.backdropPath),
            posterPath: _getPosterImageUrl(m.posterPath),
          ),
        )
        .toList();
  }

  @override
  List<SeriesDataDto> handleSeriesImages(List<SeriesDataDto> series) {
    return series
        .map(
          (s) => s.copyWith(
            backdropPath: _getBackdropImageUrl(s.backdropPath),
            posterPath: _getPosterImageUrl(s.posterPath),
          ),
        )
        .toList();
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
