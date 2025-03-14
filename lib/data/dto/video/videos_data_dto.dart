import 'package:dart_mappable/dart_mappable.dart';

import 'video_data_dto.dart';

part 'videos_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class VideosDataDto with VideosDataDtoMappable {
  final List<VideoDataDto>? results;

  const VideosDataDto({this.results});

  factory VideosDataDto.fromJson(Map<String, dynamic> json) =>
      VideosDataDtoMapper.fromJson(json);
}
