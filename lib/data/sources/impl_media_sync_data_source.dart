import 'package:drift/drift.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../dto/general_exceptions.dart';
import '../dto/movie/movie_short_data_dto.dart';
import '../dto/series/series_short_data_dto.dart';
import '../local/app_local_database.dart';
import '../local/utils/ext/media_table_mapper.dart';
import '../local/utils/ext/user_table_mapper.dart';
import '../network/services/auth_service.dart';
import '../network/services/connectivity_service.dart';
import '../network/services/media_service.dart';
import '../repositories/media_sync_data_source.dart';

class ImplMediaSyncDataSource implements MediaSyncDataSource {
  static const _logTitle = 'MEDIA SYNC DATA SOURCE LOG';

  final AppLocalDatabase _localDatabase;
  final MediaService _remoteMediaService;
  final ConnectivityService _connectivity;
  final AuthService _authService;

  ImplMediaSyncDataSource({
    required AppLocalDatabase localDatabase,
    required MediaService remoteMediaService,
    required ConnectivityService connectivity,
    required AuthService authService,
  }) : _localDatabase = localDatabase,
       _remoteMediaService = remoteMediaService,
       _connectivity = connectivity,
       _authService = authService;

  @override
  Future<void> syncMovies() async {
    if (!(await _prepareSync())) return;

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

      await _updateSyncUser();
    } catch (e, stacktrace) {
      debugLog('Error during sync: $e\n$stacktrace', name: _logTitle);
      throw SyncDataException(error: e);
    }
  }

  Future<void> _syncMoviesFromRemoteToLocal(
    List<MovieShortDataDto> remoteMovies,
    Map<int, MoviesTableData> localMoviesMap,
  ) async {
    await _localDatabase.batch((batch) async {
      for (final remoteMovie in remoteMovies) {
        await _processRemoteMovieItem(batch, remoteMovie, localMoviesMap);
      }
    });
  }

  Future<void> _processRemoteMovieItem(
    Batch batch,
    MovieShortDataDto remoteMovie,
    Map<int, MoviesTableData> localMoviesMap,
  ) async {
    final localMovie = localMoviesMap[remoteMovie.id];

    localMovie != null
        ? _batchInsertMovieIfNeeded(batch, remoteMovie, localMovie)
        : _batchInsertMovie(batch, remoteMovie);
  }

  void _batchInsertMovieIfNeeded(
    Batch batch,
    MovieShortDataDto remoteMovie,
    MoviesTableData localMovie,
  ) {
    // If updatedAt is missing in remote db, assume it's a new record
    // and treat it as freshly updated to avoid ignoring it.
    final remoteUpdatedAt = remoteMovie.updatedAt ?? DateTime.now();

    if (remoteUpdatedAt.isBefore(localMovie.updatedAt)) return;

    batch.insert(
      _localDatabase.moviesTable,
      remoteMovie.toTableData(remoteUpdatedAt),
      mode: InsertMode.insertOrReplace,
    );
  }

  void _batchInsertMovie(Batch batch, MovieShortDataDto remoteMovie) {
    batch.insert(_localDatabase.moviesTable, remoteMovie.toTableData());
  }

  Future<void> _syncMoviesFromLocalToRemote(
    List<MoviesTableData> localMoviesList,
    Map<int, MovieShortDataDto> remoteMoviesMap,
  ) async {
    final moviesToSync = _collectMoviesToSyncFromLocal(
      localMoviesList,
      remoteMoviesMap,
    );

    if (moviesToSync.isNotEmpty) {
      await _remoteMediaService.updateOrInsertMovies(moviesToSync);
    }
  }

  List<MovieShortDataDto> _collectMoviesToSyncFromLocal(
    List<MoviesTableData> localMoviesList,
    Map<int, MovieShortDataDto> remoteMoviesMap,
  ) {
    return localMoviesList
        .where((localMovie) => _shouldSyncMovie(localMovie, remoteMoviesMap))
        .map((localMovie) => localMovie.toDto())
        .toList();
  }

  bool _shouldSyncMovie(
    MoviesTableData localMovie,
    Map<int, MovieShortDataDto> remoteMoviesMap,
  ) {
    final remoteMovie = remoteMoviesMap[localMovie.tmdbId];

    // If updatedAt is missing in remote db, set it to the earliest possible date
    // to ensure any local record will be considered more recent.
    final remoteUpdatedAt =
        remoteMovie?.updatedAt ?? DateTime.fromMillisecondsSinceEpoch(0);

    return remoteMovie == null ||
        !localMovie.updatedAt.isBefore(remoteUpdatedAt);
  }

  @override
  Future<void> syncSeries() async {
    if (!(await _prepareSync())) return;

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

      await _updateSyncUser();
    } catch (e, stacktrace) {
      debugLog('Error during sync: $e\n$stacktrace', name: _logTitle);
      throw SyncDataException(error: e);
    }
  }

  Future<void> _syncSeriesFromRemoteToLocal(
    List<SeriesShortDataDto> remoteSeries,
    Map<int, SeriesTableData> localSeriesMap,
  ) async {
    await _localDatabase.batch((batch) async {
      for (final remoteSeriesItem in remoteSeries) {
        await _processRemoteSeriesItem(batch, remoteSeriesItem, localSeriesMap);
      }
    });
  }

  Future<void> _processRemoteSeriesItem(
    Batch batch,
    SeriesShortDataDto remoteSeriesItem,
    Map<int, SeriesTableData> localSeriesMap,
  ) async {
    final localSeriesItem = localSeriesMap[remoteSeriesItem.id];

    localSeriesItem != null
        ? _batchInsertSeriesIfNeeded(batch, remoteSeriesItem, localSeriesItem)
        : _batchInsertSeries(batch, remoteSeriesItem);
  }

  void _batchInsertSeriesIfNeeded(
    Batch batch,
    SeriesShortDataDto remoteSeriesItem,
    SeriesTableData localSeriesItem,
  ) {
    // If updatedAt is missing in remote db, assume it's a new record
    // and treat it as freshly updated to avoid ignoring it.
    final remoteUpdatedAt = remoteSeriesItem.updatedAt ?? DateTime.now();

    if (remoteUpdatedAt.isBefore(localSeriesItem.updatedAt)) return;

    batch.insert(
      _localDatabase.seriesTable,
      remoteSeriesItem.toTableData(remoteUpdatedAt),
      mode: InsertMode.insertOrReplace,
    );
  }

  void _batchInsertSeries(Batch batch, SeriesShortDataDto remoteSeriesItem) {
    batch.insert(_localDatabase.seriesTable, remoteSeriesItem.toTableData());
  }

  Future<void> _syncSeriesFromLocalToRemote(
    List<SeriesTableData> localSeriesList,
    Map<int, SeriesShortDataDto> remoteSeriesMap,
  ) async {
    final seriesToSync = _collectSeriesToSyncFromLocal(
      localSeriesList,
      remoteSeriesMap,
    );

    if (seriesToSync.isNotEmpty) {
      await _remoteMediaService.updateOrInsertSeriesList(seriesToSync);
    }
  }

  List<SeriesShortDataDto> _collectSeriesToSyncFromLocal(
    List<SeriesTableData> localSeriesList,
    Map<int, SeriesShortDataDto> remoteSeriesMap,
  ) {
    return localSeriesList
        .where((localSeries) => _shouldSyncSeries(localSeries, remoteSeriesMap))
        .map((localSeries) => localSeries.toDto())
        .toList();
  }

  bool _shouldSyncSeries(
    SeriesTableData localSeries,
    Map<int, SeriesShortDataDto> remoteSeriesMap,
  ) {
    final remoteSeries = remoteSeriesMap[localSeries.tmdbId];

    // If updatedAt is missing in remote db, set it to the earliest possible date
    // to ensure any local record will be considered more recent.
    final remoteUpdatedAt =
        remoteSeries?.updatedAt ?? DateTime.fromMillisecondsSinceEpoch(0);

    return remoteSeries == null ||
        !localSeries.updatedAt.isBefore(remoteUpdatedAt);
  }

  /// Prepares the sync by checking connectivity, user authentication,
  /// and ensuring that if a different user was previously synced, local data is cleared.
  Future<bool> _prepareSync() async {
    final isOnline = await _connectivity.isOnline();

    if (!isOnline) {
      debugLog('Offline, skipping sync', name: _logTitle);
      return false;
    }

    final currentUser = await _authService.getUser();

    if (currentUser == null) {
      debugLog('No authenticated user, skipping sync', name: _logTitle);
      return false;
    }

    final syncUser =
        await (_localDatabase.select(_localDatabase.syncUserTable)
          ..where((tbl) => tbl.id.equals(1))).getSingleOrNull();

    if (syncUser != null && syncUser.uid != currentUser.id) {
      debugLog(
        'Different sync user detected. Clearing local media data.',
        name: _logTitle,
      );
      await _clearLocalMediaData();
    }

    return true;
  }

  Future<void> _clearLocalMediaData() async {
    await _localDatabase.delete(_localDatabase.moviesTable).go();
    await _localDatabase.delete(_localDatabase.seriesTable).go();
  }

  Future<void> _updateSyncUser() async {
    final user = await _authService.getUser();

    if (user == null) return;

    await _localDatabase
        .into(_localDatabase.syncUserTable)
        .insertOnConflictUpdate(user.toTableData());
  }
}
