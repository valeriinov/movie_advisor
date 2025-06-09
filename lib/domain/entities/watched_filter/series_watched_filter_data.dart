import 'package:dart_mappable/dart_mappable.dart';

import '../base_media/country.dart';
import '../mappable_entity.dart';
import '../series/series_genre.dart';
import 'watched_filter_data.dart';
import 'watched_sort_by.dart';

part 'series_watched_filter_data.mapper.dart';

@mappableEntity
class SeriesWatchedFilterData extends WatchedFilterData
    with SeriesWatchedFilterDataMappable {
  final List<SeriesGenre> withGenres;
  final List<SeriesGenre> withoutGenres;

  const SeriesWatchedFilterData({
    super.sortBy = WatchedSortBy.watchedDateDesc,
    super.withCountries = const [],
    super.includeWatchlist = true,
    this.withGenres = const [],
    this.withoutGenres = const [],
    super.fromPremiereDate,
    super.toPremiereDate,
    super.fromWatchedDate,
    super.toWatchedDate,
  });
}
