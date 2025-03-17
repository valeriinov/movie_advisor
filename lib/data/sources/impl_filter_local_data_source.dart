import '../dto/filter/movies_filter_data_dto.dart';
import '../dto/filter/series_filter_data_dto.dart';
import '../local/app_local_database.dart';
import '../local/utils/ext/media_filter_table_mapper.dart';
import '../repositories/filter/filter_local_data_source.dart';

class ImplFilterLocalDataSource implements FilterLocalDataSource {
  final AppLocalDatabase _database;

  ImplFilterLocalDataSource({required AppLocalDatabase database})
    : _database = database;

  @override
  Future<MoviesFilterDataDto?> getSavedMoviesFilter() async {
    final record = await _fetchMoviesFilterRecord();

    return record?.toDto();
  }

  Future<MoviesFilterTableData?> _fetchMoviesFilterRecord() {
    final query = _database.select(_database.moviesFilterTable)
      ..where((tbl) => tbl.id.equals(1));

    return query.getSingleOrNull();
  }

  @override
  Future<SeriesFilterDataDto?> getSavedSeriesFilter() async {
    final record = await _fetchSeriesFilterRecord();

    return record?.toDto();
  }

  Future<SeriesFilterTableData?> _fetchSeriesFilterRecord() {
    final query = _database.select(_database.seriesFilterTable)
      ..where((tbl) => tbl.id.equals(1));

    return query.getSingleOrNull();
  }

  @override
  Future<void> saveMoviesFilter(MoviesFilterDataDto filter) async {
    await _database
        .into(_database.moviesFilterTable)
        .insertOnConflictUpdate(filter.toTableData());
  }

  @override
  Future<void> saveSeriesFilter(SeriesFilterDataDto filter) async {
    await _database
        .into(_database.seriesFilterTable)
        .insertOnConflictUpdate(filter.toTableData());
  }
}
