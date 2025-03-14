// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'video_type_dto.dart';

class VideoTypeDtoMapper extends EnumMapper<VideoTypeDto> {
  VideoTypeDtoMapper._();

  static VideoTypeDtoMapper? _instance;
  static VideoTypeDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VideoTypeDtoMapper._());
    }
    return _instance!;
  }

  static VideoTypeDto fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  VideoTypeDto decode(dynamic value) {
    switch (value) {
      case 'Trailer':
        return VideoTypeDto.trailer;
      case 'Teaser':
        return VideoTypeDto.teaser;
      case 2:
        return VideoTypeDto.none;
      default:
        return VideoTypeDto.values[2];
    }
  }

  @override
  dynamic encode(VideoTypeDto self) {
    switch (self) {
      case VideoTypeDto.trailer:
        return 'Trailer';
      case VideoTypeDto.teaser:
        return 'Teaser';
      case VideoTypeDto.none:
        return 2;
    }
  }
}

extension VideoTypeDtoMapperExtension on VideoTypeDto {
  dynamic toValue() {
    VideoTypeDtoMapper.ensureInitialized();
    return MapperContainer.globals.toValue<VideoTypeDto>(this);
  }
}
