import 'package:dart_mappable/dart_mappable.dart';

import '../country_dto.dart';
import '../series/series_genre_dto.dart';
import 'watchlist_sort_by_dto.dart';

part 'series_watchlist_filter_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class SeriesWatchlistFilterDataDto with SeriesWatchlistFilterDataDtoMappable {
  final WatchlistSortByDto? sortBy;
  final List<CountryDto>? withCountries;
  final bool? includeWatched;
  final List<SeriesGenreDto>? withGenres;
  final List<SeriesGenreDto>? withoutGenres;
  final DateTime? fromDate;
  final DateTime? toDate;

  const SeriesWatchlistFilterDataDto({
    this.sortBy,
    this.withCountries,
    this.includeWatched,
    this.withGenres,
    this.withoutGenres,
    this.fromDate,
    this.toDate,
  });

  factory SeriesWatchlistFilterDataDto.fromJson(Map<String, dynamic> json) =>
      SeriesWatchlistFilterDataDtoMapper.fromJson(json);
}
