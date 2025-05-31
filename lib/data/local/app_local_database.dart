import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

import '../dto/country_dto.dart';
import '../dto/filter/sort_by_dto.dart';
import '../dto/localized_string.dart';
import '../dto/movie/movie_genre_dto.dart';
import '../dto/rating/rating_data_dto.dart';
import '../dto/series/series_genre_dto.dart';
import 'db_migration.dart';
import 'tables/movies_filter_table.dart';
import 'tables/movies_table.dart';
import 'tables/series_filter_table.dart';
import 'tables/series_table.dart';
import 'tables/settings_table.dart';
import 'tables/sync_user_table.dart';
import 'utils/country_converter.dart';
import 'utils/filter_sort_by_converter.dart';
import 'utils/localized_string_converter.dart';
import 'utils/movie_genres_converter.dart';
import 'utils/rating_converter.dart';
import 'utils/servies_genres_converter.dart';

part 'app_local_database.g.dart';

@DriftDatabase(
  tables: [
    MoviesTable,
    SeriesTable,
    SyncUserTable,
    SettingsTable,
    MoviesFilterTable,
    SeriesFilterTable,
  ],
)
class AppLocalDatabase extends _$AppLocalDatabase {
  AppLocalDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 3;

  static QueryExecutor _openConnection() {
    // `driftDatabase` from `package:drift_flutter` stores the database in
    // `getApplicationDocumentsDirectory()`.
    return driftDatabase(name: 'my_database');
  }

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: _onCreate,
    onUpgrade: stepByStep(
      from1To2: _migrateFrom1To2,
      from2To3: _migrateFrom2To3,
    ),
  );

  Future<void> _onCreate(Migrator m) async {
    await m.createAll();
  }

  Future<void> _migrateFrom1To2(Migrator m, Schema2 schema) async {
    await m.addColumn(
      schema.moviesFilterTable,
      schema.moviesFilterTable.includeWatched,
    );
    await m.addColumn(
      schema.moviesFilterTable,
      schema.moviesFilterTable.includeWatchlist,
    );
    await m.addColumn(
      schema.seriesFilterTable,
      schema.seriesFilterTable.includeWatched,
    );
    await m.addColumn(
      schema.seriesFilterTable,
      schema.seriesFilterTable.includeWatchlist,
    );
  }

  Future<void> _migrateFrom2To3(Migrator m, Schema3 schema) async {
    await m.dropColumn(schema.moviesFilterTable, 'year');
    await m.addColumn(
      schema.moviesFilterTable,
      schema.moviesFilterTable.fromDate,
    );
    await m.addColumn(
      schema.moviesFilterTable,
      schema.moviesFilterTable.toDate,
    );

    await m.dropColumn(schema.seriesFilterTable, 'year');
    await m.addColumn(
      schema.seriesFilterTable,
      schema.seriesFilterTable.fromDate,
    );
    await m.addColumn(
      schema.seriesFilterTable,
      schema.seriesFilterTable.toDate,
    );
  }
}
