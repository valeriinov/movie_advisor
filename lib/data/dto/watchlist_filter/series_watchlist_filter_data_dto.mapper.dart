// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'series_watchlist_filter_data_dto.dart';

class SeriesWatchlistFilterDataDtoMapper
    extends ClassMapperBase<SeriesWatchlistFilterDataDto> {
  SeriesWatchlistFilterDataDtoMapper._();

  static SeriesWatchlistFilterDataDtoMapper? _instance;
  static SeriesWatchlistFilterDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = SeriesWatchlistFilterDataDtoMapper._());
      WatchlistSortByDtoMapper.ensureInitialized();
      CountryDtoMapper.ensureInitialized();
      SeriesGenreDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SeriesWatchlistFilterDataDto';

  static WatchlistSortByDto? _$sortBy(SeriesWatchlistFilterDataDto v) =>
      v.sortBy;
  static const Field<SeriesWatchlistFilterDataDto, WatchlistSortByDto>
      _f$sortBy = Field('sortBy', _$sortBy, key: r'sort_by', opt: true);
  static List<CountryDto>? _$withCountries(SeriesWatchlistFilterDataDto v) =>
      v.withCountries;
  static const Field<SeriesWatchlistFilterDataDto, List<CountryDto>>
      _f$withCountries = Field('withCountries', _$withCountries,
          key: r'with_countries', opt: true);
  static bool? _$includeWatched(SeriesWatchlistFilterDataDto v) =>
      v.includeWatched;
  static const Field<SeriesWatchlistFilterDataDto, bool> _f$includeWatched =
      Field('includeWatched', _$includeWatched,
          key: r'include_watched', opt: true);
  static List<SeriesGenreDto>? _$withGenres(SeriesWatchlistFilterDataDto v) =>
      v.withGenres;
  static const Field<SeriesWatchlistFilterDataDto, List<SeriesGenreDto>>
      _f$withGenres =
      Field('withGenres', _$withGenres, key: r'with_genres', opt: true);
  static List<SeriesGenreDto>? _$withoutGenres(
          SeriesWatchlistFilterDataDto v) =>
      v.withoutGenres;
  static const Field<SeriesWatchlistFilterDataDto, List<SeriesGenreDto>>
      _f$withoutGenres = Field('withoutGenres', _$withoutGenres,
          key: r'without_genres', opt: true);
  static DateTime? _$fromDate(SeriesWatchlistFilterDataDto v) => v.fromDate;
  static const Field<SeriesWatchlistFilterDataDto, DateTime> _f$fromDate =
      Field('fromDate', _$fromDate, key: r'from_date', opt: true);
  static DateTime? _$toDate(SeriesWatchlistFilterDataDto v) => v.toDate;
  static const Field<SeriesWatchlistFilterDataDto, DateTime> _f$toDate =
      Field('toDate', _$toDate, key: r'to_date', opt: true);

  @override
  final MappableFields<SeriesWatchlistFilterDataDto> fields = const {
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

  static SeriesWatchlistFilterDataDto _instantiate(DecodingData data) {
    return SeriesWatchlistFilterDataDto(
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

  static SeriesWatchlistFilterDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SeriesWatchlistFilterDataDto>(map);
  }

  static SeriesWatchlistFilterDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<SeriesWatchlistFilterDataDto>(json);
  }
}

mixin SeriesWatchlistFilterDataDtoMappable {
  String toJsonString() {
    return SeriesWatchlistFilterDataDtoMapper.ensureInitialized()
        .encodeJson<SeriesWatchlistFilterDataDto>(
            this as SeriesWatchlistFilterDataDto);
  }

  Map<String, dynamic> toJson() {
    return SeriesWatchlistFilterDataDtoMapper.ensureInitialized()
        .encodeMap<SeriesWatchlistFilterDataDto>(
            this as SeriesWatchlistFilterDataDto);
  }

  SeriesWatchlistFilterDataDtoCopyWith<SeriesWatchlistFilterDataDto,
          SeriesWatchlistFilterDataDto, SeriesWatchlistFilterDataDto>
      get copyWith => _SeriesWatchlistFilterDataDtoCopyWithImpl<
              SeriesWatchlistFilterDataDto, SeriesWatchlistFilterDataDto>(
          this as SeriesWatchlistFilterDataDto, $identity, $identity);
  @override
  String toString() {
    return SeriesWatchlistFilterDataDtoMapper.ensureInitialized()
        .stringifyValue(this as SeriesWatchlistFilterDataDto);
  }

  @override
  bool operator ==(Object other) {
    return SeriesWatchlistFilterDataDtoMapper.ensureInitialized()
        .equalsValue(this as SeriesWatchlistFilterDataDto, other);
  }

  @override
  int get hashCode {
    return SeriesWatchlistFilterDataDtoMapper.ensureInitialized()
        .hashValue(this as SeriesWatchlistFilterDataDto);
  }
}

extension SeriesWatchlistFilterDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SeriesWatchlistFilterDataDto, $Out> {
  SeriesWatchlistFilterDataDtoCopyWith<$R, SeriesWatchlistFilterDataDto, $Out>
      get $asSeriesWatchlistFilterDataDto => $base.as((v, t, t2) =>
          _SeriesWatchlistFilterDataDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SeriesWatchlistFilterDataDtoCopyWith<
    $R,
    $In extends SeriesWatchlistFilterDataDto,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, CountryDto, ObjectCopyWith<$R, CountryDto, CountryDto>>?
      get withCountries;
  ListCopyWith<$R, SeriesGenreDto,
      ObjectCopyWith<$R, SeriesGenreDto, SeriesGenreDto>>? get withGenres;
  ListCopyWith<$R, SeriesGenreDto,
      ObjectCopyWith<$R, SeriesGenreDto, SeriesGenreDto>>? get withoutGenres;
  $R call(
      {WatchlistSortByDto? sortBy,
      List<CountryDto>? withCountries,
      bool? includeWatched,
      List<SeriesGenreDto>? withGenres,
      List<SeriesGenreDto>? withoutGenres,
      DateTime? fromDate,
      DateTime? toDate});
  SeriesWatchlistFilterDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SeriesWatchlistFilterDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SeriesWatchlistFilterDataDto, $Out>
    implements
        SeriesWatchlistFilterDataDtoCopyWith<$R, SeriesWatchlistFilterDataDto,
            $Out> {
  _SeriesWatchlistFilterDataDtoCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SeriesWatchlistFilterDataDto> $mapper =
      SeriesWatchlistFilterDataDtoMapper.ensureInitialized();
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
  SeriesWatchlistFilterDataDto $make(CopyWithData data) =>
      SeriesWatchlistFilterDataDto(
          sortBy: data.get(#sortBy, or: $value.sortBy),
          withCountries: data.get(#withCountries, or: $value.withCountries),
          includeWatched: data.get(#includeWatched, or: $value.includeWatched),
          withGenres: data.get(#withGenres, or: $value.withGenres),
          withoutGenres: data.get(#withoutGenres, or: $value.withoutGenres),
          fromDate: data.get(#fromDate, or: $value.fromDate),
          toDate: data.get(#toDate, or: $value.toDate));

  @override
  SeriesWatchlistFilterDataDtoCopyWith<$R2, SeriesWatchlistFilterDataDto, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _SeriesWatchlistFilterDataDtoCopyWithImpl<$R2, $Out2>(
              $value, $cast, t);
}
