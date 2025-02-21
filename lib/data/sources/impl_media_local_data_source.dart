import 'package:collection/collection.dart';
import 'package:drift/drift.dart';

import '../../common/constants/db_constants.dart';
import '../dto/movie/movie_data_dto.dart';
import '../dto/movie/movie_genre_dto.dart';
import '../dto/movie/movie_rate_filter_data_dto.dart';
import '../dto/movie/movie_short_data_dto.dart';
import '../dto/movie/movies_response_data_dto.dart';
import '../dto/series/series_data_dto.dart';
import '../dto/series/series_genre_dto.dart';
import '../dto/series/series_rate_filter_data_dto.dart';
import '../dto/series/series_response_data_dto.dart';
import '../dto/series/series_short_data_dto.dart';
import '../local/app_local_database.dart';
import '../local/utils/ext/media_table_mapper.dart';
import '../repositories/media_local_data_source.dart';
import '../utils/media_merger/media_merger.dart';

class ImplMediaLocalDataSource implements MediaLocalDataSource {
  final AppLocalDatabase _database;
  final MediaMerger _mediaMerger;

  ImplMediaLocalDataSource({
    required AppLocalDatabase database,
    required MediaMerger mediaMerger,
  }) : _database = database,
       _mediaMerger = mediaMerger;

  @override
  Future<MoviesResponseDataDto> addLocalDataToMoviesResponse(
    MoviesResponseDataDto response,
  ) async {
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
    SeriesResponseDataDto response,
  ) async {
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

  @override
  Future<MovieRateFilterDataDto> getMovieRateFilter() async {
    final excludeIds = await _fetchExcludedMovieIds();
    final targetGenres = await _fetchTargetMovieGenres();

    return MovieRateFilterDataDto(
      excludeIds: excludeIds,
      targetGenres: targetGenres,
    );
  }

  Future<List<int>> _fetchExcludedMovieIds() async {
    final query = _database.select(_database.moviesTable)..where(
      (tbl) => tbl.isWatched.equals(true) | tbl.isInWatchlist.equals(true),
    );

    final movies = await query.get();

    return movies.map((movie) => movie.tmdbId).toList();
  }

  Future<List<MovieGenreDto>> _fetchTargetMovieGenres() async {
    final query = _database.select(_database.moviesTable)..where(
      (tbl) =>
          tbl.isWatched.equals(true) &
          tbl.userRating.isBiggerThanValue(DbConstants.minTargetUserRate),
    );

    final movies = await query.get();

    final genresSet =
        movies
            .map((movie) => movie.genres)
            .nonNulls
            .expand((genres) => genres)
            .toSet();

    genresSet.remove(MovieGenreDto.none);

    return genresSet.toList();
  }

  @override
  Future<SeriesRateFilterDataDto> getSeriesRateFilter() async {
    final excludeIds = await _fetchExcludedSeriesIds();
    final targetGenres = await _fetchTargetSeriesGenres();

    return SeriesRateFilterDataDto(
      excludeIds: excludeIds,
      targetGenres: targetGenres,
    );
  }

  Future<List<int>> _fetchExcludedSeriesIds() async {
    final query = _database.select(_database.seriesTable)..where(
      (tbl) => tbl.isWatched.equals(true) | tbl.isInWatchlist.equals(true),
    );

    final seriesList = await query.get();

    return seriesList.map((series) => series.tmdbId).toList();
  }

  Future<List<SeriesGenreDto>> _fetchTargetSeriesGenres() async {
    final query = _database.select(_database.seriesTable)..where(
      (tbl) =>
          tbl.isWatched.equals(true) &
          tbl.userRating.isBiggerThanValue(DbConstants.minTargetUserRate),
    );
    final seriesList = await query.get();

    final genresSet =
        seriesList
            .map((series) => series.genres)
            .nonNulls
            .expand((genres) => genres)
            .toSet();

    genresSet.remove(SeriesGenreDto.none);

    return genresSet.toList();
  }
}
