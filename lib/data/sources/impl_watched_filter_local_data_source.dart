import '../dto/watched_filter/movies_watched_filter_data_dto.dart';
import '../dto/watched_filter/series_watched_filter_data_dto.dart';
import '../local/app_local_database.dart';
import '../local/utils/ext/media_watched_filter_table_mapper.dart';
import '../repositories/watched_filter/watched_filter_local_data_source.dart';

class ImplWatchedFilterLocalDataSource implements WatchedFilterLocalDataSource {
  final AppLocalDatabase _database;

  ImplWatchedFilterLocalDataSource({required AppLocalDatabase database})
    : _database = database;

  @override
  Future<void> saveMoviesFilter(MoviesWatchedFilterDataDto filter) async {
    await _database
        .into(_database.watchedMoviesFilterTable)
        .insertOnConflictUpdate(filter.toTableData());
  }

  @override
  Future<void> saveSeriesFilter(SeriesWatchedFilterDataDto filter) async {
    await _database
        .into(_database.watchedSeriesFilterTable)
        .insertOnConflictUpdate(filter.toTableData());
  }

  @override
  Future<MoviesWatchedFilterDataDto?> getSavedMoviesFilter() async {
    final record = await _fetchMoviesFilterRecord();

    return record?.toDto();
  }

  Future<WatchedMoviesFilterTableData?> _fetchMoviesFilterRecord() {
    final query = _database.select(_database.watchedMoviesFilterTable)
      ..where((tbl) => tbl.id.equals(1));

    return query.getSingleOrNull();
  }

  @override
  Future<SeriesWatchedFilterDataDto?> getSavedSeriesFilter() async {
    final record = await _fetchSeriesFilterRecord();

    return record?.toDto();
  }

  Future<WatchedSeriesFilterTableData?> _fetchSeriesFilterRecord() {
    final query = _database.select(_database.watchedSeriesFilterTable)
      ..where((tbl) => tbl.id.equals(1));

    return query.getSingleOrNull();
  }
}
