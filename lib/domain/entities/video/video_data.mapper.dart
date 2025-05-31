// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'video_data.dart';

class VideoDataMapper extends ClassMapperBase<VideoData> {
  VideoDataMapper._();

  static VideoDataMapper? _instance;
  static VideoDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VideoDataMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'VideoData';

  static String _$id(VideoData v) => v.id;
  static const Field<VideoData, String> _f$id = Field(
    'id',
    _$id,
    opt: true,
    def: '',
  );
  static String _$key(VideoData v) => v.key;
  static const Field<VideoData, String> _f$key = Field(
    'key',
    _$key,
    opt: true,
    def: '',
  );
  static VideoType _$type(VideoData v) => v.type;
  static const Field<VideoData, VideoType> _f$type = Field(
    'type',
    _$type,
    opt: true,
    def: VideoType.none,
  );
  static bool _$official(VideoData v) => v.official;
  static const Field<VideoData, bool> _f$official = Field(
    'official',
    _$official,
    opt: true,
    def: false,
  );

  @override
  final MappableFields<VideoData> fields = const {
    #id: _f$id,
    #key: _f$key,
    #type: _f$type,
    #official: _f$official,
  };

  static VideoData _instantiate(DecodingData data) {
    return VideoData(
      id: data.dec(_f$id),
      key: data.dec(_f$key),
      type: data.dec(_f$type),
      official: data.dec(_f$official),
    );
  }

  @override
  final Function instantiate = _instantiate;
}

mixin VideoDataMappable {
  VideoDataCopyWith<VideoData, VideoData, VideoData> get copyWith =>
      _VideoDataCopyWithImpl<VideoData, VideoData>(
        this as VideoData,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return VideoDataMapper.ensureInitialized().stringifyValue(
      this as VideoData,
    );
  }

  @override
  bool operator ==(Object other) {
    return VideoDataMapper.ensureInitialized().equalsValue(
      this as VideoData,
      other,
    );
  }

  @override
  int get hashCode {
    return VideoDataMapper.ensureInitialized().hashValue(this as VideoData);
  }
}

extension VideoDataValueCopy<$R, $Out> on ObjectCopyWith<$R, VideoData, $Out> {
  VideoDataCopyWith<$R, VideoData, $Out> get $asVideoData =>
      $base.as((v, t, t2) => _VideoDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class VideoDataCopyWith<$R, $In extends VideoData, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, String? key, VideoType? type, bool? official});
  VideoDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _VideoDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VideoData, $Out>
    implements VideoDataCopyWith<$R, VideoData, $Out> {
  _VideoDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VideoData> $mapper =
      VideoDataMapper.ensureInitialized();
  @override
  $R call({String? id, String? key, VideoType? type, bool? official}) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (key != null) #key: key,
      if (type != null) #type: type,
      if (official != null) #official: official,
    }),
  );
  @override
  VideoData $make(CopyWithData data) => VideoData(
    id: data.get(#id, or: $value.id),
    key: data.get(#key, or: $value.key),
    type: data.get(#type, or: $value.type),
    official: data.get(#official, or: $value.official),
  );

  @override
  VideoDataCopyWith<$R2, VideoData, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _VideoDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
