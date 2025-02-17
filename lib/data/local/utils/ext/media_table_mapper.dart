import 'package:drift/drift.dart';

import '../../../dto/movie/movie_short_data_dto.dart';
import '../../../dto/series/series_short_data_dto.dart';
import '../../app_local_database.dart';

extension MoviesMapper on MoviesTableData {
  MovieShortDataDto toDto() {
    return MovieShortDataDto(
      id: tmdbId,
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

extension SeriesMapper on SeriesTableData {
  SeriesShortDataDto toDto() {
    return SeriesShortDataDto(
      id: tmdbId,
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

extension MoviesTableMapper on MovieShortDataDto {
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
      updatedAt: Value(DateTime.now()),
    );
  }
}

extension SeriesTableMapper on SeriesShortDataDto {
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
      updatedAt: Value(DateTime.now()),
    );
  }
}
