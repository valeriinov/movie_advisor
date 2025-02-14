import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

import '../dto/movie/movie_genre_dto.dart';
import '../dto/rating/rating_data_dto.dart';
import '../dto/series/series_genre_dto.dart';
import 'tables/movies_table.dart';
import 'tables/series_table.dart';
import 'utils/rating_converter.dart';


part 'app_local_database.g.dart';

@DriftDatabase(tables: [MoviesTable, SeriesTable])
class AppLocalDatabase extends _$AppLocalDatabase {
  AppLocalDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    // `driftDatabase` from `package:drift_flutter` stores the database in
    // `getApplicationDocumentsDirectory()`.
    return driftDatabase(name: 'my_database');
  }
}