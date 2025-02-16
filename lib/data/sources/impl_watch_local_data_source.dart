import 'package:drift/drift.dart';

import '../../common/constants/db_constants.dart';
import '../dto/movie/movie_short_data_dto.dart';
import '../dto/movie/movies_short_response_data_dto.dart';
import '../dto/series/series_short_data_dto.dart';
import '../dto/series/series_short_response_data_dto.dart';
import '../local/app_local_database.dart';
import '../local/utils/ext/media_table_mapper.dart';
import '../repositories/watch/watch_local_data_source.dart';

class ImplWatchLocalDataSource implements WatchLocalDataSource {
  final AppLocalDatabase _database;

  ImplWatchLocalDataSource({required AppLocalDatabase database})
      : _database = database;

  @override
  Stream<MovieShortDataDto> watchChangesMovies() {
    final query = _database.select(_database.moviesTable);

    final stream = query.watch();

    return stream.asyncExpand(_mapMovieRows);
  }

  Stream<MovieShortDataDto> _mapMovieRows(List<MoviesTableData> movies) {
    return Stream.fromIterable(movies.map((movie) => movie.toDto()));
  }

  @override
  Stream<SeriesShortDataDto> watchChangesSeries() {
    final query = _database.select(_database.seriesTable);

    final stream = query.watch();

    return stream.asyncExpand(_mapSeriesRows);
  }

  Stream<SeriesShortDataDto> _mapSeriesRows(List<SeriesTableData> seriesList) {
    return Stream.fromIterable(seriesList.map((series) => series.toDto()));
  }

  @override
  Future<MoviesShortResponseDataDto> getWatchedMovies(
      {required int page}) async {
    final int offset = _calculateOffset(page);

    final moviesQuery = (_database.select(_database.moviesTable)
      ..where((tbl) => tbl.isWatched.equals(true))
      ..limit(DbConstants.pageSize, offset: offset));

    final movies = await moviesQuery.get();

    final totalPages = await _calculateTotalPages(
      countExp: _database.moviesTable.id.count(),
      predicate: _database.moviesTable.isWatched.equals(true),
      tableState: _database.selectOnly(_database.moviesTable),
    );

    return MoviesShortResponseDataDto(
      page: page,
      results: movies.map((movie) => movie.toDto()).toList(),
      totalPages: totalPages,
    );
  }

  @override
  Future<MoviesShortResponseDataDto> getWatchlistMovies(
      {required int page}) async {
    final int offset = _calculateOffset(page);

    final moviesQuery = (_database.select(_database.moviesTable)
      ..where((tbl) => tbl.isInWatchlist.equals(true))
      ..limit(DbConstants.pageSize, offset: offset));

    final movies = await moviesQuery.get();

    final totalPages = await _calculateTotalPages(
      countExp: _database.moviesTable.id.count(),
      predicate: _database.moviesTable.isInWatchlist.equals(true),
      tableState: _database.selectOnly(_database.moviesTable),
    );

    return MoviesShortResponseDataDto(
      page: page,
      results: movies.map((movie) => movie.toDto()).toList(),
      totalPages: totalPages,
    );
  }

  @override
  Future<SeriesShortResponseDataDto> getWatchedSeries(
      {required int page}) async {
    final int offset = _calculateOffset(page);

    final seriesQuery = (_database.select(_database.seriesTable)
      ..where((tbl) => tbl.isWatched.equals(true))
      ..limit(DbConstants.pageSize, offset: offset));

    final series = await seriesQuery.get();

    final totalPages = await _calculateTotalPages(
      countExp: _database.seriesTable.id.count(),
      predicate: _database.seriesTable.isWatched.equals(true),
      tableState: _database.selectOnly(_database.seriesTable),
    );

    return SeriesShortResponseDataDto(
      page: page,
      results: series.map((series) => series.toDto()).toList(),
      totalPages: totalPages,
    );
  }

  @override
  Future<SeriesShortResponseDataDto> getWatchlistSeries(
      {required int page}) async {
    final int offset = _calculateOffset(page);

    final seriesQuery = (_database.select(_database.seriesTable)
      ..where((tbl) => tbl.isInWatchlist.equals(true))
      ..limit(DbConstants.pageSize, offset: offset));

    final series = await seriesQuery.get();

    final totalPages = await _calculateTotalPages(
      countExp: _database.seriesTable.id.count(),
      predicate: _database.seriesTable.isInWatchlist.equals(true),
      tableState: _database.selectOnly(_database.seriesTable),
    );

    return SeriesShortResponseDataDto(
      page: page,
      results: series.map((series) => series.toDto()).toList(),
      totalPages: totalPages,
    );
  }

  int _calculateOffset(int page) {
    return (page - 1) * DbConstants.pageSize;
  }

  Future<int> _calculateTotalPages<T extends HasResultSet, R>({
    required Expression<int> countExp,
    required Expression<bool> predicate,
    required JoinedSelectStatement<T, R> tableState,
  }) async {
    final totalCount = await _fetchTotalCount(
      countExp: countExp,
      predicate: predicate,
      tableState: tableState,
    );

    return (totalCount / DbConstants.pageSize).ceil();
  }

  Future<int> _fetchTotalCount<T extends HasResultSet, R>({
    required Expression<int> countExp,
    required Expression<bool> predicate,
    required JoinedSelectStatement<T, R> tableState,
  }) async {
    final totalCountResult = await (tableState
          ..addColumns([countExp])
          ..where(predicate))
        .map((row) => row.read(countExp))
        .getSingleOrNull();

    return totalCountResult ?? 0;
  }

  @override
  Future<void> addToWatchedMovie(MovieShortDataDto data) {
    final preparedData = data.copyWith(isWatched: true);

    return _database.into(_database.moviesTable).insert(
          preparedData.toTableData(),
          mode: InsertMode.insertOrReplace,
        );
  }

  @override
  Future<void> addToWatchedSeries(SeriesShortDataDto data) {
    final preparedData = data.copyWith(isWatched: true);

    return _database.into(_database.seriesTable).insert(
          preparedData.toTableData(),
          mode: InsertMode.insertOrReplace,
        );
  }

  @override
  Future<void> addToWatchlistMovie(MovieShortDataDto data) {
    final preparedData = data.copyWith(isInWatchlist: true);

    return _database.into(_database.moviesTable).insert(
          preparedData.toTableData(),
          mode: InsertMode.insertOrReplace,
        );
  }

  @override
  Future<void> addToWatchlistSeries(SeriesShortDataDto data) {
    final preparedData = data.copyWith(isInWatchlist: true);

    return _database.into(_database.seriesTable).insert(
          preparedData.toTableData(),
          mode: InsertMode.insertOrReplace,
        );
  }

  @override
  Future<void> removeFromWatchedMovie(int id) async {
    final deletedRows = await _deleteMovieIfNotInWatchlist(id);

    if (deletedRows > 0) return;

    await (_database.update(_database.moviesTable)
          ..where((tbl) => tbl.tmdbId.equals(id)))
        .write(MoviesTableCompanion(isWatched: Value(false)));
  }

  Future<int> _deleteMovieIfNotInWatchlist(int id) async {
    return await (_database.delete(_database.moviesTable)
          ..where((tbl) => tbl.tmdbId.equals(id))
          ..where((tbl) => tbl.isInWatchlist.equals(false)))
        .go();
  }

  @override
  Future<void> removeFromWatchedSeries(int id) async {
    final deletedRows = await _deleteSeriesIfNotInWatchlist(id);

    if (deletedRows > 0) return;

    await (_database.update(_database.seriesTable)
          ..where((tbl) => tbl.tmdbId.equals(id)))
        .write(SeriesTableCompanion(isWatched: Value(false)));
  }

  Future<int> _deleteSeriesIfNotInWatchlist(int id) async {
    return await (_database.delete(_database.seriesTable)
          ..where((tbl) => tbl.tmdbId.equals(id))
          ..where((tbl) => tbl.isInWatchlist.equals(false)))
        .go();
  }

  @override
  Future<void> removeFromWatchlistMovie(int id) async {
    final deletedRows = await _deleteMovieIfNotWatched(id);

    if (deletedRows > 0) return;

    await (_database.update(_database.moviesTable)
          ..where((tbl) => tbl.tmdbId.equals(id)))
        .write(MoviesTableCompanion(isInWatchlist: Value(false)));
  }

  Future<int> _deleteMovieIfNotWatched(int id) async {
    return await (_database.delete(_database.moviesTable)
          ..where((tbl) => tbl.tmdbId.equals(id))
          ..where((tbl) => tbl.isWatched.equals(false)))
        .go();
  }

  @override
  Future<void> removeFromWatchlistSeries(int id) async {
    final deletedRows = await _deleteSeriesIfNotWatched(id);

    if (deletedRows > 0) return;

    await (_database.update(_database.seriesTable)
          ..where((tbl) => tbl.tmdbId.equals(id)))
        .write(SeriesTableCompanion(isInWatchlist: Value(false)));
  }

  Future<int> _deleteSeriesIfNotWatched(int id) async {
    return await (_database.delete(_database.seriesTable)
          ..where((tbl) => tbl.tmdbId.equals(id))
          ..where((tbl) => tbl.isWatched.equals(false)))
        .go();
  }
}
