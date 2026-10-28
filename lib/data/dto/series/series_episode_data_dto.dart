import 'package:dart_mappable/dart_mappable.dart';

import '../../utils/date_mapper_hook.dart';

part 'series_episode_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class SeriesEpisodeDataDto with SeriesEpisodeDataDtoMappable {
  final int? seasonNumber;
  final int? episodeNumber;
  @MappableField(hook: DateMapperHook())
  final DateTime? airDate;

  const SeriesEpisodeDataDto({
    this.seasonNumber,
    this.episodeNumber,
    this.airDate,
  });

  factory SeriesEpisodeDataDto.fromJson(Map<String, dynamic> json) =>
      SeriesEpisodeDataDtoMapper.fromJson(json);
}
