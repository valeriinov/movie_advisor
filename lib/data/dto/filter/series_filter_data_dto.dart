import 'package:dart_mappable/dart_mappable.dart';

import '../../utils/date_mapper_hook.dart';
import '../country_dto.dart';
import '../series/series_genre_dto.dart';
import 'sort_by_dto.dart';

part 'series_filter_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class SeriesFilterDataDto with SeriesFilterDataDtoMappable {
  final SortByDto? sortBy;
  final List<CountryDto>? withCountries;
  final List<SeriesGenreDto>? withGenres;
  final List<SeriesGenreDto>? withoutGenres;
  final bool? includeWatched;
  final bool? includeWatchlist;
  @MappableField(hook: DateMapperHook())
  final DateTime? fromDate;
  @MappableField(hook: DateMapperHook())
  final DateTime? toDate;

  const SeriesFilterDataDto({
    this.sortBy,
    this.withCountries,
    this.withGenres,
    this.withoutGenres,
    this.includeWatched,
    this.includeWatchlist,
    this.fromDate,
    this.toDate,
  });

  factory SeriesFilterDataDto.fromJson(Map<String, dynamic> json) =>
      SeriesFilterDataDtoMapper.fromJson(json);
}
