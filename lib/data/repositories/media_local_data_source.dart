import '../dto/movie/movie_data_dto.dart';
import '../dto/movie/movie_rate_filter_data_dto.dart';
import '../dto/movie/movie_short_data_dto.dart';
import '../dto/movie/movies_response_data_dto.dart';
import '../dto/person/person_mov_cred_data_dto.dart';
import '../dto/person/person_ser_cred_data_dto.dart';
import '../dto/series/series_data_dto.dart';
import '../dto/series/series_rate_filter_data_dto.dart';
import '../dto/series/series_response_data_dto.dart';
import '../dto/series/series_short_data_dto.dart';

abstract interface class MediaLocalDataSource {
  Future<MoviesResponseDataDto> addLocalDataToMoviesResponse(
    MoviesResponseDataDto response,
  );

  Future<SeriesResponseDataDto> addLocalDataToSeriesResponse(
    SeriesResponseDataDto response,
  );

  Future<MovieDataDto> addLocalDataToMovie(MovieDataDto movie);

  Future<SeriesDataDto> addLocalDataToSeries(SeriesDataDto series);

  Future<List<MovieShortDataDto>> getMoviesByIds(List<int> ids);

  Future<List<SeriesShortDataDto>> getSeriesByIds(List<int> ids);

  Future<List<int>> getMoviesIds({
    bool includeWatched = true,
    bool includeWatchlist = true,
  });

  Future<List<int>> getSeriesIds({
    bool includeWatched = true,
    bool includeWatchlist = true,
  });

  Future<MovieRateFilterDataDto> getMovieRateFilter();

  Future<SeriesRateFilterDataDto> getSeriesRateFilter();

  Future<List<PersonMovCredDataDto>> addLocalDataToPersonMovieCredits(
    List<PersonMovCredDataDto> credits,
  );

  Future<List<PersonSerCredDataDto>> addLocalDataToPersonSeriesCredits(
    List<PersonSerCredDataDto> credits,
  );
}
