// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'media_load_info.dart';

class MediaLoadInfoMapper extends ClassMapperBase<MediaLoadInfo> {
  MediaLoadInfoMapper._();

  static MediaLoadInfoMapper? _instance;
  static MediaLoadInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MediaLoadInfoMapper._());
      ListWithPaginationDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MediaLoadInfo';
  @override
  Function get typeFactory => <T>(f) => f<MediaLoadInfo<T>>();

  static bool _$isInitialized(MediaLoadInfo v) => v.isInitialized;
  static const Field<MediaLoadInfo, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: false);
  static bool _$isNextPageLoading(MediaLoadInfo v) => v.isNextPageLoading;
  static const Field<MediaLoadInfo, bool> _f$isNextPageLoading =
      Field('isNextPageLoading', _$isNextPageLoading, opt: true, def: false);
  static ListWithPaginationData<dynamic> _$mediaData(MediaLoadInfo v) =>
      v.mediaData;
  static dynamic _arg$mediaData<T>(f) => f<ListWithPaginationData<T>>();
  static const Field<MediaLoadInfo, ListWithPaginationData<dynamic>>
      _f$mediaData =
      Field('mediaData', _$mediaData, opt: true, arg: _arg$mediaData);

  @override
  final MappableFields<MediaLoadInfo> fields = const {
    #isInitialized: _f$isInitialized,
    #isNextPageLoading: _f$isNextPageLoading,
    #mediaData: _f$mediaData,
  };

  static MediaLoadInfo<T> _instantiate<T>(DecodingData data) {
    return MediaLoadInfo(
        isInitialized: data.dec(_f$isInitialized),
        isNextPageLoading: data.dec(_f$isNextPageLoading),
        mediaData: data.dec(_f$mediaData));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin MediaLoadInfoMappable<T> {
  MediaLoadInfoCopyWith<MediaLoadInfo<T>, MediaLoadInfo<T>, MediaLoadInfo<T>, T>
      get copyWith => _MediaLoadInfoCopyWithImpl(
          this as MediaLoadInfo<T>, $identity, $identity);
  @override
  String toString() {
    return MediaLoadInfoMapper.ensureInitialized()
        .stringifyValue(this as MediaLoadInfo<T>);
  }

  @override
  bool operator ==(Object other) {
    return MediaLoadInfoMapper.ensureInitialized()
        .equalsValue(this as MediaLoadInfo<T>, other);
  }

  @override
  int get hashCode {
    return MediaLoadInfoMapper.ensureInitialized()
        .hashValue(this as MediaLoadInfo<T>);
  }
}

extension MediaLoadInfoValueCopy<$R, $Out, T>
    on ObjectCopyWith<$R, MediaLoadInfo<T>, $Out> {
  MediaLoadInfoCopyWith<$R, MediaLoadInfo<T>, $Out, T> get $asMediaLoadInfo =>
      $base.as((v, t, t2) => _MediaLoadInfoCopyWithImpl(v, t, t2));
}

abstract class MediaLoadInfoCopyWith<$R, $In extends MediaLoadInfo<T>, $Out, T>
    implements ClassCopyWith<$R, $In, $Out> {
  ListWithPaginationDataCopyWith<$R, ListWithPaginationData<T>,
      ListWithPaginationData<T>, T> get mediaData;
  $R call(
      {bool? isInitialized,
      bool? isNextPageLoading,
      ListWithPaginationData<T>? mediaData});
  MediaLoadInfoCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MediaLoadInfoCopyWithImpl<$R, $Out, T>
    extends ClassCopyWithBase<$R, MediaLoadInfo<T>, $Out>
    implements MediaLoadInfoCopyWith<$R, MediaLoadInfo<T>, $Out, T> {
  _MediaLoadInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MediaLoadInfo> $mapper =
      MediaLoadInfoMapper.ensureInitialized();
  @override
  ListWithPaginationDataCopyWith<$R, ListWithPaginationData<T>,
          ListWithPaginationData<T>, T>
      get mediaData => ($value.mediaData as ListWithPaginationData<T>)
          .copyWith
          .$chain((v) => call(mediaData: v));
  @override
  $R call(
          {bool? isInitialized,
          bool? isNextPageLoading,
          Object? mediaData = $none}) =>
      $apply(FieldCopyWithData({
        if (isInitialized != null) #isInitialized: isInitialized,
        if (isNextPageLoading != null) #isNextPageLoading: isNextPageLoading,
        if (mediaData != $none) #mediaData: mediaData
      }));
  @override
  MediaLoadInfo<T> $make(CopyWithData data) => MediaLoadInfo(
      isInitialized: data.get(#isInitialized, or: $value.isInitialized),
      isNextPageLoading:
          data.get(#isNextPageLoading, or: $value.isNextPageLoading),
      mediaData: data.get(#mediaData, or: $value.mediaData));

  @override
  MediaLoadInfoCopyWith<$R2, MediaLoadInfo<T>, $Out2, T> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MediaLoadInfoCopyWithImpl($value, $cast, t);
}
