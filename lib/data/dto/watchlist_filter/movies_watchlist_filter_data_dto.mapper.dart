// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'movies_watchlist_filter_data_dto.dart';

class MoviesWatchlistFilterDataDtoMapper
    extends ClassMapperBase<MoviesWatchlistFilterDataDto> {
  MoviesWatchlistFilterDataDtoMapper._();

  static MoviesWatchlistFilterDataDtoMapper? _instance;
  static MoviesWatchlistFilterDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = MoviesWatchlistFilterDataDtoMapper._());
      WatchlistSortByDtoMapper.ensureInitialized();
      CountryDtoMapper.ensureInitialized();
      MovieGenreDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MoviesWatchlistFilterDataDto';

  static WatchlistSortByDto? _$sortBy(MoviesWatchlistFilterDataDto v) =>
      v.sortBy;
  static const Field<MoviesWatchlistFilterDataDto, WatchlistSortByDto>
      _f$sortBy = Field('sortBy', _$sortBy, key: r'sort_by', opt: true);
  static List<CountryDto>? _$withCountries(MoviesWatchlistFilterDataDto v) =>
      v.withCountries;
  static const Field<MoviesWatchlistFilterDataDto, List<CountryDto>>
      _f$withCountries = Field('withCountries', _$withCountries,
          key: r'with_countries', opt: true);
  static bool? _$includeWatched(MoviesWatchlistFilterDataDto v) =>
      v.includeWatched;
  static const Field<MoviesWatchlistFilterDataDto, bool> _f$includeWatched =
      Field('includeWatched', _$includeWatched,
          key: r'include_watched', opt: true);
  static List<MovieGenreDto>? _$withGenres(MoviesWatchlistFilterDataDto v) =>
      v.withGenres;
  static const Field<MoviesWatchlistFilterDataDto, List<MovieGenreDto>>
      _f$withGenres =
      Field('withGenres', _$withGenres, key: r'with_genres', opt: true);
  static List<MovieGenreDto>? _$withoutGenres(MoviesWatchlistFilterDataDto v) =>
      v.withoutGenres;
  static const Field<MoviesWatchlistFilterDataDto, List<MovieGenreDto>>
      _f$withoutGenres = Field('withoutGenres', _$withoutGenres,
          key: r'without_genres', opt: true);
  static DateTime? _$fromDate(MoviesWatchlistFilterDataDto v) => v.fromDate;
  static const Field<MoviesWatchlistFilterDataDto, DateTime> _f$fromDate =
      Field('fromDate', _$fromDate, key: r'from_date', opt: true);
  static DateTime? _$toDate(MoviesWatchlistFilterDataDto v) => v.toDate;
  static const Field<MoviesWatchlistFilterDataDto, DateTime> _f$toDate =
      Field('toDate', _$toDate, key: r'to_date', opt: true);

  @override
  final MappableFields<MoviesWatchlistFilterDataDto> fields = const {
    #sortBy: _f$sortBy,
    #withCountries: _f$withCountries,
    #includeWatched: _f$includeWatched,
    #withGenres: _f$withGenres,
    #withoutGenres: _f$withoutGenres,
    #fromDate: _f$fromDate,
    #toDate: _f$toDate,
  };
  @override
  final bool ignoreNull = true;

  static MoviesWatchlistFilterDataDto _instantiate(DecodingData data) {
    return MoviesWatchlistFilterDataDto(
        sortBy: data.dec(_f$sortBy),
        withCountries: data.dec(_f$withCountries),
        includeWatched: data.dec(_f$includeWatched),
        withGenres: data.dec(_f$withGenres),
        withoutGenres: data.dec(_f$withoutGenres),
        fromDate: data.dec(_f$fromDate),
        toDate: data.dec(_f$toDate));
  }

  @override
  final Function instantiate = _instantiate;

  static MoviesWatchlistFilterDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MoviesWatchlistFilterDataDto>(map);
  }

  static MoviesWatchlistFilterDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<MoviesWatchlistFilterDataDto>(json);
  }
}

mixin MoviesWatchlistFilterDataDtoMappable {
  String toJsonString() {
    return MoviesWatchlistFilterDataDtoMapper.ensureInitialized()
        .encodeJson<MoviesWatchlistFilterDataDto>(
            this as MoviesWatchlistFilterDataDto);
  }

  Map<String, dynamic> toJson() {
    return MoviesWatchlistFilterDataDtoMapper.ensureInitialized()
        .encodeMap<MoviesWatchlistFilterDataDto>(
            this as MoviesWatchlistFilterDataDto);
  }

  MoviesWatchlistFilterDataDtoCopyWith<MoviesWatchlistFilterDataDto,
          MoviesWatchlistFilterDataDto, MoviesWatchlistFilterDataDto>
      get copyWith => _MoviesWatchlistFilterDataDtoCopyWithImpl<
              MoviesWatchlistFilterDataDto, MoviesWatchlistFilterDataDto>(
          this as MoviesWatchlistFilterDataDto, $identity, $identity);
  @override
  String toString() {
    return MoviesWatchlistFilterDataDtoMapper.ensureInitialized()
        .stringifyValue(this as MoviesWatchlistFilterDataDto);
  }

  @override
  bool operator ==(Object other) {
    return MoviesWatchlistFilterDataDtoMapper.ensureInitialized()
        .equalsValue(this as MoviesWatchlistFilterDataDto, other);
  }

  @override
  int get hashCode {
    return MoviesWatchlistFilterDataDtoMapper.ensureInitialized()
        .hashValue(this as MoviesWatchlistFilterDataDto);
  }
}

extension MoviesWatchlistFilterDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MoviesWatchlistFilterDataDto, $Out> {
  MoviesWatchlistFilterDataDtoCopyWith<$R, MoviesWatchlistFilterDataDto, $Out>
      get $asMoviesWatchlistFilterDataDto => $base.as((v, t, t2) =>
          _MoviesWatchlistFilterDataDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MoviesWatchlistFilterDataDtoCopyWith<
    $R,
    $In extends MoviesWatchlistFilterDataDto,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, CountryDto, ObjectCopyWith<$R, CountryDto, CountryDto>>?
      get withCountries;
  ListCopyWith<$R, MovieGenreDto,
      ObjectCopyWith<$R, MovieGenreDto, MovieGenreDto>>? get withGenres;
  ListCopyWith<$R, MovieGenreDto,
      ObjectCopyWith<$R, MovieGenreDto, MovieGenreDto>>? get withoutGenres;
  $R call(
      {WatchlistSortByDto? sortBy,
      List<CountryDto>? withCountries,
      bool? includeWatched,
      List<MovieGenreDto>? withGenres,
      List<MovieGenreDto>? withoutGenres,
      DateTime? fromDate,
      DateTime? toDate});
  MoviesWatchlistFilterDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MoviesWatchlistFilterDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MoviesWatchlistFilterDataDto, $Out>
    implements
        MoviesWatchlistFilterDataDtoCopyWith<$R, MoviesWatchlistFilterDataDto,
            $Out> {
  _MoviesWatchlistFilterDataDtoCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MoviesWatchlistFilterDataDto> $mapper =
      MoviesWatchlistFilterDataDtoMapper.ensureInitialized();
  @override
  ListCopyWith<$R, CountryDto, ObjectCopyWith<$R, CountryDto, CountryDto>>?
      get withCountries => $value.withCountries != null
          ? ListCopyWith(
              $value.withCountries!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(withCountries: v))
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
          {Object? sortBy = $none,
          Object? withCountries = $none,
          Object? includeWatched = $none,
          Object? withGenres = $none,
          Object? withoutGenres = $none,
          Object? fromDate = $none,
          Object? toDate = $none}) =>
      $apply(FieldCopyWithData({
        if (sortBy != $none) #sortBy: sortBy,
        if (withCountries != $none) #withCountries: withCountries,
        if (includeWatched != $none) #includeWatched: includeWatched,
        if (withGenres != $none) #withGenres: withGenres,
        if (withoutGenres != $none) #withoutGenres: withoutGenres,
        if (fromDate != $none) #fromDate: fromDate,
        if (toDate != $none) #toDate: toDate
      }));
  @override
  MoviesWatchlistFilterDataDto $make(CopyWithData data) =>
      MoviesWatchlistFilterDataDto(
          sortBy: data.get(#sortBy, or: $value.sortBy),
          withCountries: data.get(#withCountries, or: $value.withCountries),
          includeWatched: data.get(#includeWatched, or: $value.includeWatched),
          withGenres: data.get(#withGenres, or: $value.withGenres),
          withoutGenres: data.get(#withoutGenres, or: $value.withoutGenres),
          fromDate: data.get(#fromDate, or: $value.fromDate),
          toDate: data.get(#toDate, or: $value.toDate));

  @override
  MoviesWatchlistFilterDataDtoCopyWith<$R2, MoviesWatchlistFilterDataDto, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _MoviesWatchlistFilterDataDtoCopyWithImpl<$R2, $Out2>(
              $value, $cast, t);
}
