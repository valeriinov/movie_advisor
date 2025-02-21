// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'series_rate_filter_data_dto.dart';

class SeriesRateFilterDataDtoMapper
    extends ClassMapperBase<SeriesRateFilterDataDto> {
  SeriesRateFilterDataDtoMapper._();

  static SeriesRateFilterDataDtoMapper? _instance;
  static SeriesRateFilterDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = SeriesRateFilterDataDtoMapper._());
      SeriesGenreDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SeriesRateFilterDataDto';

  static List<int>? _$excludeIds(SeriesRateFilterDataDto v) => v.excludeIds;
  static const Field<SeriesRateFilterDataDto, List<int>> _f$excludeIds =
      Field('excludeIds', _$excludeIds, key: r'exclude_ids', opt: true);
  static List<SeriesGenreDto>? _$targetGenres(SeriesRateFilterDataDto v) =>
      v.targetGenres;
  static const Field<SeriesRateFilterDataDto, List<SeriesGenreDto>>
      _f$targetGenres =
      Field('targetGenres', _$targetGenres, key: r'target_genres', opt: true);

  @override
  final MappableFields<SeriesRateFilterDataDto> fields = const {
    #excludeIds: _f$excludeIds,
    #targetGenres: _f$targetGenres,
  };
  @override
  final bool ignoreNull = true;

  static SeriesRateFilterDataDto _instantiate(DecodingData data) {
    return SeriesRateFilterDataDto(
        excludeIds: data.dec(_f$excludeIds),
        targetGenres: data.dec(_f$targetGenres));
  }

  @override
  final Function instantiate = _instantiate;

  static SeriesRateFilterDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SeriesRateFilterDataDto>(map);
  }

  static SeriesRateFilterDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<SeriesRateFilterDataDto>(json);
  }
}

mixin SeriesRateFilterDataDtoMappable {
  String toJsonString() {
    return SeriesRateFilterDataDtoMapper.ensureInitialized()
        .encodeJson<SeriesRateFilterDataDto>(this as SeriesRateFilterDataDto);
  }

  Map<String, dynamic> toJson() {
    return SeriesRateFilterDataDtoMapper.ensureInitialized()
        .encodeMap<SeriesRateFilterDataDto>(this as SeriesRateFilterDataDto);
  }

  SeriesRateFilterDataDtoCopyWith<SeriesRateFilterDataDto,
          SeriesRateFilterDataDto, SeriesRateFilterDataDto>
      get copyWith => _SeriesRateFilterDataDtoCopyWithImpl(
          this as SeriesRateFilterDataDto, $identity, $identity);
  @override
  String toString() {
    return SeriesRateFilterDataDtoMapper.ensureInitialized()
        .stringifyValue(this as SeriesRateFilterDataDto);
  }

  @override
  bool operator ==(Object other) {
    return SeriesRateFilterDataDtoMapper.ensureInitialized()
        .equalsValue(this as SeriesRateFilterDataDto, other);
  }

  @override
  int get hashCode {
    return SeriesRateFilterDataDtoMapper.ensureInitialized()
        .hashValue(this as SeriesRateFilterDataDto);
  }
}

extension SeriesRateFilterDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SeriesRateFilterDataDto, $Out> {
  SeriesRateFilterDataDtoCopyWith<$R, SeriesRateFilterDataDto, $Out>
      get $asSeriesRateFilterDataDto => $base
          .as((v, t, t2) => _SeriesRateFilterDataDtoCopyWithImpl(v, t, t2));
}

abstract class SeriesRateFilterDataDtoCopyWith<
    $R,
    $In extends SeriesRateFilterDataDto,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get excludeIds;
  ListCopyWith<$R, SeriesGenreDto,
      ObjectCopyWith<$R, SeriesGenreDto, SeriesGenreDto>>? get targetGenres;
  $R call({List<int>? excludeIds, List<SeriesGenreDto>? targetGenres});
  SeriesRateFilterDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SeriesRateFilterDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SeriesRateFilterDataDto, $Out>
    implements
        SeriesRateFilterDataDtoCopyWith<$R, SeriesRateFilterDataDto, $Out> {
  _SeriesRateFilterDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SeriesRateFilterDataDto> $mapper =
      SeriesRateFilterDataDtoMapper.ensureInitialized();
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get excludeIds =>
      $value.excludeIds != null
          ? ListCopyWith(
              $value.excludeIds!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(excludeIds: v))
          : null;
  @override
  ListCopyWith<$R, SeriesGenreDto,
          ObjectCopyWith<$R, SeriesGenreDto, SeriesGenreDto>>?
      get targetGenres => $value.targetGenres != null
          ? ListCopyWith(
              $value.targetGenres!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(targetGenres: v))
          : null;
  @override
  $R call({Object? excludeIds = $none, Object? targetGenres = $none}) =>
      $apply(FieldCopyWithData({
        if (excludeIds != $none) #excludeIds: excludeIds,
        if (targetGenres != $none) #targetGenres: targetGenres
      }));
  @override
  SeriesRateFilterDataDto $make(CopyWithData data) => SeriesRateFilterDataDto(
      excludeIds: data.get(#excludeIds, or: $value.excludeIds),
      targetGenres: data.get(#targetGenres, or: $value.targetGenres));

  @override
  SeriesRateFilterDataDtoCopyWith<$R2, SeriesRateFilterDataDto, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _SeriesRateFilterDataDtoCopyWithImpl($value, $cast, t);
}
