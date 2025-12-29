import 'package:dart_mappable/dart_mappable.dart';

part 'series_season_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class SeriesSeasonDataDto with SeriesSeasonDataDtoMappable {
  final int? seasonNumber;
  final int? episodeCount;

  const SeriesSeasonDataDto({this.seasonNumber, this.episodeCount});

  factory SeriesSeasonDataDto.fromJson(Map<String, dynamic> json) =>
      SeriesSeasonDataDtoMapper.fromJson(json);
}
