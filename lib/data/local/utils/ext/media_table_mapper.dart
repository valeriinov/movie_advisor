import 'package:drift/drift.dart';

import '../../../dto/movie/movie_short_data_dto.dart';
import '../../../dto/series/series_short_data_dto.dart';
import '../../app_local_database.dart';

extension MoviesMapper on MoviesTableData {
  MovieShortDataDto toDto([String? langCode]) {
    return MovieShortDataDto(
      id: tmdbId,
      posterUrl: langCode != null ? localizedPosterUrl?.value(langCode) : null,
      genres: genres,
      originCountry: originCountry,
      premiereDate: premiereDate,
      title: langCode != null ? localizedTitle?.value(langCode) : null,
      tmdbRating: tmdbRating,
      userRating: userRating,
      isInWatchlist: isInWatchlist,
      isWatched: isWatched,
      updatedAt: updatedAt,
    );
  }
}

extension SeriesMapper on SeriesTableData {
  SeriesShortDataDto toDto([String? langCode]) {
    return SeriesShortDataDto(
      id: tmdbId,
      posterUrl: langCode != null ? localizedPosterUrl?.value(langCode) : null,
      genres: genres,
      originCountry: originCountry,
      premiereDate: premiereDate,
      title: langCode != null ? localizedTitle?.value(langCode) : null,
      tmdbRating: tmdbRating,
      userRating: userRating,
      isInWatchlist: isInWatchlist,
      isWatched: isWatched,
      updatedAt: updatedAt,
    );
  }
}

extension MoviesTableMapper on MovieShortDataDto {
  MoviesTableCompanion toTableData([DateTime? updatedAt]) {
    return MoviesTableCompanion(
      tmdbId: Value(id!),
      genres: Value(genres),
      originCountry: Value(originCountry),
      premiereDate: Value(premiereDate),
      tmdbRating: Value(tmdbRating),
      userRating: Value(userRating),
      isInWatchlist: Value(isInWatchlist),
      isWatched: Value(isWatched),
      updatedAt: Value(updatedAt ?? DateTime.now()),
      localizedTitle: Value(localizedTitle),
      localizedPosterUrl: Value(localizedPosterUrl),
    );
  }
}

extension SeriesTableMapper on SeriesShortDataDto {
  SeriesTableCompanion toTableData([DateTime? updatedAt]) {
    return SeriesTableCompanion(
      tmdbId: Value(id!),
      genres: Value(genres),
      originCountry: Value(originCountry),
      premiereDate: Value(premiereDate),
      tmdbRating: Value(tmdbRating),
      userRating: Value(userRating),
      isInWatchlist: Value(isInWatchlist),
      isWatched: Value(isWatched),
      updatedAt: Value(updatedAt ?? DateTime.now()),
      localizedTitle: Value(localizedTitle),
      localizedPosterUrl: Value(localizedPosterUrl),
    );
  }
}
