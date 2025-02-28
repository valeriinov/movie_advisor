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
    final query =
        _database.select(_database.moviesTable)
          ..orderBy([
            (tbl) => OrderingTerm(
              expression: tbl.updatedAt,
              mode: OrderingMode.desc,
            ),
          ])
          ..limit(1);

    final stream = query.watch();

    return stream.asyncExpand(_mapMovieRows);
  }

  Stream<MovieShortDataDto> _mapMovieRows(List<MoviesTableData> movies) {
    return Stream.fromIterable(movies.map((movie) => movie.toDto()));
  }

  @override
  Stream<SeriesShortDataDto> watchChangesSeries() {
    final query =
        _database.select(_database.seriesTable)
          ..orderBy([
            (tbl) => OrderingTerm(
              expression: tbl.updatedAt,
              mode: OrderingMode.desc,
            ),
          ])
          ..limit(1);

    final stream = query.watch();

    return stream.asyncExpand(_mapSeriesRows);
  }

  Stream<SeriesShortDataDto> _mapSeriesRows(List<SeriesTableData> seriesList) {
    return Stream.fromIterable(seriesList.map((series) => series.toDto()));
  }

  @override
  Future<MoviesShortResponseDataDto> getWatchedMovies({
    required int page,
  }) async {
    final int offset = _calculateOffset(page);

    final moviesQuery =
        (_database.select(_database.moviesTable)
          ..where((tbl) => tbl.isWatched.equals(true))
          ..orderBy([
            (tbl) => OrderingTerm(
              expression: tbl.updatedAt,
              mode: OrderingMode.desc,
            ),
          ])
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
  Future<MoviesShortResponseDataDto> getWatchlistMovies({
    required int page,
  }) async {
    final int offset = _calculateOffset(page);

    final moviesQuery =
        (_database.select(_database.moviesTable)
          ..where((tbl) => tbl.isInWatchlist.equals(true))
          ..orderBy([
            (tbl) =>
                OrderingTerm(expression: tbl.updatedAt, mode: OrderingMode.asc),
          ])
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
  Future<SeriesShortResponseDataDto> getWatchedSeries({
    required int page,
  }) async {
    final int offset = _calculateOffset(page);

    final seriesQuery =
        (_database.select(_database.seriesTable)
          ..where((tbl) => tbl.isWatched.equals(true))
          ..orderBy([
            (tbl) => OrderingTerm(
              expression: tbl.updatedAt,
              mode: OrderingMode.desc,
            ),
          ])
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
  Future<SeriesShortResponseDataDto> getWatchlistSeries({
    required int page,
  }) async {
    final int offset = _calculateOffset(page);

    final seriesQuery =
        (_database.select(_database.seriesTable)
          ..where((tbl) => tbl.isInWatchlist.equals(true))
          ..orderBy([
            (tbl) =>
                OrderingTerm(expression: tbl.updatedAt, mode: OrderingMode.asc),
          ])
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
    final totalCountResult =
        await (tableState
              ..addColumns([countExp])
              ..where(predicate))
            .map((row) => row.read(countExp))
            .getSingleOrNull();

    return totalCountResult ?? 0;
  }

  @override
  Future<void> addToWatchedMovie(MovieShortDataDto data) {
    return _database
        .into(_database.moviesTable)
        .insert(data.toTableData(), mode: InsertMode.insertOrReplace);
  }

  @override
  Future<void> addToWatchedSeries(SeriesShortDataDto data) {
    return _database
        .into(_database.seriesTable)
        .insert(data.toTableData(), mode: InsertMode.insertOrReplace);
  }

  @override
  Future<void> addToWatchlistMovie(MovieShortDataDto data) {
    return _database
        .into(_database.moviesTable)
        .insert(data.toTableData(), mode: InsertMode.insertOrReplace);
  }

  @override
  Future<void> addToWatchlistSeries(SeriesShortDataDto data) {
    return _database
        .into(_database.seriesTable)
        .insert(data.toTableData(), mode: InsertMode.insertOrReplace);
  }

  @override
  Future<void> removeFromWatchedMovie(int id) async {
    await (_database.update(_database.moviesTable)
      ..where((tbl) => tbl.tmdbId.equals(id))).write(
      MoviesTableCompanion(
        userRating: Value(0),
        isWatched: Value(false),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  @override
  Future<void> removeFromWatchedSeries(int id) async {
    await (_database.update(_database.seriesTable)
      ..where((tbl) => tbl.tmdbId.equals(id))).write(
      SeriesTableCompanion(
        userRating: Value(0),
        isWatched: Value(false),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  @override
  Future<void> removeFromWatchlistMovie(int id) async {
    await (_database.update(_database.moviesTable)
      ..where((tbl) => tbl.tmdbId.equals(id))).write(
      MoviesTableCompanion(
        isInWatchlist: Value(false),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  @override
  Future<void> removeFromWatchlistSeries(int id) async {
    await (_database.update(_database.seriesTable)
      ..where((tbl) => tbl.tmdbId.equals(id))).write(
      SeriesTableCompanion(
        isInWatchlist: Value(false),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }
}
