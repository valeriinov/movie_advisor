import 'package:dart_mappable/dart_mappable.dart';

import '../mappable_entity.dart';
import 'video_type.dart';

part 'video_data.mapper.dart';

@mappableEntity
class VideoData with VideoDataMappable {
  final String id;
  final String key;
  final VideoType type;
  final bool official;

  const VideoData({
    this.id = '',
    this.key = '',
    this.type = VideoType.none,
    this.official = false,
  });
}
