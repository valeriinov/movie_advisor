// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'series_short_response_data_dto.dart';

class SeriesShortResponseDataDtoMapper
    extends ClassMapperBase<SeriesShortResponseDataDto> {
  SeriesShortResponseDataDtoMapper._();

  static SeriesShortResponseDataDtoMapper? _instance;
  static SeriesShortResponseDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = SeriesShortResponseDataDtoMapper._());
      SeriesShortDataDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SeriesShortResponseDataDto';

  static int? _$page(SeriesShortResponseDataDto v) => v.page;
  static const Field<SeriesShortResponseDataDto, int> _f$page =
      Field('page', _$page, opt: true);
  static List<SeriesShortDataDto>? _$results(SeriesShortResponseDataDto v) =>
      v.results;
  static const Field<SeriesShortResponseDataDto, List<SeriesShortDataDto>>
      _f$results = Field('results', _$results, opt: true);
  static int? _$totalPages(SeriesShortResponseDataDto v) => v.totalPages;
  static const Field<SeriesShortResponseDataDto, int> _f$totalPages =
      Field('totalPages', _$totalPages, key: r'total_pages', opt: true);

  @override
  final MappableFields<SeriesShortResponseDataDto> fields = const {
    #page: _f$page,
    #results: _f$results,
    #totalPages: _f$totalPages,
  };
  @override
  final bool ignoreNull = true;

  static SeriesShortResponseDataDto _instantiate(DecodingData data) {
    return SeriesShortResponseDataDto(
        page: data.dec(_f$page),
        results: data.dec(_f$results),
        totalPages: data.dec(_f$totalPages));
  }

  @override
  final Function instantiate = _instantiate;

  static SeriesShortResponseDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SeriesShortResponseDataDto>(map);
  }

  static SeriesShortResponseDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<SeriesShortResponseDataDto>(json);
  }
}

mixin SeriesShortResponseDataDtoMappable {
  String toJsonString() {
    return SeriesShortResponseDataDtoMapper.ensureInitialized()
        .encodeJson<SeriesShortResponseDataDto>(
            this as SeriesShortResponseDataDto);
  }

  Map<String, dynamic> toJson() {
    return SeriesShortResponseDataDtoMapper.ensureInitialized()
        .encodeMap<SeriesShortResponseDataDto>(
            this as SeriesShortResponseDataDto);
  }

  SeriesShortResponseDataDtoCopyWith<SeriesShortResponseDataDto,
          SeriesShortResponseDataDto, SeriesShortResponseDataDto>
      get copyWith => _SeriesShortResponseDataDtoCopyWithImpl(
          this as SeriesShortResponseDataDto, $identity, $identity);
  @override
  String toString() {
    return SeriesShortResponseDataDtoMapper.ensureInitialized()
        .stringifyValue(this as SeriesShortResponseDataDto);
  }

  @override
  bool operator ==(Object other) {
    return SeriesShortResponseDataDtoMapper.ensureInitialized()
        .equalsValue(this as SeriesShortResponseDataDto, other);
  }

  @override
  int get hashCode {
    return SeriesShortResponseDataDtoMapper.ensureInitialized()
        .hashValue(this as SeriesShortResponseDataDto);
  }
}

extension SeriesShortResponseDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SeriesShortResponseDataDto, $Out> {
  SeriesShortResponseDataDtoCopyWith<$R, SeriesShortResponseDataDto, $Out>
      get $asSeriesShortResponseDataDto => $base
          .as((v, t, t2) => _SeriesShortResponseDataDtoCopyWithImpl(v, t, t2));
}

abstract class SeriesShortResponseDataDtoCopyWith<
    $R,
    $In extends SeriesShortResponseDataDto,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
      $R,
      SeriesShortDataDto,
      SeriesShortDataDtoCopyWith<$R, SeriesShortDataDto,
          SeriesShortDataDto>>? get results;
  $R call({int? page, List<SeriesShortDataDto>? results, int? totalPages});
  SeriesShortResponseDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SeriesShortResponseDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SeriesShortResponseDataDto, $Out>
    implements
        SeriesShortResponseDataDtoCopyWith<$R, SeriesShortResponseDataDto,
            $Out> {
  _SeriesShortResponseDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SeriesShortResponseDataDto> $mapper =
      SeriesShortResponseDataDtoMapper.ensureInitialized();
  @override
  ListCopyWith<
      $R,
      SeriesShortDataDto,
      SeriesShortDataDtoCopyWith<$R, SeriesShortDataDto,
          SeriesShortDataDto>>? get results => $value.results != null
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
  SeriesShortResponseDataDto $make(CopyWithData data) =>
      SeriesShortResponseDataDto(
          page: data.get(#page, or: $value.page),
          results: data.get(#results, or: $value.results),
          totalPages: data.get(#totalPages, or: $value.totalPages));

  @override
  SeriesShortResponseDataDtoCopyWith<$R2, SeriesShortResponseDataDto, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _SeriesShortResponseDataDtoCopyWithImpl($value, $cast, t);
}
