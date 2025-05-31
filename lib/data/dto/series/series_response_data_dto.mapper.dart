// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'series_response_data_dto.dart';

class SeriesResponseDataDtoMapper
    extends ClassMapperBase<SeriesResponseDataDto> {
  SeriesResponseDataDtoMapper._();

  static SeriesResponseDataDtoMapper? _instance;
  static SeriesResponseDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SeriesResponseDataDtoMapper._());
      SeriesDataDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SeriesResponseDataDto';

  static int? _$page(SeriesResponseDataDto v) => v.page;
  static const Field<SeriesResponseDataDto, int> _f$page =
      Field('page', _$page, opt: true);
  static List<SeriesDataDto>? _$results(SeriesResponseDataDto v) => v.results;
  static const Field<SeriesResponseDataDto, List<SeriesDataDto>> _f$results =
      Field('results', _$results, opt: true);
  static int? _$totalPages(SeriesResponseDataDto v) => v.totalPages;
  static const Field<SeriesResponseDataDto, int> _f$totalPages =
      Field('totalPages', _$totalPages, key: r'total_pages', opt: true);

  @override
  final MappableFields<SeriesResponseDataDto> fields = const {
    #page: _f$page,
    #results: _f$results,
    #totalPages: _f$totalPages,
  };
  @override
  final bool ignoreNull = true;

  static SeriesResponseDataDto _instantiate(DecodingData data) {
    return SeriesResponseDataDto(
        page: data.dec(_f$page),
        results: data.dec(_f$results),
        totalPages: data.dec(_f$totalPages));
  }

  @override
  final Function instantiate = _instantiate;

  static SeriesResponseDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SeriesResponseDataDto>(map);
  }

  static SeriesResponseDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<SeriesResponseDataDto>(json);
  }
}

mixin SeriesResponseDataDtoMappable {
  String toJsonString() {
    return SeriesResponseDataDtoMapper.ensureInitialized()
        .encodeJson<SeriesResponseDataDto>(this as SeriesResponseDataDto);
  }

  Map<String, dynamic> toJson() {
    return SeriesResponseDataDtoMapper.ensureInitialized()
        .encodeMap<SeriesResponseDataDto>(this as SeriesResponseDataDto);
  }

  SeriesResponseDataDtoCopyWith<SeriesResponseDataDto, SeriesResponseDataDto,
      SeriesResponseDataDto> get copyWith => _SeriesResponseDataDtoCopyWithImpl<
          SeriesResponseDataDto, SeriesResponseDataDto>(
      this as SeriesResponseDataDto, $identity, $identity);
  @override
  String toString() {
    return SeriesResponseDataDtoMapper.ensureInitialized()
        .stringifyValue(this as SeriesResponseDataDto);
  }

  @override
  bool operator ==(Object other) {
    return SeriesResponseDataDtoMapper.ensureInitialized()
        .equalsValue(this as SeriesResponseDataDto, other);
  }

  @override
  int get hashCode {
    return SeriesResponseDataDtoMapper.ensureInitialized()
        .hashValue(this as SeriesResponseDataDto);
  }
}

extension SeriesResponseDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SeriesResponseDataDto, $Out> {
  SeriesResponseDataDtoCopyWith<$R, SeriesResponseDataDto, $Out>
      get $asSeriesResponseDataDto => $base.as(
          (v, t, t2) => _SeriesResponseDataDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SeriesResponseDataDtoCopyWith<
    $R,
    $In extends SeriesResponseDataDto,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, SeriesDataDto,
      SeriesDataDtoCopyWith<$R, SeriesDataDto, SeriesDataDto>>? get results;
  $R call({int? page, List<SeriesDataDto>? results, int? totalPages});
  SeriesResponseDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SeriesResponseDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SeriesResponseDataDto, $Out>
    implements SeriesResponseDataDtoCopyWith<$R, SeriesResponseDataDto, $Out> {
  _SeriesResponseDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SeriesResponseDataDto> $mapper =
      SeriesResponseDataDtoMapper.ensureInitialized();
  @override
  ListCopyWith<$R, SeriesDataDto,
          SeriesDataDtoCopyWith<$R, SeriesDataDto, SeriesDataDto>>?
      get results => $value.results != null
          ? ListCopyWith($value.results!, (v, t) => v.copyWith.$chain(t),
              (v) => call(results: v))
          : null;
  @override
  $R call(
          {Object? page = $none,
          Object? results = $none,
          Object? totalPages = $none}) =>
      $apply(FieldCopyWithData({
        if (page != $none) #page: page,
        if (results != $none) #results: results,
        if (totalPages != $none) #totalPages: totalPages
      }));
  @override
  SeriesResponseDataDto $make(CopyWithData data) => SeriesResponseDataDto(
      page: data.get(#page, or: $value.page),
      results: data.get(#results, or: $value.results),
      totalPages: data.get(#totalPages, or: $value.totalPages));

  @override
  SeriesResponseDataDtoCopyWith<$R2, SeriesResponseDataDto, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _SeriesResponseDataDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
