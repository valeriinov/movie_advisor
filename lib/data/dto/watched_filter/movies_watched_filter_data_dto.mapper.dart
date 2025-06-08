// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'movies_watched_filter_data_dto.dart';

class MoviesWatchedFilterDataDtoMapper
    extends ClassMapperBase<MoviesWatchedFilterDataDto> {
  MoviesWatchedFilterDataDtoMapper._();

  static MoviesWatchedFilterDataDtoMapper? _instance;
  static MoviesWatchedFilterDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = MoviesWatchedFilterDataDtoMapper._());
      WatchedSortByDtoMapper.ensureInitialized();
      CountryDtoMapper.ensureInitialized();
      MovieGenreDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MoviesWatchedFilterDataDto';

  static WatchedSortByDto? _$sortBy(MoviesWatchedFilterDataDto v) => v.sortBy;
  static const Field<MoviesWatchedFilterDataDto, WatchedSortByDto> _f$sortBy =
      Field('sortBy', _$sortBy, key: r'sort_by', opt: true);
  static List<CountryDto>? _$withCountries(MoviesWatchedFilterDataDto v) =>
      v.withCountries;
  static const Field<MoviesWatchedFilterDataDto, List<CountryDto>>
      _f$withCountries = Field('withCountries', _$withCountries,
          key: r'with_countries', opt: true);
  static bool? _$includeWatchlist(MoviesWatchedFilterDataDto v) =>
      v.includeWatchlist;
  static const Field<MoviesWatchedFilterDataDto, bool> _f$includeWatchlist =
      Field('includeWatchlist', _$includeWatchlist,
          key: r'include_watchlist', opt: true);
  static List<MovieGenreDto>? _$withGenres(MoviesWatchedFilterDataDto v) =>
      v.withGenres;
  static const Field<MoviesWatchedFilterDataDto, List<MovieGenreDto>>
      _f$withGenres =
      Field('withGenres', _$withGenres, key: r'with_genres', opt: true);
  static List<MovieGenreDto>? _$withoutGenres(MoviesWatchedFilterDataDto v) =>
      v.withoutGenres;
  static const Field<MoviesWatchedFilterDataDto, List<MovieGenreDto>>
      _f$withoutGenres = Field('withoutGenres', _$withoutGenres,
          key: r'without_genres', opt: true);
  static DateTime? _$fromPremiereDate(MoviesWatchedFilterDataDto v) =>
      v.fromPremiereDate;
  static const Field<MoviesWatchedFilterDataDto, DateTime> _f$fromPremiereDate =
      Field('fromPremiereDate', _$fromPremiereDate,
          key: r'from_premiere_date', opt: true);
  static DateTime? _$toPremiereDate(MoviesWatchedFilterDataDto v) =>
      v.toPremiereDate;
  static const Field<MoviesWatchedFilterDataDto, DateTime> _f$toPremiereDate =
      Field('toPremiereDate', _$toPremiereDate,
          key: r'to_premiere_date', opt: true);
  static DateTime? _$fromWatchedDate(MoviesWatchedFilterDataDto v) =>
      v.fromWatchedDate;
  static const Field<MoviesWatchedFilterDataDto, DateTime> _f$fromWatchedDate =
      Field('fromWatchedDate', _$fromWatchedDate,
          key: r'from_watched_date', opt: true);
  static DateTime? _$toWatchedDate(MoviesWatchedFilterDataDto v) =>
      v.toWatchedDate;
  static const Field<MoviesWatchedFilterDataDto, DateTime> _f$toWatchedDate =
      Field('toWatchedDate', _$toWatchedDate,
          key: r'to_watched_date', opt: true);

  @override
  final MappableFields<MoviesWatchedFilterDataDto> fields = const {
    #sortBy: _f$sortBy,
    #withCountries: _f$withCountries,
    #includeWatchlist: _f$includeWatchlist,
    #withGenres: _f$withGenres,
    #withoutGenres: _f$withoutGenres,
    #fromPremiereDate: _f$fromPremiereDate,
    #toPremiereDate: _f$toPremiereDate,
    #fromWatchedDate: _f$fromWatchedDate,
    #toWatchedDate: _f$toWatchedDate,
  };
  @override
  final bool ignoreNull = true;

  static MoviesWatchedFilterDataDto _instantiate(DecodingData data) {
    return MoviesWatchedFilterDataDto(
        sortBy: data.dec(_f$sortBy),
        withCountries: data.dec(_f$withCountries),
        includeWatchlist: data.dec(_f$includeWatchlist),
        withGenres: data.dec(_f$withGenres),
        withoutGenres: data.dec(_f$withoutGenres),
        fromPremiereDate: data.dec(_f$fromPremiereDate),
        toPremiereDate: data.dec(_f$toPremiereDate),
        fromWatchedDate: data.dec(_f$fromWatchedDate),
        toWatchedDate: data.dec(_f$toWatchedDate));
  }

  @override
  final Function instantiate = _instantiate;

  static MoviesWatchedFilterDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MoviesWatchedFilterDataDto>(map);
  }

  static MoviesWatchedFilterDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<MoviesWatchedFilterDataDto>(json);
  }
}

mixin MoviesWatchedFilterDataDtoMappable {
  String toJsonString() {
    return MoviesWatchedFilterDataDtoMapper.ensureInitialized()
        .encodeJson<MoviesWatchedFilterDataDto>(
            this as MoviesWatchedFilterDataDto);
  }

  Map<String, dynamic> toJson() {
    return MoviesWatchedFilterDataDtoMapper.ensureInitialized()
        .encodeMap<MoviesWatchedFilterDataDto>(
            this as MoviesWatchedFilterDataDto);
  }

  MoviesWatchedFilterDataDtoCopyWith<MoviesWatchedFilterDataDto,
          MoviesWatchedFilterDataDto, MoviesWatchedFilterDataDto>
      get copyWith => _MoviesWatchedFilterDataDtoCopyWithImpl<
              MoviesWatchedFilterDataDto, MoviesWatchedFilterDataDto>(
          this as MoviesWatchedFilterDataDto, $identity, $identity);
  @override
  String toString() {
    return MoviesWatchedFilterDataDtoMapper.ensureInitialized()
        .stringifyValue(this as MoviesWatchedFilterDataDto);
  }

  @override
  bool operator ==(Object other) {
    return MoviesWatchedFilterDataDtoMapper.ensureInitialized()
        .equalsValue(this as MoviesWatchedFilterDataDto, other);
  }

  @override
  int get hashCode {
    return MoviesWatchedFilterDataDtoMapper.ensureInitialized()
        .hashValue(this as MoviesWatchedFilterDataDto);
  }
}

extension MoviesWatchedFilterDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MoviesWatchedFilterDataDto, $Out> {
  MoviesWatchedFilterDataDtoCopyWith<$R, MoviesWatchedFilterDataDto, $Out>
      get $asMoviesWatchedFilterDataDto => $base.as((v, t, t2) =>
          _MoviesWatchedFilterDataDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MoviesWatchedFilterDataDtoCopyWith<
    $R,
    $In extends MoviesWatchedFilterDataDto,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, CountryDto, ObjectCopyWith<$R, CountryDto, CountryDto>>?
      get withCountries;
  ListCopyWith<$R, MovieGenreDto,
      ObjectCopyWith<$R, MovieGenreDto, MovieGenreDto>>? get withGenres;
  ListCopyWith<$R, MovieGenreDto,
      ObjectCopyWith<$R, MovieGenreDto, MovieGenreDto>>? get withoutGenres;
  $R call(
      {WatchedSortByDto? sortBy,
      List<CountryDto>? withCountries,
      bool? includeWatchlist,
      List<MovieGenreDto>? withGenres,
      List<MovieGenreDto>? withoutGenres,
      DateTime? fromPremiereDate,
      DateTime? toPremiereDate,
      DateTime? fromWatchedDate,
      DateTime? toWatchedDate});
  MoviesWatchedFilterDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MoviesWatchedFilterDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MoviesWatchedFilterDataDto, $Out>
    implements
        MoviesWatchedFilterDataDtoCopyWith<$R, MoviesWatchedFilterDataDto,
            $Out> {
  _MoviesWatchedFilterDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MoviesWatchedFilterDataDto> $mapper =
      MoviesWatchedFilterDataDtoMapper.ensureInitialized();
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
          Object? includeWatchlist = $none,
          Object? withGenres = $none,
          Object? withoutGenres = $none,
          Object? fromPremiereDate = $none,
          Object? toPremiereDate = $none,
          Object? fromWatchedDate = $none,
          Object? toWatchedDate = $none}) =>
      $apply(FieldCopyWithData({
        if (sortBy != $none) #sortBy: sortBy,
        if (withCountries != $none) #withCountries: withCountries,
        if (includeWatchlist != $none) #includeWatchlist: includeWatchlist,
        if (withGenres != $none) #withGenres: withGenres,
        if (withoutGenres != $none) #withoutGenres: withoutGenres,
        if (fromPremiereDate != $none) #fromPremiereDate: fromPremiereDate,
        if (toPremiereDate != $none) #toPremiereDate: toPremiereDate,
        if (fromWatchedDate != $none) #fromWatchedDate: fromWatchedDate,
        if (toWatchedDate != $none) #toWatchedDate: toWatchedDate
      }));
  @override
  MoviesWatchedFilterDataDto $make(CopyWithData data) =>
      MoviesWatchedFilterDataDto(
          sortBy: data.get(#sortBy, or: $value.sortBy),
          withCountries: data.get(#withCountries, or: $value.withCountries),
          includeWatchlist:
              data.get(#includeWatchlist, or: $value.includeWatchlist),
          withGenres: data.get(#withGenres, or: $value.withGenres),
          withoutGenres: data.get(#withoutGenres, or: $value.withoutGenres),
          fromPremiereDate:
              data.get(#fromPremiereDate, or: $value.fromPremiereDate),
          toPremiereDate: data.get(#toPremiereDate, or: $value.toPremiereDate),
          fromWatchedDate:
              data.get(#fromWatchedDate, or: $value.fromWatchedDate),
          toWatchedDate: data.get(#toWatchedDate, or: $value.toWatchedDate));

  @override
  MoviesWatchedFilterDataDtoCopyWith<$R2, MoviesWatchedFilterDataDto, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _MoviesWatchedFilterDataDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
