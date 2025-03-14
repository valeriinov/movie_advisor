import 'package:dart_mappable/dart_mappable.dart';

import 'video_type_dto.dart';

part 'video_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class VideoDataDto with VideoDataDtoMappable {
  final String? id;
  final String? key;
  final VideoTypeDto? type;
  final bool? official;

  const VideoDataDto({this.id, this.key, this.type, this.official});

  factory VideoDataDto.fromJson(Map<String, dynamic> json) =>
      VideoDataDtoMapper.fromJson(json);
}
