// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'series_filter_data_dto.dart';

class SeriesFilterDataDtoMapper extends ClassMapperBase<SeriesFilterDataDto> {
  SeriesFilterDataDtoMapper._();

  static SeriesFilterDataDtoMapper? _instance;
  static SeriesFilterDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SeriesFilterDataDtoMapper._());
      SortByDtoMapper.ensureInitialized();
      CountryDtoMapper.ensureInitialized();
      SeriesGenreDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SeriesFilterDataDto';

  static int? _$year(SeriesFilterDataDto v) => v.year;
  static const Field<SeriesFilterDataDto, int> _f$year =
      Field('year', _$year, opt: true);
  static SortByDto? _$sortBy(SeriesFilterDataDto v) => v.sortBy;
  static const Field<SeriesFilterDataDto, SortByDto> _f$sortBy =
      Field('sortBy', _$sortBy, key: r'sort_by', opt: true);
  static List<CountryDto>? _$withCountries(SeriesFilterDataDto v) =>
      v.withCountries;
  static const Field<SeriesFilterDataDto, List<CountryDto>> _f$withCountries =
      Field('withCountries', _$withCountries,
          key: r'with_countries', opt: true);
  static List<SeriesGenreDto>? _$withGenres(SeriesFilterDataDto v) =>
      v.withGenres;
  static const Field<SeriesFilterDataDto, List<SeriesGenreDto>> _f$withGenres =
      Field('withGenres', _$withGenres, key: r'with_genres', opt: true);
  static List<SeriesGenreDto>? _$withoutGenres(SeriesFilterDataDto v) =>
      v.withoutGenres;
  static const Field<SeriesFilterDataDto, List<SeriesGenreDto>>
      _f$withoutGenres = Field('withoutGenres', _$withoutGenres,
          key: r'without_genres', opt: true);

  @override
  final MappableFields<SeriesFilterDataDto> fields = const {
    #year: _f$year,
    #sortBy: _f$sortBy,
    #withCountries: _f$withCountries,
    #withGenres: _f$withGenres,
    #withoutGenres: _f$withoutGenres,
  };
  @override
  final bool ignoreNull = true;

  static SeriesFilterDataDto _instantiate(DecodingData data) {
    return SeriesFilterDataDto(
        year: data.dec(_f$year),
        sortBy: data.dec(_f$sortBy),
        withCountries: data.dec(_f$withCountries),
        withGenres: data.dec(_f$withGenres),
        withoutGenres: data.dec(_f$withoutGenres));
  }

  @override
  final Function instantiate = _instantiate;

  static SeriesFilterDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SeriesFilterDataDto>(map);
  }

  static SeriesFilterDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<SeriesFilterDataDto>(json);
  }
}

mixin SeriesFilterDataDtoMappable {
  String toJsonString() {
    return SeriesFilterDataDtoMapper.ensureInitialized()
        .encodeJson<SeriesFilterDataDto>(this as SeriesFilterDataDto);
  }

  Map<String, dynamic> toJson() {
    return SeriesFilterDataDtoMapper.ensureInitialized()
        .encodeMap<SeriesFilterDataDto>(this as SeriesFilterDataDto);
  }

  SeriesFilterDataDtoCopyWith<SeriesFilterDataDto, SeriesFilterDataDto,
      SeriesFilterDataDto> get copyWith => _SeriesFilterDataDtoCopyWithImpl<
          SeriesFilterDataDto, SeriesFilterDataDto>(
      this as SeriesFilterDataDto, $identity, $identity);
  @override
  String toString() {
    return SeriesFilterDataDtoMapper.ensureInitialized()
        .stringifyValue(this as SeriesFilterDataDto);
  }

  @override
  bool operator ==(Object other) {
    return SeriesFilterDataDtoMapper.ensureInitialized()
        .equalsValue(this as SeriesFilterDataDto, other);
  }

  @override
  int get hashCode {
    return SeriesFilterDataDtoMapper.ensureInitialized()
        .hashValue(this as SeriesFilterDataDto);
  }
}

extension SeriesFilterDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SeriesFilterDataDto, $Out> {
  SeriesFilterDataDtoCopyWith<$R, SeriesFilterDataDto, $Out>
      get $asSeriesFilterDataDto => $base.as(
          (v, t, t2) => _SeriesFilterDataDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SeriesFilterDataDtoCopyWith<$R, $In extends SeriesFilterDataDto,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, CountryDto, ObjectCopyWith<$R, CountryDto, CountryDto>>?
      get withCountries;
  ListCopyWith<$R, SeriesGenreDto,
      ObjectCopyWith<$R, SeriesGenreDto, SeriesGenreDto>>? get withGenres;
  ListCopyWith<$R, SeriesGenreDto,
      ObjectCopyWith<$R, SeriesGenreDto, SeriesGenreDto>>? get withoutGenres;
  $R call(
      {int? year,
      SortByDto? sortBy,
      List<CountryDto>? withCountries,
      List<SeriesGenreDto>? withGenres,
      List<SeriesGenreDto>? withoutGenres});
  SeriesFilterDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SeriesFilterDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SeriesFilterDataDto, $Out>
    implements SeriesFilterDataDtoCopyWith<$R, SeriesFilterDataDto, $Out> {
  _SeriesFilterDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SeriesFilterDataDto> $mapper =
      SeriesFilterDataDtoMapper.ensureInitialized();
  @override
  ListCopyWith<$R, CountryDto, ObjectCopyWith<$R, CountryDto, CountryDto>>?
      get withCountries => $value.withCountries != null
          ? ListCopyWith(
              $value.withCountries!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(withCountries: v))
          : null;
  @override
  ListCopyWith<$R, SeriesGenreDto,
          ObjectCopyWith<$R, SeriesGenreDto, SeriesGenreDto>>?
      get withGenres => $value.withGenres != null
          ? ListCopyWith(
              $value.withGenres!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(withGenres: v))
          : null;
  @override
  ListCopyWith<$R, SeriesGenreDto,
          ObjectCopyWith<$R, SeriesGenreDto, SeriesGenreDto>>?
      get withoutGenres => $value.withoutGenres != null
          ? ListCopyWith(
              $value.withoutGenres!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(withoutGenres: v))
          : null;
  @override
  $R call(
          {Object? year = $none,
          Object? sortBy = $none,
          Object? withCountries = $none,
          Object? withGenres = $none,
          Object? withoutGenres = $none}) =>
      $apply(FieldCopyWithData({
        if (year != $none) #year: year,
        if (sortBy != $none) #sortBy: sortBy,
        if (withCountries != $none) #withCountries: withCountries,
        if (withGenres != $none) #withGenres: withGenres,
        if (withoutGenres != $none) #withoutGenres: withoutGenres
      }));
  @override
  SeriesFilterDataDto $make(CopyWithData data) => SeriesFilterDataDto(
      year: data.get(#year, or: $value.year),
      sortBy: data.get(#sortBy, or: $value.sortBy),
      withCountries: data.get(#withCountries, or: $value.withCountries),
      withGenres: data.get(#withGenres, or: $value.withGenres),
      withoutGenres: data.get(#withoutGenres, or: $value.withoutGenres));

  @override
  SeriesFilterDataDtoCopyWith<$R2, SeriesFilterDataDto, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _SeriesFilterDataDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
