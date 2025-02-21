import '../../dto/movie/movie_rate_filter_data_dto.dart';
import '../../dto/movie/movies_response_data_dto.dart';
import '../../dto/series/series_rate_filter_data_dto.dart';
import '../../dto/series/series_response_data_dto.dart';

abstract interface class HomeRemoteDataSource {
  Future<MoviesResponseDataDto> getSuggestedMovies(
    MovieRateFilterDataDto filter,
  );

  Future<MoviesResponseDataDto> getNowPlayingMovies({required int page});

  Future<MoviesResponseDataDto> getUpcomingMovies({required int page});

  Future<MoviesResponseDataDto> getTopRatedMovies({required int page});

  Future<MoviesResponseDataDto> getPopularMovies({required int page});

  Future<SeriesResponseDataDto> getSuggestedSeries(
    SeriesRateFilterDataDto filter,
  );

  Future<SeriesResponseDataDto> getAiringTodaySeries({required int page});

  Future<SeriesResponseDataDto> getOnTheAirSeries({required int page});

  Future<SeriesResponseDataDto> getTopRatedSeries({required int page});

  Future<SeriesResponseDataDto> getPopularSeries({required int page});
}
