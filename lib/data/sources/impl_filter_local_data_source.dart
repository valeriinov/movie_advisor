import '../dto/filter/movies_filter_data_dto.dart';
import '../dto/filter/series_filter_data_dto.dart';
import '../local/app_local_database.dart';
import '../repositories/filter/filter_local_data_source.dart';

class ImplFilterLocalDataSource implements FilterLocalDataSource {
  final AppLocalDatabase _database;

  ImplFilterLocalDataSource({required AppLocalDatabase database})
    : _database = database;

  @override
  Future<MoviesFilterDataDto?> getSavedMoviesFilter() {
    // TODO: implement getSavedMoviesFilter
    throw UnimplementedError();
  }

  @override
  Future<SeriesFilterDataDto?> getSavedSeriesFilter() {
    // TODO: implement getSavedSeriesFilter
    throw UnimplementedError();
  }

  @override
  Future<void> saveMoviesFilter(MoviesFilterDataDto filter) {
    // TODO: implement saveMoviesFilter
    throw UnimplementedError();
  }

  @override
  Future<void> saveSeriesFilter(SeriesFilterDataDto filter) {
    // TODO: implement saveSeriesFilter
    throw UnimplementedError();
  }
}
