// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'video_data_dto.dart';

class VideoDataDtoMapper extends ClassMapperBase<VideoDataDto> {
  VideoDataDtoMapper._();

  static VideoDataDtoMapper? _instance;
  static VideoDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VideoDataDtoMapper._());
      VideoTypeDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'VideoDataDto';

  static String? _$id(VideoDataDto v) => v.id;
  static const Field<VideoDataDto, String> _f$id = Field('id', _$id, opt: true);
  static String? _$key(VideoDataDto v) => v.key;
  static const Field<VideoDataDto, String> _f$key =
      Field('key', _$key, opt: true);
  static VideoTypeDto? _$type(VideoDataDto v) => v.type;
  static const Field<VideoDataDto, VideoTypeDto> _f$type =
      Field('type', _$type, opt: true);
  static bool? _$official(VideoDataDto v) => v.official;
  static const Field<VideoDataDto, bool> _f$official =
      Field('official', _$official, opt: true);

  @override
  final MappableFields<VideoDataDto> fields = const {
    #id: _f$id,
    #key: _f$key,
    #type: _f$type,
    #official: _f$official,
  };
  @override
  final bool ignoreNull = true;

  static VideoDataDto _instantiate(DecodingData data) {
    return VideoDataDto(
        id: data.dec(_f$id),
        key: data.dec(_f$key),
        type: data.dec(_f$type),
        official: data.dec(_f$official));
  }

  @override
  final Function instantiate = _instantiate;

  static VideoDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VideoDataDto>(map);
  }

  static VideoDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<VideoDataDto>(json);
  }
}

mixin VideoDataDtoMappable {
  String toJsonString() {
    return VideoDataDtoMapper.ensureInitialized()
        .encodeJson<VideoDataDto>(this as VideoDataDto);
  }

  Map<String, dynamic> toJson() {
    return VideoDataDtoMapper.ensureInitialized()
        .encodeMap<VideoDataDto>(this as VideoDataDto);
  }

  VideoDataDtoCopyWith<VideoDataDto, VideoDataDto, VideoDataDto> get copyWith =>
      _VideoDataDtoCopyWithImpl(this as VideoDataDto, $identity, $identity);
  @override
  String toString() {
    return VideoDataDtoMapper.ensureInitialized()
        .stringifyValue(this as VideoDataDto);
  }

  @override
  bool operator ==(Object other) {
    return VideoDataDtoMapper.ensureInitialized()
        .equalsValue(this as VideoDataDto, other);
  }

  @override
  int get hashCode {
    return VideoDataDtoMapper.ensureInitialized()
        .hashValue(this as VideoDataDto);
  }
}

extension VideoDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VideoDataDto, $Out> {
  VideoDataDtoCopyWith<$R, VideoDataDto, $Out> get $asVideoDataDto =>
      $base.as((v, t, t2) => _VideoDataDtoCopyWithImpl(v, t, t2));
}

abstract class VideoDataDtoCopyWith<$R, $In extends VideoDataDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, String? key, VideoTypeDto? type, bool? official});
  VideoDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _VideoDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VideoDataDto, $Out>
    implements VideoDataDtoCopyWith<$R, VideoDataDto, $Out> {
  _VideoDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VideoDataDto> $mapper =
      VideoDataDtoMapper.ensureInitialized();
  @override
  $R call(
          {Object? id = $none,
          Object? key = $none,
          Object? type = $none,
          Object? official = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (key != $none) #key: key,
        if (type != $none) #type: type,
        if (official != $none) #official: official
      }));
  @override
  VideoDataDto $make(CopyWithData data) => VideoDataDto(
      id: data.get(#id, or: $value.id),
      key: data.get(#key, or: $value.key),
      type: data.get(#type, or: $value.type),
      official: data.get(#official, or: $value.official));

  @override
  VideoDataDtoCopyWith<$R2, VideoDataDto, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _VideoDataDtoCopyWithImpl($value, $cast, t);
}
