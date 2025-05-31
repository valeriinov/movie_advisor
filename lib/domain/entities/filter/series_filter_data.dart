import 'package:dart_mappable/dart_mappable.dart';

import '../base_media/country.dart';
import '../mappable_entity.dart';
import '../series/series_genre.dart';
import 'filter_data.dart';
import 'sort_by.dart';

part 'series_filter_data.mapper.dart';

@mappableEntity
class SeriesFilterData extends FilterData with SeriesFilterDataMappable {
  final List<SeriesGenre> withGenres;
  final List<SeriesGenre> withoutGenres;

  const SeriesFilterData({
    super.sortBy = SortBy.popularityDesc,
    super.withCountries = const [],
    super.includeWatched = true,
    super.includeWatchlist = true,
    this.withGenres = const [],
    this.withoutGenres = const [],
    super.fromDate,
    super.toDate,
  });
}
