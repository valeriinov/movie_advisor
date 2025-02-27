import 'package:flutter_utils/flutter_utils.dart';

import '../dto/general_exceptions.dart';
import '../dto/movie/movie_short_data_dto.dart';
import '../dto/series/series_short_data_dto.dart';
import '../local/app_local_database.dart';
import '../local/utils/ext/media_table_mapper.dart';
import '../network/services/connectivity_service.dart';
import '../network/services/media_service.dart';
import '../repositories/media_sync_data_source.dart';

class ImplMediaSyncDataSource implements MediaSyncDataSource {
  static const _logTitle = 'MEDIA SYNC DATA SOURCE LOG';

  final AppLocalDatabase _localDatabase;
  final MediaService _remoteMediaService;
  final ConnectivityService _connectivity;

  ImplMediaSyncDataSource({
    required AppLocalDatabase localDatabase,
    required MediaService remoteMediaService,
    required ConnectivityService connectivity,
  }) : _localDatabase = localDatabase,
       _remoteMediaService = remoteMediaService,
       _connectivity = connectivity;

  @override
  Future<void> syncMovies() async {
    final isOnline = await _connectivity.isOnline();

    if (!isOnline) {
      debugLog('Offline, skipping sync', name: _logTitle);
      return;
    }

    try {
      final remoteMovies = await _remoteMediaService.getMovies();
      final localMoviesList =
          await _localDatabase.select(_localDatabase.moviesTable).get();

      final Map<int, MoviesTableData> localMoviesMap = {
        for (final movie in localMoviesList) movie.tmdbId: movie,
      };
      final Map<int, MovieShortDataDto> remoteMoviesMap = {
        for (final movie in remoteMovies) movie.id!: movie,
      };

      await _syncMoviesFromRemoteToLocal(remoteMovies, localMoviesMap);

      await _syncMoviesFromLocalToRemote(localMoviesList, remoteMoviesMap);
    } catch (e, stacktrace) {
      debugLog('Error during sync: $e\n$stacktrace', name: _logTitle);
      throw SyncDataException(error: e);
    }
  }

  Future<void> _syncMoviesFromRemoteToLocal(
    List<MovieShortDataDto> remoteMovies,
    Map<int, MoviesTableData> localMoviesMap,
  ) async {
    for (final remoteMovie in remoteMovies) {
      final localMovie = localMoviesMap[remoteMovie.id];

      localMovie != null
          ? await _updateLocalMovieIfNeeded(remoteMovie, localMovie)
          : await _insertLocalMovie(remoteMovie);
    }
  }

  Future<void> _updateLocalMovieIfNeeded(
    MovieShortDataDto remoteMovie,
    MoviesTableData localMovie,
  ) async {
    // If updatedAt is missing in remote db, assume it's a new record
    // and treat it as freshly updated to avoid ignoring it.
    final remoteUpdatedAt = remoteMovie.updatedAt ?? DateTime.now();

    if (remoteUpdatedAt.isBefore(localMovie.updatedAt)) return;

    await _localDatabase
        .into(_localDatabase.moviesTable)
        .insertOnConflictUpdate(remoteMovie.toTableData());
  }

  Future<void> _insertLocalMovie(MovieShortDataDto remoteMovie) async {
    await _localDatabase
        .into(_localDatabase.moviesTable)
        .insert(remoteMovie.toTableData());
  }

  Future<void> _syncMoviesFromLocalToRemote(
    List<MoviesTableData> localMoviesList,
    Map<int, MovieShortDataDto> remoteMoviesMap,
  ) async {
    for (final localMovie in localMoviesList) {
      final remoteMovie = remoteMoviesMap[localMovie.tmdbId];

      remoteMovie != null
          ? await _updateRemoteMovieIfNeeded(localMovie, remoteMovie)
          : await _insertRemoteMovie(localMovie);
    }
  }

  Future<void> _updateRemoteMovieIfNeeded(
    MoviesTableData localMovie,
    MovieShortDataDto remoteMovie,
  ) async {
    // If updatedAt is missing in remote db, set it to the earliest possible date
    // to ensure any local record will be considered more recent.
    final remoteUpdatedAt =
        remoteMovie.updatedAt ?? DateTime.fromMillisecondsSinceEpoch(0);

    if (localMovie.updatedAt.isBefore(remoteUpdatedAt)) return;

    await _remoteMediaService.updateOrInsertMovie(localMovie.toDto());
  }

  Future<void> _insertRemoteMovie(MoviesTableData localMovie) async {
    await _remoteMediaService.updateOrInsertMovie(localMovie.toDto());
  }

  @override
  Future<void> syncSeries() async {
    final isOnline = await _connectivity.isOnline();

    if (!isOnline) {
      debugLog('Offline, skipping sync', name: _logTitle);
      return;
    }

    try {
      final remoteSeries = await _remoteMediaService.getSeries();
      final localSeriesList =
          await _localDatabase.select(_localDatabase.seriesTable).get();

      final Map<int, SeriesTableData> localSeriesMap = {
        for (final series in localSeriesList) series.tmdbId: series,
      };
      final Map<int, SeriesShortDataDto> remoteSeriesMap = {
        for (final series in remoteSeries) series.id!: series,
      };

      await _syncSeriesFromRemoteToLocal(remoteSeries, localSeriesMap);

      await _syncSeriesFromLocalToRemote(localSeriesList, remoteSeriesMap);
    } catch (e, stacktrace) {
      debugLog('Error during sync: $e\n$stacktrace', name: _logTitle);
      throw SyncDataException(error: e);
    }
  }

  Future<void> _syncSeriesFromRemoteToLocal(
    List<SeriesShortDataDto> remoteSeries,
    Map<int, SeriesTableData> localSeriesMap,
  ) async {
    for (final remoteSeriesItem in remoteSeries) {
      final localSeriesItem = localSeriesMap[remoteSeriesItem.id];

      localSeriesItem != null
          ? await _updateLocalSeriesIfNeeded(remoteSeriesItem, localSeriesItem)
          : await _insertLocalSeries(remoteSeriesItem);
    }
  }

  Future<void> _updateLocalSeriesIfNeeded(
    SeriesShortDataDto remoteSeriesItem,
    SeriesTableData localSeriesItem,
  ) async {
    // If updatedAt is missing in remote db, assume it's a new record
    // and treat it as freshly updated to avoid ignoring it.
    final remoteUpdatedAt = remoteSeriesItem.updatedAt ?? DateTime.now();

    if (remoteUpdatedAt.isBefore(localSeriesItem.updatedAt)) return;

    await _localDatabase
        .into(_localDatabase.seriesTable)
        .insertOnConflictUpdate(remoteSeriesItem.toTableData());
  }

  Future<void> _insertLocalSeries(SeriesShortDataDto remoteSeriesItem) async {
    await _localDatabase
        .into(_localDatabase.seriesTable)
        .insert(remoteSeriesItem.toTableData());
  }

  Future<void> _syncSeriesFromLocalToRemote(
    List<SeriesTableData> localSeriesList,
    Map<int, SeriesShortDataDto> remoteSeriesMap,
  ) async {
    for (final localSeriesItem in localSeriesList) {
      final remoteSeriesItem = remoteSeriesMap[localSeriesItem.tmdbId];

      remoteSeriesItem != null
          ? await _updateRemoteSeriesIfNeeded(localSeriesItem, remoteSeriesItem)
          : await _insertRemoteSeries(localSeriesItem);
    }
  }

  Future<void> _updateRemoteSeriesIfNeeded(
    SeriesTableData localSeriesItem,
    SeriesShortDataDto remoteSeriesItem,
  ) async {
    // If updatedAt is missing in remote db, set it to the earliest possible date
    // to ensure any local record will be considered more recent.
    final remoteUpdatedAt =
        remoteSeriesItem.updatedAt ?? DateTime.fromMillisecondsSinceEpoch(0);

    if (localSeriesItem.updatedAt.isBefore(remoteUpdatedAt)) return;

    await _remoteMediaService.updateOrInsertSeries(localSeriesItem.toDto());
  }

  Future<void> _insertRemoteSeries(SeriesTableData localSeriesItem) async {
    await _remoteMediaService.updateOrInsertSeries(localSeriesItem.toDto());
  }
}
