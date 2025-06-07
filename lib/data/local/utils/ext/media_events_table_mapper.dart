import 'package:drift/drift.dart';

import '../../../dto/movie/movie_watch_event_data_dto.dart';
import '../../../dto/series/series_watch_event_data_dto.dart';
import '../../app_local_database.dart';

extension MoviesWatchEventMapper on MoviesEventsTableData {
  MovieWatchEventDataDto toDto() {
    return MovieWatchEventDataDto(
      id: id,
      tmdbId: tmdbId,
      type: type,
      userRating: userRating,
      at: at,
    );
  }
}

extension SeriesWatchEventMapper on SeriesEventsTableData {
  SeriesWatchEventDataDto toDto() {
    return SeriesWatchEventDataDto(
      id: id,
      tmdbId: tmdbId,
      type: type,
      userRating: userRating,
      at: at,
    );
  }
}

extension MoviesEventsTableMapper on MovieWatchEventDataDto {
  MoviesEventsTableCompanion toTableData() {
    return MoviesEventsTableCompanion(
      tmdbId: tmdbId != null ? Value(tmdbId!) : const Value.absent(),
      type: Value(type),
      userRating: Value(userRating),
      at: at != null ? Value(at!) : const Value.absent(),
    );
  }
}

extension SeriesEventsTableMapper on SeriesWatchEventDataDto {
  SeriesEventsTableCompanion toTableData() {
    return SeriesEventsTableCompanion(
      tmdbId: tmdbId != null ? Value(tmdbId!) : const Value.absent(),
      type: Value(type),
      userRating: Value(userRating),
      at: at != null ? Value(at!) : const Value.absent(),
    );
  }
}
