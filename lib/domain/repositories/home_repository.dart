import '../entities/movie/movie_short_data.dart';
import '../entities/pagination/list_with_pagination_data.dart';
import '../entities/result.dart';
import '../entities/series/series_short_data.dart';

abstract interface class HomeRepository {
  Future<Result<ListWithPaginationData<MovieShortData>>> getSuggestedMovies();

  Future<Result<ListWithPaginationData<MovieShortData>>> getNowPlayingMovies(
      {required int page});

  Future<Result<ListWithPaginationData<MovieShortData>>> getUpcomingMovies(
      {required int page});

  Future<Result<ListWithPaginationData<MovieShortData>>> getTopRatedMovies(
      {required int page});

  Future<Result<ListWithPaginationData<MovieShortData>>> getPopularMovies(
      {required int page});

  Future<Result<ListWithPaginationData<SeriesShortData>>> getSuggestedSeries();

  Future<Result<ListWithPaginationData<SeriesShortData>>> getAiringTodaySeries(
      {required int page});

  Future<Result<ListWithPaginationData<SeriesShortData>>> getOnTheAirSeries(
      {required int page});

  Future<Result<ListWithPaginationData<SeriesShortData>>> getTopRatedSeries(
      {required int page});

  Future<Result<ListWithPaginationData<SeriesShortData>>> getPopularSeries(
      {required int page});
}
