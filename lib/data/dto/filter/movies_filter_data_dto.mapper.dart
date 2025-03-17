// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'movies_filter_data_dto.dart';

class MoviesFilterDataDtoMapper extends ClassMapperBase<MoviesFilterDataDto> {
  MoviesFilterDataDtoMapper._();

  static MoviesFilterDataDtoMapper? _instance;
  static MoviesFilterDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MoviesFilterDataDtoMapper._());
      SortByDtoMapper.ensureInitialized();
      CountryDtoMapper.ensureInitialized();
      MovieGenreDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MoviesFilterDataDto';

  static int? _$year(MoviesFilterDataDto v) => v.year;
  static const Field<MoviesFilterDataDto, int> _f$year =
      Field('year', _$year, opt: true);
  static SortByDto? _$sortBy(MoviesFilterDataDto v) => v.sortBy;
  static const Field<MoviesFilterDataDto, SortByDto> _f$sortBy =
      Field('sortBy', _$sortBy, key: r'sort_by', opt: true);
  static List<CountryDto>? _$withCountries(MoviesFilterDataDto v) =>
      v.withCountries;
  static const Field<MoviesFilterDataDto, List<CountryDto>> _f$withCountries =
      Field('withCountries', _$withCountries,
          key: r'with_countries', opt: true);
  static List<CountryDto>? _$withoutCountries(MoviesFilterDataDto v) =>
      v.withoutCountries;
  static const Field<MoviesFilterDataDto, List<CountryDto>>
      _f$withoutCountries = Field('withoutCountries', _$withoutCountries,
          key: r'without_countries', opt: true);
  static List<MovieGenreDto>? _$withGenres(MoviesFilterDataDto v) =>
      v.withGenres;
  static const Field<MoviesFilterDataDto, List<MovieGenreDto>> _f$withGenres =
      Field('withGenres', _$withGenres, key: r'with_genres', opt: true);
  static List<MovieGenreDto>? _$withoutGenres(MoviesFilterDataDto v) =>
      v.withoutGenres;
  static const Field<MoviesFilterDataDto, List<MovieGenreDto>>
      _f$withoutGenres = Field('withoutGenres', _$withoutGenres,
          key: r'without_genres', opt: true);

  @override
  final MappableFields<MoviesFilterDataDto> fields = const {
    #year: _f$year,
    #sortBy: _f$sortBy,
    #withCountries: _f$withCountries,
    #withoutCountries: _f$withoutCountries,
    #withGenres: _f$withGenres,
    #withoutGenres: _f$withoutGenres,
  };
  @override
  final bool ignoreNull = true;

  static MoviesFilterDataDto _instantiate(DecodingData data) {
    return MoviesFilterDataDto(
        year: data.dec(_f$year),
        sortBy: data.dec(_f$sortBy),
        withCountries: data.dec(_f$withCountries),
        withoutCountries: data.dec(_f$withoutCountries),
        withGenres: data.dec(_f$withGenres),
        withoutGenres: data.dec(_f$withoutGenres));
  }

  @override
  final Function instantiate = _instantiate;

  static MoviesFilterDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MoviesFilterDataDto>(map);
  }

  static MoviesFilterDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<MoviesFilterDataDto>(json);
  }
}

mixin MoviesFilterDataDtoMappable {
  String toJsonString() {
    return MoviesFilterDataDtoMapper.ensureInitialized()
        .encodeJson<MoviesFilterDataDto>(this as MoviesFilterDataDto);
  }

  Map<String, dynamic> toJson() {
    return MoviesFilterDataDtoMapper.ensureInitialized()
        .encodeMap<MoviesFilterDataDto>(this as MoviesFilterDataDto);
  }

  MoviesFilterDataDtoCopyWith<MoviesFilterDataDto, MoviesFilterDataDto,
          MoviesFilterDataDto>
      get copyWith => _MoviesFilterDataDtoCopyWithImpl(
          this as MoviesFilterDataDto, $identity, $identity);
  @override
  String toString() {
    return MoviesFilterDataDtoMapper.ensureInitialized()
        .stringifyValue(this as MoviesFilterDataDto);
  }

  @override
  bool operator ==(Object other) {
    return MoviesFilterDataDtoMapper.ensureInitialized()
        .equalsValue(this as MoviesFilterDataDto, other);
  }

  @override
  int get hashCode {
    return MoviesFilterDataDtoMapper.ensureInitialized()
        .hashValue(this as MoviesFilterDataDto);
  }
}

extension MoviesFilterDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MoviesFilterDataDto, $Out> {
  MoviesFilterDataDtoCopyWith<$R, MoviesFilterDataDto, $Out>
      get $asMoviesFilterDataDto =>
          $base.as((v, t, t2) => _MoviesFilterDataDtoCopyWithImpl(v, t, t2));
}

abstract class MoviesFilterDataDtoCopyWith<$R, $In extends MoviesFilterDataDto,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, CountryDto, ObjectCopyWith<$R, CountryDto, CountryDto>>?
      get withCountries;
  ListCopyWith<$R, CountryDto, ObjectCopyWith<$R, CountryDto, CountryDto>>?
      get withoutCountries;
  ListCopyWith<$R, MovieGenreDto,
      ObjectCopyWith<$R, MovieGenreDto, MovieGenreDto>>? get withGenres;
  ListCopyWith<$R, MovieGenreDto,
      ObjectCopyWith<$R, MovieGenreDto, MovieGenreDto>>? get withoutGenres;
  $R call(
      {int? year,
      SortByDto? sortBy,
      List<CountryDto>? withCountries,
      List<CountryDto>? withoutCountries,
      List<MovieGenreDto>? withGenres,
      List<MovieGenreDto>? withoutGenres});
  MoviesFilterDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MoviesFilterDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MoviesFilterDataDto, $Out>
    implements MoviesFilterDataDtoCopyWith<$R, MoviesFilterDataDto, $Out> {
  _MoviesFilterDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MoviesFilterDataDto> $mapper =
      MoviesFilterDataDtoMapper.ensureInitialized();
  @override
  ListCopyWith<$R, CountryDto, ObjectCopyWith<$R, CountryDto, CountryDto>>?
      get withCountries => $value.withCountries != null
          ? ListCopyWith(
              $value.withCountries!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(withCountries: v))
          : null;
  @override
  ListCopyWith<$R, CountryDto, ObjectCopyWith<$R, CountryDto, CountryDto>>?
      get withoutCountries => $value.withoutCountries != null
          ? ListCopyWith(
              $value.withoutCountries!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(withoutCountries: v))
          : null;
  @override
  ListCopyWith<$R, MovieGenreDto,
          ObjectCopyWith<$R, MovieGenreDto, MovieGenreDto>>?
      get withGenres => $value.withGenres != null
          ? ListCopyWith(
              $value.withGenres!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(withGenres: v))
          : null;
  @override
  ListCopyWith<$R, MovieGenreDto,
          ObjectCopyWith<$R, MovieGenreDto, MovieGenreDto>>?
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
          Object? withoutCountries = $none,
          Object? withGenres = $none,
          Object? withoutGenres = $none}) =>
      $apply(FieldCopyWithData({
        if (year != $none) #year: year,
        if (sortBy != $none) #sortBy: sortBy,
        if (withCountries != $none) #withCountries: withCountries,
        if (withoutCountries != $none) #withoutCountries: withoutCountries,
        if (withGenres != $none) #withGenres: withGenres,
        if (withoutGenres != $none) #withoutGenres: withoutGenres
      }));
  @override
  MoviesFilterDataDto $make(CopyWithData data) => MoviesFilterDataDto(
      year: data.get(#year, or: $value.year),
      sortBy: data.get(#sortBy, or: $value.sortBy),
      withCountries: data.get(#withCountries, or: $value.withCountries),
      withoutCountries:
          data.get(#withoutCountries, or: $value.withoutCountries),
      withGenres: data.get(#withGenres, or: $value.withGenres),
      withoutGenres: data.get(#withoutGenres, or: $value.withoutGenres));

  @override
  MoviesFilterDataDtoCopyWith<$R2, MoviesFilterDataDto, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _MoviesFilterDataDtoCopyWithImpl($value, $cast, t);
}
