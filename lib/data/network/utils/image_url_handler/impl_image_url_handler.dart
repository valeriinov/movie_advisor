import '../../../dto/credits/credits_data_dto.dart';
import '../../../dto/movie/movie_data_dto.dart';
import '../../../dto/person/person_credits_data_dto.dart';
import '../../../dto/person/person_data_dto.dart';
import '../../../dto/person/person_mov_cred_data_dto.dart';
import '../../../dto/person/person_ser_cred_data_dto.dart';
import '../../../dto/series/series_data_dto.dart';
import '../../constants/movies_api_constants.dart';
import '../../env_provider/env_provider.dart';
import 'image_url_handler.dart';

class ImplImageUrlHandler implements ImageUrlHandler {
  final EnvProvider _envProvider;

  ImplImageUrlHandler({required EnvProvider envProvider})
    : _envProvider = envProvider;

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

  @override
  PersonDataDto handlePersonImages(PersonDataDto person) {
    return person.copyWith(
      profilePath: _getPersonImageUrl(person.profilePath),
      movieCredits: _handlePersonMovieCreditsImages(person.movieCredits),
      seriesCredits: _handlePersonSeriesCreditsImages(person.seriesCredits),
    );
  }

  PersonCreditsMovieDto? _handlePersonMovieCreditsImages(
    PersonCreditsMovieDto? credits,
  ) {
    return credits?.copyWith(
      cast: _handleMovieCreditsImages(credits.cast),
      crew: _handleMovieCreditsImages(credits.crew),
    );
  }

  List<PersonMovCredDataDto> _handleMovieCreditsImages(
    List<PersonMovCredDataDto>? credits,
  ) {
    return credits
            ?.map(
              (credit) => credit.copyWith(
                posterPath: _getPosterImageUrl(credit.posterPath),
              ),
            )
            .toList() ??
        [];
  }

  PersonCreditsSeriesDto? _handlePersonSeriesCreditsImages(
    PersonCreditsSeriesDto? credits,
  ) {
    return credits?.copyWith(
      cast: _handleSeriesCreditsImages(credits.cast),
      crew: _handleSeriesCreditsImages(credits.crew),
    );
  }

  List<PersonSerCredDataDto> _handleSeriesCreditsImages(
    List<PersonSerCredDataDto>? credits,
  ) {
    return credits
            ?.map(
              (credit) => credit.copyWith(
                posterPath: _getPosterImageUrl(credit.posterPath),
              ),
            )
            .toList() ??
        [];
  }

  MovieDataDto _handleMovieImages(MovieDataDto movie) {
    return movie.copyWith(
      backdropPath: _getBackdropImageUrl(movie.backdropPath),
      posterPath: _getPosterImageUrl(movie.posterPath),
      credits: _handleCreditsImages(movie.credits),
    );
  }

  SeriesDataDto _handleSeriesImages(SeriesDataDto series) {
    return series.copyWith(
      backdropPath: _getBackdropImageUrl(series.backdropPath),
      posterPath: _getPosterImageUrl(series.posterPath),
      credits: _handleCreditsImages(series.credits),
    );
  }

  CreditsDataDto? _handleCreditsImages(CreditsDataDto? credits) {
    return credits?.copyWith(
      cast: credits.cast
          ?.map(
            (cast) => cast.copyWith(
              profilePath: _getCreditsImageUrl(cast.profilePath),
            ),
          )
          .toList(),
      crew: credits.crew
          ?.map(
            (crew) => crew.copyWith(
              profilePath: _getCreditsImageUrl(crew.profilePath),
            ),
          )
          .toList(),
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

  String _getCreditsImageUrl(String? profilePath) {
    return profilePath != null
        ? '${_envProvider.imageUrl}${MoviesApiConstants.creditsSize}$profilePath'
        : '';
  }

  String _getPersonImageUrl(String? profilePath) {
    return profilePath != null
        ? '${_envProvider.imageUrl}${MoviesApiConstants.personSize}$profilePath'
        : '';
  }
}
