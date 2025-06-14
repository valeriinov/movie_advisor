import 'package:dart_mappable/dart_mappable.dart';

import '../base_media/country.dart';
import '../mappable_entity.dart';
import '../series/series_genre.dart';
import 'watchlist_filter_data.dart';
import 'watchlist_sort_by.dart';

part 'series_watchlist_filter_data.mapper.dart';

@mappableEntity
class SeriesWatchlistFilterData extends WatchlistFilterData
    with SeriesWatchlistFilterDataMappable {
  final List<SeriesGenre> withGenres;
  final List<SeriesGenre> withoutGenres;

  const SeriesWatchlistFilterData({
    super.sortBy = WatchlistSortBy.addedDateAsc,
    super.withCountries = const [],
    super.includeWatched = true,
    this.withGenres = const [],
    this.withoutGenres = const [],
    super.fromPremiereDate,
    super.toPremiereDate,
    super.fromAddedDate,
    super.toAddedDate,
  });
}
