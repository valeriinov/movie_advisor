import 'package:drift/drift.dart';

import '../dto/movie/movie_short_data_dto.dart';
import '../dto/movie/movies_short_response_data_dto.dart';
import '../dto/series/series_short_data_dto.dart';
import '../dto/series/series_short_response_data_dto.dart';
import '../local/app_local_database.dart';
import '../repositories/watch/watch_local_data_source.dart';

class ImplWatchLocalDataSource implements WatchLocalDataSource {
  final AppLocalDatabase _database;

  ImplWatchLocalDataSource({required AppLocalDatabase database})
      : _database = database;

  @override
  Future<MoviesShortResponseDataDto> getWatchedMovies({required int page}) async{
    const int pageSize = 20;
    final int offset = (page - 1) * pageSize;

    final moviesQuery = (_database.select(_database.moviesTable)
      ..where((tbl) => tbl.isWatched.equals(true))
      ..limit(pageSize, offset: offset));

    final movies = await moviesQuery.get();

    final countExp = _database.moviesTable.id.count();
    final totalCountQuery = _database.selectOnly(_database.moviesTable)
      ..addColumns([countExp])
      ..where(_database.moviesTable.isWatched.equals(true));

    final totalCountResult = await totalCountQuery.map((row) => row.read(countExp)).getSingle();
    final totalCount = totalCountResult ?? 0;

    final totalPages = (totalCount / pageSize).ceil();

    return MoviesShortResponseDataDto(
      page: page,
      results: movies.map((movie) => movie.toDto()).toList(),
      totalPages: totalPages,
    );
  }

  @override
  Future<MoviesShortResponseDataDto> getWatchlistMovies({required int page}) {
    // TODO: implement getWatchlistMovies
    throw UnimplementedError();
  }

  @override
  Future<SeriesShortResponseDataDto> getWatchedSeries({required int page}) {
    // TODO: implement getWatchedSeries
    throw UnimplementedError();
  }

  @override
  Future<SeriesShortResponseDataDto> getWatchlistSeries({required int page}) {
    // TODO: implement getWatchlistSeries
    throw UnimplementedError();
  }

  @override
  Future<void> addToWatchedMovie(MovieShortDataDto data) {
    final preparedData = data.copyWith(isWatched: true);

    return _database
        .into(_database.moviesTable)
        .insertOnConflictUpdate(preparedData.toTableData());
  }

  @override
  Future<void> addToWatchedSeries(SeriesShortDataDto data) {
    final preparedData = data.copyWith(isWatched: true);

    return _database
        .into(_database.seriesTable)
        .insertOnConflictUpdate(preparedData.toTableData());
  }

  @override
  Future<void> addToWatchlistMovie(MovieShortDataDto data) {
    final preparedData = data.copyWith(isInWatchlist: true);

    return _database
        .into(_database.moviesTable)
        .insertOnConflictUpdate(preparedData.toTableData());
  }

  @override
  Future<void> addToWatchlistSeries(SeriesShortDataDto data) {
    final preparedData = data.copyWith(isInWatchlist: true);

    return _database
        .into(_database.seriesTable)
        .insertOnConflictUpdate(preparedData.toTableData());
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

extension _MoviesMapper on MoviesTableData {
  MovieShortDataDto toDto() {
    return MovieShortDataDto(
      id: id,
      posterUrl: posterUrl,
      genres: genres,
      premiereDate: premiereDate,
      title: title,
      tmdbRating: tmdbRating,
      userRating: userRating,
      isInWatchlist: isInWatchlist,
      isWatched: isWatched,
    );
  }
}

extension _SeriesMapper on SeriesTableData {
  SeriesShortDataDto toDto() {
    return SeriesShortDataDto(
      id: id,
      posterUrl: posterUrl,
      genres: genres,
      premiereDate: premiereDate,
      title: title,
      tmdbRating: tmdbRating,
      userRating: userRating,
      isInWatchlist: isInWatchlist,
      isWatched: isWatched,
    );
  }
}

extension _MoviesTableMapper on MovieShortDataDto {
  MoviesTableCompanion toTableData() {
    return MoviesTableCompanion(
      tmdbId: Value(id!),
      posterUrl: Value(posterUrl),
      genres: Value(genres),
      premiereDate: Value(premiereDate),
      title: Value(title),
      tmdbRating: Value(tmdbRating),
      userRating: Value(userRating),
      isInWatchlist: Value(isInWatchlist),
      isWatched: Value(isWatched),
    );
  }
}

extension _SeriesTableMapper on SeriesShortDataDto {
  SeriesTableCompanion toTableData() {
    return SeriesTableCompanion(
      tmdbId: Value(id!),
      posterUrl: Value(posterUrl),
      genres: Value(genres),
      premiereDate: Value(premiereDate),
      title: Value(title),
      tmdbRating: Value(tmdbRating),
      userRating: Value(userRating),
      isInWatchlist: Value(isInWatchlist),
      isWatched: Value(isWatched),
    );
  }
}
