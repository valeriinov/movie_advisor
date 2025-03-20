import 'package:dart_mappable/dart_mappable.dart';

import '../country_dto.dart';
import 'series_genre_dto.dart';

part 'series_rate_filter_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class SeriesRateFilterDataDto with SeriesRateFilterDataDtoMappable {
  final List<int>? excludeIds;
  final List<SeriesGenreDto>? targetGenres;
  final List<CountryDto>? targetCountries;

  const SeriesRateFilterDataDto({
    this.excludeIds,
    this.targetGenres,
    this.targetCountries,
  });

  factory SeriesRateFilterDataDto.fromJson(Map<String, dynamic> json) =>
      SeriesRateFilterDataDtoMapper.fromJson(json);
}
