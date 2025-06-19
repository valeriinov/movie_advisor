import 'package:dart_mappable/dart_mappable.dart';

import '../base_media/country.dart';
import '../mappable_entity.dart';
import 'watched_sort_by.dart';

part 'watched_filter_data.mapper.dart';

@mappableEntity
class WatchedFilterData with WatchedFilterDataMappable {
  final WatchedSortBy sortBy;
  final List<Country> withCountries;
  final bool includeWatchlist;
  final DateTime? fromPremiereDate;
  final DateTime? toPremiereDate;
  final DateTime? fromWatchedDate;
  final DateTime? toWatchedDate;

  const WatchedFilterData({
    required this.sortBy,
    required this.withCountries,
    required this.includeWatchlist,
    this.fromPremiereDate,
    this.toPremiereDate,
    this.fromWatchedDate,
    this.toWatchedDate,
  });
}
