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
import '../repositories/settings_provider.dart';
import '../utils/media_merger/media_merger.dart';

class ImplMediaLocalDataSource implements MediaLocalDataSource {
  final AppLocalDatabase _database;
  final MediaMerger _mediaMerger;
  final SettingsProvider _settingsProvider;

  ImplMediaLocalDataSource({
    required AppLocalDatabase database,
    required MediaMerger mediaMerger,
    required SettingsProvider settingsProvider,
  }) : _database = database,
       _mediaMerger = mediaMerger,
       _settingsProvider = settingsProvider;

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

    return movies.map((m) => m.toDto(_settingsProvider.currentLocale)).toList();
  }

  @override
  Future<List<SeriesShortDataDto>> getSeriesByIds(List<int> ids) async {
    final query = _database.select(_database.seriesTable)
      ..where((tbl) => tbl.tmdbId.isIn(ids));

    final series = await query.get();

    return series.map((s) => s.toDto(_settingsProvider.currentLocale)).toList();
  }

  @override
  Future<MovieRateFilterDataDto> getMovieRateFilter() async {
    final excludeIds = await _fetchExcludedMovieIds();
    final movieList = await _fetchFilteredMoviesData();

    final targetGenres = _calculateTargetMovieGenres(movieList);
    final targetCountries = _calculateTopMovieCountries(movieList);

    return MovieRateFilterDataDto(
      excludeIds: excludeIds,
      targetGenres: targetGenres,
      targetCountries: targetCountries,
    );
  }

  Future<List<int>> _fetchExcludedMovieIds() async {
    final query = _database.select(_database.moviesTable)..where(
      (tbl) => tbl.isWatched.equals(true) | tbl.isInWatchlist.equals(true),
    );

    final movies = await query.get();

    return movies.map((movie) => movie.tmdbId).toList();
  }

  Future<List<MovieShortDataDto>> _fetchFilteredMoviesData() async {
    final query = _database.select(_database.moviesTable)..where(
      (tbl) =>
          tbl.isWatched.equals(true) &
          tbl.userRating.isBiggerThanValue(DbConstants.minTargetUserRate),
    );

    final movies = await query.get();

    return movies.map((m) => m.toDto(_settingsProvider.currentLocale)).toList();
  }

  List<MovieGenreDto> _calculateTargetMovieGenres(
    List<MovieShortDataDto> movieList,
  ) {
    final frequency = movieList
        .expand((movie) => movie.genres ?? <MovieGenreDto>[])
        .where((genre) => genre != MovieGenreDto.none)
        .fold<Map<MovieGenreDto, int>>({}, (map, genre) {
          map[genre] = (map[genre] ?? 0) + 1;
          return map;
        });

    final topGenres =
        frequency.entries.toList()..sort((a, b) => b.value.compareTo(a.value));

    return topGenres
        .take(DbConstants.rateFilterGenresCount)
        .map((entry) => entry.key)
        .toList();
  }

  List<String> _calculateTopMovieCountries(List<MovieShortDataDto> movieList) {
    final frequency = movieList
        .expand((movie) => movie.originCountry ?? <String>[])
        .fold<Map<String, int>>({}, (map, country) {
          map[country] = (map[country] ?? 0) + 1;
          return map;
        });

    final topCountries =
        frequency.entries.toList()..sort((a, b) => b.value.compareTo(a.value));

    return topCountries
        .take(DbConstants.rateFilterCountriesCount)
        .map((entry) => entry.key)
        .toList();
  }

  @override
  Future<SeriesRateFilterDataDto> getSeriesRateFilter() async {
    final excludeIds = await _fetchExcludedSeriesIds();
    final seriesList = await _fetchFilteredSeriesData();

    final targetGenres = _calculateTargetSeriesGenres(seriesList);
    final targetCountries = _calculateTopSeriesCountries(seriesList);

    return SeriesRateFilterDataDto(
      excludeIds: excludeIds,
      targetGenres: targetGenres,
      targetCountries: targetCountries,
    );
  }

  Future<List<int>> _fetchExcludedSeriesIds() async {
    final query = _database.select(_database.seriesTable)..where(
      (tbl) => tbl.isWatched.equals(true) | tbl.isInWatchlist.equals(true),
    );

    final seriesList = await query.get();

    return seriesList.map((series) => series.tmdbId).toList();
  }

  Future<List<SeriesShortDataDto>> _fetchFilteredSeriesData() async {
    final query = _database.select(_database.seriesTable)..where(
      (tbl) =>
          tbl.isWatched.equals(true) &
          tbl.userRating.isBiggerThanValue(DbConstants.minTargetUserRate),
    );

    final seriesList = await query.get();

    return seriesList
        .map((s) => s.toDto(_settingsProvider.currentLocale))
        .toList();
  }

  List<SeriesGenreDto> _calculateTargetSeriesGenres(
    List<SeriesShortDataDto> seriesList,
  ) {
    final frequency = seriesList
        .expand((series) => series.genres ?? <SeriesGenreDto>[])
        .where((genre) => genre != SeriesGenreDto.none)
        .fold<Map<SeriesGenreDto, int>>({}, (map, genre) {
          map[genre] = (map[genre] ?? 0) + 1;
          return map;
        });

    final topGenres =
        frequency.entries.toList()..sort((a, b) => b.value.compareTo(a.value));

    return topGenres
        .take(DbConstants.rateFilterGenresCount)
        .map((entry) => entry.key)
        .toList();
  }

  List<String> _calculateTopSeriesCountries(
    List<SeriesShortDataDto> seriesList,
  ) {
    final frequency = seriesList
        .expand((series) => series.originCountry ?? <String>[])
        .fold<Map<String, int>>({}, (map, country) {
          map[country] = (map[country] ?? 0) + 1;
          return map;
        });

    final topCountries =
        frequency.entries.toList()..sort((a, b) => b.value.compareTo(a.value));

    return topCountries
        .take(DbConstants.rateFilterCountriesCount)
        .map((entry) => entry.key)
        .toList();
  }
}
