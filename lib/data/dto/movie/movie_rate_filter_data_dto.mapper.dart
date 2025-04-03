// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'movie_rate_filter_data_dto.dart';

class MovieRateFilterDataDtoMapper
    extends ClassMapperBase<MovieRateFilterDataDto> {
  MovieRateFilterDataDtoMapper._();

  static MovieRateFilterDataDtoMapper? _instance;
  static MovieRateFilterDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MovieRateFilterDataDtoMapper._());
      MovieGenreDtoMapper.ensureInitialized();
      CountryDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MovieRateFilterDataDto';

  static List<int>? _$excludeIds(MovieRateFilterDataDto v) => v.excludeIds;
  static const Field<MovieRateFilterDataDto, List<int>> _f$excludeIds =
      Field('excludeIds', _$excludeIds, key: r'exclude_ids', opt: true);
  static List<MovieGenreDto>? _$targetGenres(MovieRateFilterDataDto v) =>
      v.targetGenres;
  static const Field<MovieRateFilterDataDto, List<MovieGenreDto>>
      _f$targetGenres =
      Field('targetGenres', _$targetGenres, key: r'target_genres', opt: true);
  static List<CountryDto>? _$targetCountries(MovieRateFilterDataDto v) =>
      v.targetCountries;
  static const Field<MovieRateFilterDataDto, List<CountryDto>>
      _f$targetCountries = Field('targetCountries', _$targetCountries,
          key: r'target_countries', opt: true);

  @override
  final MappableFields<MovieRateFilterDataDto> fields = const {
    #excludeIds: _f$excludeIds,
    #targetGenres: _f$targetGenres,
    #targetCountries: _f$targetCountries,
  };
  @override
  final bool ignoreNull = true;

  static MovieRateFilterDataDto _instantiate(DecodingData data) {
    return MovieRateFilterDataDto(
        excludeIds: data.dec(_f$excludeIds),
        targetGenres: data.dec(_f$targetGenres),
        targetCountries: data.dec(_f$targetCountries));
  }

  @override
  final Function instantiate = _instantiate;

  static MovieRateFilterDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MovieRateFilterDataDto>(map);
  }

  static MovieRateFilterDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<MovieRateFilterDataDto>(json);
  }
}

mixin MovieRateFilterDataDtoMappable {
  String toJsonString() {
    return MovieRateFilterDataDtoMapper.ensureInitialized()
        .encodeJson<MovieRateFilterDataDto>(this as MovieRateFilterDataDto);
  }

  Map<String, dynamic> toJson() {
    return MovieRateFilterDataDtoMapper.ensureInitialized()
        .encodeMap<MovieRateFilterDataDto>(this as MovieRateFilterDataDto);
  }

  MovieRateFilterDataDtoCopyWith<MovieRateFilterDataDto, MovieRateFilterDataDto,
          MovieRateFilterDataDto>
      get copyWith => _MovieRateFilterDataDtoCopyWithImpl<
              MovieRateFilterDataDto, MovieRateFilterDataDto>(
          this as MovieRateFilterDataDto, $identity, $identity);
  @override
  String toString() {
    return MovieRateFilterDataDtoMapper.ensureInitialized()
        .stringifyValue(this as MovieRateFilterDataDto);
  }

  @override
  bool operator ==(Object other) {
    return MovieRateFilterDataDtoMapper.ensureInitialized()
        .equalsValue(this as MovieRateFilterDataDto, other);
  }

  @override
  int get hashCode {
    return MovieRateFilterDataDtoMapper.ensureInitialized()
        .hashValue(this as MovieRateFilterDataDto);
  }
}

extension MovieRateFilterDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MovieRateFilterDataDto, $Out> {
  MovieRateFilterDataDtoCopyWith<$R, MovieRateFilterDataDto, $Out>
      get $asMovieRateFilterDataDto => $base.as((v, t, t2) =>
          _MovieRateFilterDataDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MovieRateFilterDataDtoCopyWith<
    $R,
    $In extends MovieRateFilterDataDto,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get excludeIds;
  ListCopyWith<$R, MovieGenreDto,
      ObjectCopyWith<$R, MovieGenreDto, MovieGenreDto>>? get targetGenres;
  ListCopyWith<$R, CountryDto, ObjectCopyWith<$R, CountryDto, CountryDto>>?
      get targetCountries;
  $R call(
      {List<int>? excludeIds,
      List<MovieGenreDto>? targetGenres,
      List<CountryDto>? targetCountries});
  MovieRateFilterDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MovieRateFilterDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MovieRateFilterDataDto, $Out>
    implements
        MovieRateFilterDataDtoCopyWith<$R, MovieRateFilterDataDto, $Out> {
  _MovieRateFilterDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MovieRateFilterDataDto> $mapper =
      MovieRateFilterDataDtoMapper.ensureInitialized();
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get excludeIds =>
      $value.excludeIds != null
          ? ListCopyWith(
              $value.excludeIds!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(excludeIds: v))
          : null;
  @override
  ListCopyWith<$R, MovieGenreDto,
          ObjectCopyWith<$R, MovieGenreDto, MovieGenreDto>>?
      get targetGenres => $value.targetGenres != null
          ? ListCopyWith(
              $value.targetGenres!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(targetGenres: v))
          : null;
  @override
  ListCopyWith<$R, CountryDto, ObjectCopyWith<$R, CountryDto, CountryDto>>?
      get targetCountries => $value.targetCountries != null
          ? ListCopyWith(
              $value.targetCountries!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(targetCountries: v))
          : null;
  @override
  $R call(
          {Object? excludeIds = $none,
          Object? targetGenres = $none,
          Object? targetCountries = $none}) =>
      $apply(FieldCopyWithData({
        if (excludeIds != $none) #excludeIds: excludeIds,
        if (targetGenres != $none) #targetGenres: targetGenres,
        if (targetCountries != $none) #targetCountries: targetCountries
      }));
  @override
  MovieRateFilterDataDto $make(CopyWithData data) => MovieRateFilterDataDto(
      excludeIds: data.get(#excludeIds, or: $value.excludeIds),
      targetGenres: data.get(#targetGenres, or: $value.targetGenres),
      targetCountries: data.get(#targetCountries, or: $value.targetCountries));

  @override
  MovieRateFilterDataDtoCopyWith<$R2, MovieRateFilterDataDto, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _MovieRateFilterDataDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
