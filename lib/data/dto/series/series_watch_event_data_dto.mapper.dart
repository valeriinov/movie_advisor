// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'series_watch_event_data_dto.dart';

class SeriesWatchEventDataDtoMapper
    extends ClassMapperBase<SeriesWatchEventDataDto> {
  SeriesWatchEventDataDtoMapper._();

  static SeriesWatchEventDataDtoMapper? _instance;
  static SeriesWatchEventDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = SeriesWatchEventDataDtoMapper._());
      WatchEventTypeDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SeriesWatchEventDataDto';

  static int? _$id(SeriesWatchEventDataDto v) => v.id;
  static const Field<SeriesWatchEventDataDto, int> _f$id =
      Field('id', _$id, opt: true);
  static int? _$seriesId(SeriesWatchEventDataDto v) => v.seriesId;
  static const Field<SeriesWatchEventDataDto, int> _f$seriesId =
      Field('seriesId', _$seriesId, key: r'series_id', opt: true);
  static WatchEventTypeDto? _$type(SeriesWatchEventDataDto v) => v.type;
  static const Field<SeriesWatchEventDataDto, WatchEventTypeDto> _f$type =
      Field('type', _$type, opt: true);
  static DateTime? _$at(SeriesWatchEventDataDto v) => v.at;
  static const Field<SeriesWatchEventDataDto, DateTime> _f$at =
      Field('at', _$at, opt: true, hook: DateMapperHook());

  @override
  final MappableFields<SeriesWatchEventDataDto> fields = const {
    #id: _f$id,
    #seriesId: _f$seriesId,
    #type: _f$type,
    #at: _f$at,
  };
  @override
  final bool ignoreNull = true;

  static SeriesWatchEventDataDto _instantiate(DecodingData data) {
    return SeriesWatchEventDataDto(
        id: data.dec(_f$id),
        seriesId: data.dec(_f$seriesId),
        type: data.dec(_f$type),
        at: data.dec(_f$at));
  }

  @override
  final Function instantiate = _instantiate;

  static SeriesWatchEventDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SeriesWatchEventDataDto>(map);
  }

  static SeriesWatchEventDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<SeriesWatchEventDataDto>(json);
  }
}

mixin SeriesWatchEventDataDtoMappable {
  String toJsonString() {
    return SeriesWatchEventDataDtoMapper.ensureInitialized()
        .encodeJson<SeriesWatchEventDataDto>(this as SeriesWatchEventDataDto);
  }

  Map<String, dynamic> toJson() {
    return SeriesWatchEventDataDtoMapper.ensureInitialized()
        .encodeMap<SeriesWatchEventDataDto>(this as SeriesWatchEventDataDto);
  }

  SeriesWatchEventDataDtoCopyWith<SeriesWatchEventDataDto,
          SeriesWatchEventDataDto, SeriesWatchEventDataDto>
      get copyWith => _SeriesWatchEventDataDtoCopyWithImpl<
              SeriesWatchEventDataDto, SeriesWatchEventDataDto>(
          this as SeriesWatchEventDataDto, $identity, $identity);
  @override
  String toString() {
    return SeriesWatchEventDataDtoMapper.ensureInitialized()
        .stringifyValue(this as SeriesWatchEventDataDto);
  }

  @override
  bool operator ==(Object other) {
    return SeriesWatchEventDataDtoMapper.ensureInitialized()
        .equalsValue(this as SeriesWatchEventDataDto, other);
  }

  @override
  int get hashCode {
    return SeriesWatchEventDataDtoMapper.ensureInitialized()
        .hashValue(this as SeriesWatchEventDataDto);
  }
}

extension SeriesWatchEventDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SeriesWatchEventDataDto, $Out> {
  SeriesWatchEventDataDtoCopyWith<$R, SeriesWatchEventDataDto, $Out>
      get $asSeriesWatchEventDataDto => $base.as((v, t, t2) =>
          _SeriesWatchEventDataDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SeriesWatchEventDataDtoCopyWith<
    $R,
    $In extends SeriesWatchEventDataDto,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? id, int? seriesId, WatchEventTypeDto? type, DateTime? at});
  SeriesWatchEventDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SeriesWatchEventDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SeriesWatchEventDataDto, $Out>
    implements
        SeriesWatchEventDataDtoCopyWith<$R, SeriesWatchEventDataDto, $Out> {
  _SeriesWatchEventDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SeriesWatchEventDataDto> $mapper =
      SeriesWatchEventDataDtoMapper.ensureInitialized();
  @override
  $R call(
          {Object? id = $none,
          Object? seriesId = $none,
          Object? type = $none,
          Object? at = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (seriesId != $none) #seriesId: seriesId,
        if (type != $none) #type: type,
        if (at != $none) #at: at
      }));
  @override
  SeriesWatchEventDataDto $make(CopyWithData data) => SeriesWatchEventDataDto(
      id: data.get(#id, or: $value.id),
      seriesId: data.get(#seriesId, or: $value.seriesId),
      type: data.get(#type, or: $value.type),
      at: data.get(#at, or: $value.at));

  @override
  SeriesWatchEventDataDtoCopyWith<$R2, SeriesWatchEventDataDto, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _SeriesWatchEventDataDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
