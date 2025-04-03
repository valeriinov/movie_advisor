import 'package:drift/drift.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../dto/general_exceptions.dart';
import '../dto/movie/movie_short_data_dto.dart';
import '../dto/series/series_short_data_dto.dart';
import '../dto/sync/sync_user_data_dto.dart';
import '../local/app_local_database.dart';
import '../local/utils/ext/media_table_mapper.dart';
import '../local/utils/ext/sync_user_table_mapper.dart';
import '../network/services/auth_service.dart';
import '../network/services/connectivity_service.dart';
import '../network/services/media_service.dart';
import '../repositories/sync/sync_data_source.dart';

class ImplSyncDataSource implements SyncDataSource {
  static const _logTitle = 'SYNC DATA SOURCE LOG';

  final AppLocalDatabase _localDatabase;
  final MediaService _remoteMediaService;
  final ConnectivityService _connectivity;
  final AuthService _authService;

  ImplSyncDataSource({
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

      final localUpdated = await _syncMoviesFromRemoteToLocal(
        remoteMovies,
        localMoviesMap,
      );

      await _syncMoviesFromLocalToRemote(localMoviesList, remoteMoviesMap);

      if (localUpdated) {
        await _updateSyncUser(isMovies: true);
      }
    } catch (e, stacktrace) {
      debugLog('Error during sync: $e\n$stacktrace', name: _logTitle);
      throw SyncDataException(error: e);
    }
  }

  Future<bool> _syncMoviesFromRemoteToLocal(
    List<MovieShortDataDto> remoteMovies,
    Map<int, MoviesTableData> localMoviesMap,
  ) async {
    bool changesApplied = false;

    await _localDatabase.batch((batch) {
      for (final remoteMovie in remoteMovies) {
        final updated = _processRemoteMovieItem(
          batch,
          remoteMovie,
          localMoviesMap,
        );

        if (updated) changesApplied = true;
      }
    });

    return changesApplied;
  }

  bool _processRemoteMovieItem(
    Batch batch,
    MovieShortDataDto remoteMovie,
    Map<int, MoviesTableData> localMoviesMap,
  ) {
    final localMovie = localMoviesMap[remoteMovie.id];

    // If updatedAt is missing in remote db, assume it's a new record
    // and treat it as freshly updated to avoid ignoring it.
    final remoteUpdatedAt = remoteMovie.updatedAt ?? DateTime.now();

    return localMovie != null
        ? _batchInsertMovieIfNeeded(
          batch,
          remoteMovie,
          localMovie,
          remoteUpdatedAt,
        )
        : _batchInsertMovie(batch, remoteMovie, remoteUpdatedAt);
  }

  bool _batchInsertMovieIfNeeded(
    Batch batch,
    MovieShortDataDto remoteMovie,
    MoviesTableData localMovie,
    DateTime remoteUpdatedAt,
  ) {
    if (remoteUpdatedAt.isBeforeOrAtSameMomentAs(localMovie.updatedAt)) {
      return false;
    }

    batch.insert(
      _localDatabase.moviesTable,
      remoteMovie.toTableData(remoteUpdatedAt),
      mode: InsertMode.insertOrReplace,
    );

    return true;
  }

  bool _batchInsertMovie(
    Batch batch,
    MovieShortDataDto remoteMovie,
    DateTime remoteUpdatedAt,
  ) {
    batch.insert(
      _localDatabase.moviesTable,
      remoteMovie.toTableData(remoteUpdatedAt),
    );

    return true;
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
        !localMovie.updatedAt.isBeforeOrAtSameMomentAs(remoteUpdatedAt);
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

      final localUpdated = await _syncSeriesFromRemoteToLocal(
        remoteSeries,
        localSeriesMap,
      );

      await _syncSeriesFromLocalToRemote(localSeriesList, remoteSeriesMap);

      if (localUpdated) {
        await _updateSyncUser(isMovies: false);
      }
    } catch (e, stacktrace) {
      debugLog('Error during sync: $e\n$stacktrace', name: _logTitle);
      throw SyncDataException(error: e);
    }
  }

  Future<bool> _syncSeriesFromRemoteToLocal(
    List<SeriesShortDataDto> remoteSeries,
    Map<int, SeriesTableData> localSeriesMap,
  ) async {
    bool changesApplied = false;

    await _localDatabase.batch((batch) {
      for (final remoteSeriesItem in remoteSeries) {
        final updated = _processRemoteSeriesItem(
          batch,
          remoteSeriesItem,
          localSeriesMap,
        );

        if (updated) changesApplied = true;
      }
    });

    return changesApplied;
  }

  bool _processRemoteSeriesItem(
    Batch batch,
    SeriesShortDataDto remoteSeriesItem,
    Map<int, SeriesTableData> localSeriesMap,
  ) {
    final localSeriesItem = localSeriesMap[remoteSeriesItem.id];

    // If updatedAt is missing in remote db, assume it's a new record
    // and treat it as freshly updated to avoid ignoring it.
    final remoteUpdatedAt = remoteSeriesItem.updatedAt ?? DateTime.now();

    return localSeriesItem != null
        ? _batchInsertSeriesIfNeeded(
          batch,
          remoteSeriesItem,
          localSeriesItem,
          remoteUpdatedAt,
        )
        : _batchInsertSeries(batch, remoteSeriesItem, remoteUpdatedAt);
  }

  bool _batchInsertSeriesIfNeeded(
    Batch batch,
    SeriesShortDataDto remoteSeriesItem,
    SeriesTableData localSeriesItem,
    DateTime remoteUpdatedAt,
  ) {
    if (remoteUpdatedAt.isBeforeOrAtSameMomentAs(localSeriesItem.updatedAt)) {
      return false;
    }

    batch.insert(
      _localDatabase.seriesTable,
      remoteSeriesItem.toTableData(remoteUpdatedAt),
      mode: InsertMode.insertOrReplace,
    );

    return true;
  }

  bool _batchInsertSeries(
    Batch batch,
    SeriesShortDataDto remoteSeriesItem,
    DateTime remoteUpdatedAt,
  ) {
    batch.insert(
      _localDatabase.seriesTable,
      remoteSeriesItem.toTableData(remoteUpdatedAt),
    );

    return true;
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
        !localSeries.updatedAt.isBeforeOrAtSameMomentAs(remoteUpdatedAt);
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

  Future<void> _updateSyncUser({required bool isMovies}) async {
    final user = await _authService.getUser();

    if (user == null) return;

    final preparedUser = SyncUserDataDto(
      id: user.id,
      email: user.email,
      moviesSyncedAt: isMovies ? DateTime.now() : null,
      seriesSyncedAt: isMovies ? null : DateTime.now(),
    );

    await _localDatabase
        .into(_localDatabase.syncUserTable)
        .insertOnConflictUpdate(preparedUser.toTableData());
  }
}
