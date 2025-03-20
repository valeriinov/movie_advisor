import 'package:dart_mappable/dart_mappable.dart';

import '../mappable_entity.dart';
import 'country.dart';
import 'sort_by.dart';

part 'filter_data.mapper.dart';

@mappableEntity
class FilterData with FilterDataMappable {
  final int? year;
  final SortBy sortBy;
  final List<Country> withCountries;

  const FilterData({
    required this.year,
    required this.sortBy,
    required this.withCountries,
  });
}
