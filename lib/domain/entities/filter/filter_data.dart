import 'package:dart_mappable/dart_mappable.dart';

import '../base_media/country.dart';
import '../mappable_entity.dart';
import 'sort_by.dart';

part 'filter_data.mapper.dart';

@mappableEntity
class FilterData with FilterDataMappable {
  final int? year;
  final SortBy sortBy;
  final List<Country> withCountries;
  final bool includeWatched;
  final bool includeWatchlist;
  final DateTime? fromDate;
  final DateTime? toDate;

  const FilterData({
    required this.year,
    required this.sortBy,
    required this.withCountries,
    required this.includeWatched,
    required this.includeWatchlist,
    this.fromDate,
    this.toDate,
  });
}
