// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'videos_data_dto.dart';

class VideosDataDtoMapper extends ClassMapperBase<VideosDataDto> {
  VideosDataDtoMapper._();

  static VideosDataDtoMapper? _instance;
  static VideosDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VideosDataDtoMapper._());
      VideoDataDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'VideosDataDto';

  static List<VideoDataDto>? _$results(VideosDataDto v) => v.results;
  static const Field<VideosDataDto, List<VideoDataDto>> _f$results =
      Field('results', _$results, opt: true);

  @override
  final MappableFields<VideosDataDto> fields = const {
    #results: _f$results,
  };
  @override
  final bool ignoreNull = true;

  static VideosDataDto _instantiate(DecodingData data) {
    return VideosDataDto(results: data.dec(_f$results));
  }

  @override
  final Function instantiate = _instantiate;

  static VideosDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VideosDataDto>(map);
  }

  static VideosDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<VideosDataDto>(json);
  }
}

mixin VideosDataDtoMappable {
  String toJsonString() {
    return VideosDataDtoMapper.ensureInitialized()
        .encodeJson<VideosDataDto>(this as VideosDataDto);
  }

  Map<String, dynamic> toJson() {
    return VideosDataDtoMapper.ensureInitialized()
        .encodeMap<VideosDataDto>(this as VideosDataDto);
  }

  VideosDataDtoCopyWith<VideosDataDto, VideosDataDto, VideosDataDto>
      get copyWith => _VideosDataDtoCopyWithImpl<VideosDataDto, VideosDataDto>(
          this as VideosDataDto, $identity, $identity);
  @override
  String toString() {
    return VideosDataDtoMapper.ensureInitialized()
        .stringifyValue(this as VideosDataDto);
  }

  @override
  bool operator ==(Object other) {
    return VideosDataDtoMapper.ensureInitialized()
        .equalsValue(this as VideosDataDto, other);
  }

  @override
  int get hashCode {
    return VideosDataDtoMapper.ensureInitialized()
        .hashValue(this as VideosDataDto);
  }
}

extension VideosDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VideosDataDto, $Out> {
  VideosDataDtoCopyWith<$R, VideosDataDto, $Out> get $asVideosDataDto =>
      $base.as((v, t, t2) => _VideosDataDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class VideosDataDtoCopyWith<$R, $In extends VideosDataDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, VideoDataDto,
      VideoDataDtoCopyWith<$R, VideoDataDto, VideoDataDto>>? get results;
  $R call({List<VideoDataDto>? results});
  VideosDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _VideosDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VideosDataDto, $Out>
    implements VideosDataDtoCopyWith<$R, VideosDataDto, $Out> {
  _VideosDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VideosDataDto> $mapper =
      VideosDataDtoMapper.ensureInitialized();
  @override
  ListCopyWith<$R, VideoDataDto,
          VideoDataDtoCopyWith<$R, VideoDataDto, VideoDataDto>>?
      get results => $value.results != null
          ? ListCopyWith($value.results!, (v, t) => v.copyWith.$chain(t),
              (v) => call(results: v))
          : null;
  @override
  $R call({Object? results = $none}) =>
      $apply(FieldCopyWithData({if (results != $none) #results: results}));
  @override
  VideosDataDto $make(CopyWithData data) =>
      VideosDataDto(results: data.get(#results, or: $value.results));

  @override
  VideosDataDtoCopyWith<$R2, VideosDataDto, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _VideosDataDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
