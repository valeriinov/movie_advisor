import 'package:dart_mappable/dart_mappable.dart';

part 'video_type_dto.mapper.dart';

@MappableEnum(mode: ValuesMode.indexed, defaultValue: VideoTypeDto.none)
enum VideoTypeDto {
  @MappableValue('Trailer')
  trailer,
  @MappableValue('Teaser')
  teaser,
  none,
}
