import '../dto/movie/movie_data_dto.dart';
import '../dto/movie/movie_short_data_dto.dart';
import '../dto/movie/movies_response_data_dto.dart';
import '../dto/series/series_data_dto.dart';
import '../dto/series/series_response_data_dto.dart';
import '../dto/series/series_short_data_dto.dart';

abstract interface class MediaLocalDataSource {
  Future<MoviesResponseDataDto> addLocalDataToMoviesResponse(
      MoviesResponseDataDto response);

  Future<SeriesResponseDataDto> addLocalDataToSeriesResponse(
      SeriesResponseDataDto response);

  Future<MovieDataDto> addLocalDataToMovie(MovieDataDto movie);

  Future<SeriesDataDto> addLocalDataToSeries(SeriesDataDto series);

  Future<List<MovieShortDataDto>> getMoviesByIds(List<int> ids);

  Future<List<SeriesShortDataDto>> getSeriesByIds(List<int> ids);
}
