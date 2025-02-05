// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'series_load_info.dart';

class SeriesLoadInfoMapper extends ClassMapperBase<SeriesLoadInfo> {
  SeriesLoadInfoMapper._();

  static SeriesLoadInfoMapper? _instance;
  static SeriesLoadInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SeriesLoadInfoMapper._());
      ListWithPaginationDataMapper.ensureInitialized();
      SeriesShortDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SeriesLoadInfo';

  static bool _$isInitialized(SeriesLoadInfo v) => v.isInitialized;
  static const Field<SeriesLoadInfo, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: false);
  static bool _$isNextPageLoading(SeriesLoadInfo v) => v.isNextPageLoading;
  static const Field<SeriesLoadInfo, bool> _f$isNextPageLoading =
      Field('isNextPageLoading', _$isNextPageLoading, opt: true, def: false);
  static ListWithPaginationData<SeriesShortData> _$seriesData(
          SeriesLoadInfo v) =>
      v.seriesData;
  static const Field<SeriesLoadInfo, ListWithPaginationData<SeriesShortData>>
      _f$seriesData = Field('seriesData', _$seriesData,
          opt: true,
          def: const ListWithPaginationData<SeriesShortData>(items: []));

  @override
  final MappableFields<SeriesLoadInfo> fields = const {
    #isInitialized: _f$isInitialized,
    #isNextPageLoading: _f$isNextPageLoading,
    #seriesData: _f$seriesData,
  };

  static SeriesLoadInfo _instantiate(DecodingData data) {
    return SeriesLoadInfo(
        isInitialized: data.dec(_f$isInitialized),
        isNextPageLoading: data.dec(_f$isNextPageLoading),
        seriesData: data.dec(_f$seriesData));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin SeriesLoadInfoMappable {
  SeriesLoadInfoCopyWith<SeriesLoadInfo, SeriesLoadInfo, SeriesLoadInfo>
      get copyWith => _SeriesLoadInfoCopyWithImpl(
          this as SeriesLoadInfo, $identity, $identity);
  @override
  String toString() {
    return SeriesLoadInfoMapper.ensureInitialized()
        .stringifyValue(this as SeriesLoadInfo);
  }

  @override
  bool operator ==(Object other) {
    return SeriesLoadInfoMapper.ensureInitialized()
        .equalsValue(this as SeriesLoadInfo, other);
  }

  @override
  int get hashCode {
    return SeriesLoadInfoMapper.ensureInitialized()
        .hashValue(this as SeriesLoadInfo);
  }
}

extension SeriesLoadInfoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SeriesLoadInfo, $Out> {
  SeriesLoadInfoCopyWith<$R, SeriesLoadInfo, $Out> get $asSeriesLoadInfo =>
      $base.as((v, t, t2) => _SeriesLoadInfoCopyWithImpl(v, t, t2));
}

abstract class SeriesLoadInfoCopyWith<$R, $In extends SeriesLoadInfo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListWithPaginationDataCopyWith<$R, ListWithPaginationData<SeriesShortData>,
      ListWithPaginationData<SeriesShortData>, SeriesShortData> get seriesData;
  $R call(
      {bool? isInitialized,
      bool? isNextPageLoading,
      ListWithPaginationData<SeriesShortData>? seriesData});
  SeriesLoadInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SeriesLoadInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SeriesLoadInfo, $Out>
    implements SeriesLoadInfoCopyWith<$R, SeriesLoadInfo, $Out> {
  _SeriesLoadInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SeriesLoadInfo> $mapper =
      SeriesLoadInfoMapper.ensureInitialized();
  @override
  ListWithPaginationDataCopyWith<$R, ListWithPaginationData<SeriesShortData>,
          ListWithPaginationData<SeriesShortData>, SeriesShortData>
      get seriesData =>
          $value.seriesData.copyWith.$chain((v) => call(seriesData: v));
  @override
  $R call(
          {bool? isInitialized,
          bool? isNextPageLoading,
          ListWithPaginationData<SeriesShortData>? seriesData}) =>
      $apply(FieldCopyWithData({
        if (isInitialized != null) #isInitialized: isInitialized,
        if (isNextPageLoading != null) #isNextPageLoading: isNextPageLoading,
        if (seriesData != null) #seriesData: seriesData
      }));
  @override
  SeriesLoadInfo $make(CopyWithData data) => SeriesLoadInfo(
      isInitialized: data.get(#isInitialized, or: $value.isInitialized),
      isNextPageLoading:
          data.get(#isNextPageLoading, or: $value.isNextPageLoading),
      seriesData: data.get(#seriesData, or: $value.seriesData));

  @override
  SeriesLoadInfoCopyWith<$R2, SeriesLoadInfo, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SeriesLoadInfoCopyWithImpl($value, $cast, t);
}
