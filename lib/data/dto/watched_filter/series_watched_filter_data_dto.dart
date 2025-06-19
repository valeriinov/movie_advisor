import 'package:dart_mappable/dart_mappable.dart';

import '../country_dto.dart';
import '../series/series_genre_dto.dart';
import 'watched_sort_by_dto.dart';

part 'series_watched_filter_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class SeriesWatchedFilterDataDto with SeriesWatchedFilterDataDtoMappable {
  final WatchedSortByDto? sortBy;
  final List<CountryDto>? withCountries;
  final bool? includeWatchlist;
  final List<SeriesGenreDto>? withGenres;
  final List<SeriesGenreDto>? withoutGenres;
  final DateTime? fromPremiereDate;
  final DateTime? toPremiereDate;
  final DateTime? fromWatchedDate;
  final DateTime? toWatchedDate;

  const SeriesWatchedFilterDataDto({
    this.sortBy,
    this.withCountries,
    this.includeWatchlist,
    this.withGenres,
    this.withoutGenres,
    this.fromPremiereDate,
    this.toPremiereDate,
    this.fromWatchedDate,
    this.toWatchedDate,
  });

  factory SeriesWatchedFilterDataDto.fromJson(Map<String, dynamic> json) =>
      SeriesWatchedFilterDataDtoMapper.fromJson(json);
}
