import '../dto/watchlist_filter/movies_watchlist_filter_data_dto.dart';
import '../dto/watchlist_filter/series_watchlist_filter_data_dto.dart';
import '../local/app_local_database.dart';
import '../local/utils/ext/media_watchlist_filter_table_mapper.dart';
import '../repositories/watchlist_filter/watchlist_filter_local_data_source.dart';

class ImplWatchlistFilterLocalDataSource
    implements WatchlistFilterLocalDataSource {
  final AppLocalDatabase _database;

  ImplWatchlistFilterLocalDataSource({required AppLocalDatabase database})
    : _database = database;

  @override
  Future<void> saveMoviesFilter(MoviesWatchlistFilterDataDto filter) async {
    await _database
        .into(_database.watchlistMoviesFilterTable)
        .insertOnConflictUpdate(filter.toTableData());
  }

  @override
  Future<void> saveSeriesFilter(SeriesWatchlistFilterDataDto filter) async {
    await _database
        .into(_database.watchlistSeriesFilterTable)
        .insertOnConflictUpdate(filter.toTableData());
  }

  @override
  Future<MoviesWatchlistFilterDataDto?> getSavedMoviesFilter() async {
    final record = await _fetchMoviesFilterRecord();

    return record?.toDto();
  }

  Future<WatchlistMoviesFilterTableData?> _fetchMoviesFilterRecord() {
    final query = _database.select(_database.watchlistMoviesFilterTable)
      ..where((tbl) => tbl.id.equals(1));

    return query.getSingleOrNull();
  }

  @override
  Future<SeriesWatchlistFilterDataDto?> getSavedSeriesFilter() async {
    final record = await _fetchSeriesFilterRecord();

    return record?.toDto();
  }

  Future<WatchlistSeriesFilterTableData?> _fetchSeriesFilterRecord() {
    final query = _database.select(_database.watchlistSeriesFilterTable)
      ..where((tbl) => tbl.id.equals(1));

    return query.getSingleOrNull();
  }
}
