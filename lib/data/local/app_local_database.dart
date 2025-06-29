import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

import '../dto/country_dto.dart';
import '../dto/filter/sort_by_dto.dart';
import '../dto/localized_string.dart';
import '../dto/movie/movie_genre_dto.dart';
import '../dto/rating/rating_data_dto.dart';
import '../dto/series/series_genre_dto.dart';
import '../dto/watch_event_type_dto.dart';
import '../dto/watched_filter/watched_sort_by_dto.dart';
import '../dto/watchlist_filter/watchlist_sort_by_dto.dart';
import 'db_migration.dart';
import 'tables/movies_events_table.dart';
import 'tables/movies_filter_table.dart';
import 'tables/movies_table.dart';
import 'tables/series_events_table.dart';
import 'tables/series_filter_table.dart';
import 'tables/series_table.dart';
import 'tables/settings_table.dart';
import 'tables/sync_user_table.dart';
import 'tables/watched_movies_filter_table.dart';
import 'tables/watched_series_filter_table.dart';
import 'tables/watchlist_movies_filter_table.dart';
import 'tables/watchlist_series_filter_table.dart';
import 'utils/country_converter.dart';
import 'utils/event_type_converter.dart';
import 'utils/filter_sort_by_converter.dart';
import 'utils/localized_string_converter.dart';
import 'utils/movie_genres_converter.dart';
import 'utils/rating_converter.dart';
import 'utils/servies_genres_converter.dart';
import 'utils/watched_filter_sort_by_converter.dart';
import 'utils/watchlist_filter_sort_by_converter.dart';

part 'app_local_database.g.dart';

@DriftDatabase(
  tables: [
    MoviesTable,
    SeriesTable,
    SyncUserTable,
    SettingsTable,
    MoviesFilterTable,
    SeriesFilterTable,
    MoviesEventsTable,
    SeriesEventsTable,
    WatchedMoviesFilterTable,
    WatchedSeriesFilterTable,
    WatchlistMoviesFilterTable,
    WatchlistSeriesFilterTable,
  ],
)
class AppLocalDatabase extends _$AppLocalDatabase {
  AppLocalDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 5;

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
      from3To4: _migrateFrom3To4,
      from4To5: _migrateFrom4To5,
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

  Future<void> _migrateFrom3To4(Migrator m, Schema4 schema) async {
    await m.addColumn(schema.moviesTable, schema.moviesTable.watchlistAddedAt);
    await m.addColumn(schema.moviesTable, schema.moviesTable.lastWatchedAt);
    await m.addColumn(schema.seriesTable, schema.seriesTable.watchlistAddedAt);
    await m.addColumn(schema.seriesTable, schema.seriesTable.lastWatchedAt);

    await customStatement('''
      UPDATE ${schema.moviesTable.actualTableName}
      SET watchlist_added_at = updated_at,
          last_watched_at = updated_at;
    ''');

    await customStatement('''
      UPDATE ${schema.seriesTable.actualTableName}
      SET watchlist_added_at = updated_at,
          last_watched_at  = updated_at;
    ''');

    await m.createTable(schema.moviesEventsTable);
    await m.createTable(schema.seriesEventsTable);
  }

  Future<void> _migrateFrom4To5(Migrator m, Schema5 schema) async {
    await m.createTable(schema.watchlistMoviesFilterTable);
    await m.createTable(schema.watchlistSeriesFilterTable);
    await m.createTable(schema.watchedMoviesFilterTable);
    await m.createTable(schema.watchedSeriesFilterTable);
  }
}
