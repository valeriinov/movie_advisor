import '../dto/movie/movie_short_data_dto.dart';
import '../dto/series/series_short_data_dto.dart';
import '../local/app_local_database.dart';
import '../local/utils/ext/media_table_mapper.dart';
import '../repositories/media_local_data_source.dart';

class ImplMediaLocalDataSource implements MediaLocalDataSource {
  final AppLocalDatabase _database;

  ImplMediaLocalDataSource({required AppLocalDatabase database})
      : _database = database;

  @override
  Future<List<MovieShortDataDto>> getMoviesByIds(List<int> ids) async {
    final query = _database.select(_database.moviesTable)
      ..where((tbl) => tbl.tmdbId.isIn(ids));

    final movies = await query.get();

    return movies.map((m) => m.toDto()).toList();
  }

  @override
  Future<List<SeriesShortDataDto>> getSeriesByIds(List<int> ids) async {
    final query = _database.select(_database.seriesTable)
      ..where((tbl) => tbl.tmdbId.isIn(ids));

    final series = await query.get();

    return series.map((s) => s.toDto()).toList();
  }
}
