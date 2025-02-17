import '../dto/movie/movie_data_dto.dart';
import '../dto/movie/movie_short_data_dto.dart';
import '../dto/movie/movies_response_data_dto.dart';
import '../dto/series/series_data_dto.dart';
import '../dto/series/series_response_data_dto.dart';
import '../dto/series/series_short_data_dto.dart';
import '../local/app_local_database.dart';
import '../local/utils/ext/media_table_mapper.dart';
import '../repositories/media_local_data_source.dart';
import '../utils/media_remote_local_merger/media_merger.dart';

class ImplMediaLocalDataSource implements MediaLocalDataSource {
  final AppLocalDatabase _database;
  final MediaMerger _mediaMerger;

  ImplMediaLocalDataSource({
    required AppLocalDatabase database,
    required MediaMerger mediaMerger,
  })  : _database = database,
        _mediaMerger = mediaMerger;

  @override
  Future<MoviesResponseDataDto> addLocalDataToMoviesResponse(
      MoviesResponseDataDto response) async {
    final remoteMovies = response.results ?? [];
    final ids = remoteMovies.map((e) => e.id).nonNulls.toList();

    final List<MovieShortDataDto> localMovies =
        ids.isNotEmpty ? await getMoviesByIds(ids) : [];

    return response.copyWith(
      results: _mediaMerger.mergeMoviesList(remoteMovies, localMovies),
    );
  }

  @override
  Future<SeriesResponseDataDto> addLocalDataToSeriesResponse(
      SeriesResponseDataDto response) async {
    final remoteSeries = response.results ?? [];
    final ids = remoteSeries.map((e) => e.id).nonNulls.toList();

    final List<SeriesShortDataDto> localSeries =
        ids.isNotEmpty ? await getSeriesByIds(ids) : [];

    return response.copyWith(
      results: _mediaMerger.mergeSeriesList(remoteSeries, localSeries),
    );
  }

  @override
  Future<MovieDataDto> addLocalDataToMovie(MovieDataDto movie) async {
    final localMovie = (await getMoviesByIds([movie.id ?? -1])).firstOrNull;

    return localMovie != null
        ? _mediaMerger.mergeMovie(movie, localMovie)
        : movie;
  }

  @override
  Future<SeriesDataDto> addLocalDataToSeries(SeriesDataDto series) async {
    final localSeries = (await getSeriesByIds([series.id ?? -1])).firstOrNull;

    return localSeries != null
        ? _mediaMerger.mergeSeries(series, localSeries)
        : series;
  }

  @override
  Future<List<MovieShortDataDto>> getMoviesByIds(List<int> ids) async {
    final query = _database.select(_database.moviesTable)
      ..where((tbl) => tbl.tmdbId.isIn(ids));

    final movies = await query.get();

    return movies.map((m) => m.toDto()).toList();
  }

  @override
  Future<List<SeriesShortDataDto>> getSeriesByIds(List<int> ids) async {
    final query = _database.select(_database.seriesTable)
      ..where((tbl) => tbl.tmdbId.isIn(ids));

    final series = await query.get();

    return series.map((s) => s.toDto()).toList();
  }
}
