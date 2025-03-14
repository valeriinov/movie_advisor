import '../../domain/entities/video/video_data.dart';
import '../../domain/entities/video/video_type.dart';
import '../dto/video/video_data_dto.dart';
import '../dto/video/video_type_dto.dart';
import '../dto/video/videos_data_dto.dart';
import 'app_mapper.dart';

final class AppVideoMapper extends AppMapper {
  List<VideoData> mapVideosDataDtoTiDomain(VideosDataDto dto) {
    return dto.results?.map(_mapVideoDataDtoToDomain).toList() ?? [];
  }

  VideoData _mapVideoDataDtoToDomain(VideoDataDto dto) {
    return VideoData(
      id: dto.id ?? '',
      key: dto.key ?? '',
      type: _mapVideoTypeDtoToDomain(dto.type),
      official: dto.official ?? false,
    );
  }

  VideoType _mapVideoTypeDtoToDomain(VideoTypeDto? type) {
    if (type == null) return VideoType.none;

    return VideoType.values.firstWhere(
      (e) => e.name == type.name,
      orElse: () => VideoType.none,
    );
  }
}
