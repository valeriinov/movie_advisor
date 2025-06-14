import 'package:dart_mappable/dart_mappable.dart';

import '../base_media/country.dart';
import '../mappable_entity.dart';
import 'watchlist_sort_by.dart';

part 'watchlist_filter_data.mapper.dart';

@mappableEntity
class WatchlistFilterData with WatchlistFilterDataMappable {
  final WatchlistSortBy sortBy;
  final List<Country> withCountries;
  final bool includeWatched;
  final DateTime? fromPremiereDate;
  final DateTime? toPremiereDate;
  final DateTime? fromAddedDate;
  final DateTime? toAddedDate;

  const WatchlistFilterData({
    required this.sortBy,
    required this.withCountries,
    required this.includeWatched,
    this.fromPremiereDate,
    this.toPremiereDate,
    this.fromAddedDate,
    this.toAddedDate,
  });
}
