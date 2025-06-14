// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'series_watched_filter_data_dto.dart';

class SeriesWatchedFilterDataDtoMapper
    extends ClassMapperBase<SeriesWatchedFilterDataDto> {
  SeriesWatchedFilterDataDtoMapper._();

  static SeriesWatchedFilterDataDtoMapper? _instance;
  static SeriesWatchedFilterDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = SeriesWatchedFilterDataDtoMapper._());
      WatchedSortByDtoMapper.ensureInitialized();
      CountryDtoMapper.ensureInitialized();
      SeriesGenreDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SeriesWatchedFilterDataDto';

  static WatchedSortByDto? _$sortBy(SeriesWatchedFilterDataDto v) => v.sortBy;
  static const Field<SeriesWatchedFilterDataDto, WatchedSortByDto> _f$sortBy =
      Field('sortBy', _$sortBy, key: r'sort_by', opt: true);
  static List<CountryDto>? _$withCountries(SeriesWatchedFilterDataDto v) =>
      v.withCountries;
  static const Field<SeriesWatchedFilterDataDto, List<CountryDto>>
      _f$withCountries = Field('withCountries', _$withCountries,
          key: r'with_countries', opt: true);
  static bool? _$includeWatchlist(SeriesWatchedFilterDataDto v) =>
      v.includeWatchlist;
  static const Field<SeriesWatchedFilterDataDto, bool> _f$includeWatchlist =
      Field('includeWatchlist', _$includeWatchlist,
          key: r'include_watchlist', opt: true);
  static List<SeriesGenreDto>? _$withGenres(SeriesWatchedFilterDataDto v) =>
      v.withGenres;
  static const Field<SeriesWatchedFilterDataDto, List<SeriesGenreDto>>
      _f$withGenres =
      Field('withGenres', _$withGenres, key: r'with_genres', opt: true);
  static List<SeriesGenreDto>? _$withoutGenres(SeriesWatchedFilterDataDto v) =>
      v.withoutGenres;
  static const Field<SeriesWatchedFilterDataDto, List<SeriesGenreDto>>
      _f$withoutGenres = Field('withoutGenres', _$withoutGenres,
          key: r'without_genres', opt: true);
  static DateTime? _$fromPremiereDate(SeriesWatchedFilterDataDto v) =>
      v.fromPremiereDate;
  static const Field<SeriesWatchedFilterDataDto, DateTime> _f$fromPremiereDate =
      Field('fromPremiereDate', _$fromPremiereDate,
          key: r'from_premiere_date', opt: true);
  static DateTime? _$toPremiereDate(SeriesWatchedFilterDataDto v) =>
      v.toPremiereDate;
  static const Field<SeriesWatchedFilterDataDto, DateTime> _f$toPremiereDate =
      Field('toPremiereDate', _$toPremiereDate,
          key: r'to_premiere_date', opt: true);
  static DateTime? _$fromWatchedDate(SeriesWatchedFilterDataDto v) =>
      v.fromWatchedDate;
  static const Field<SeriesWatchedFilterDataDto, DateTime> _f$fromWatchedDate =
      Field('fromWatchedDate', _$fromWatchedDate,
          key: r'from_watched_date', opt: true);
  static DateTime? _$toWatchedDate(SeriesWatchedFilterDataDto v) =>
      v.toWatchedDate;
  static const Field<SeriesWatchedFilterDataDto, DateTime> _f$toWatchedDate =
      Field('toWatchedDate', _$toWatchedDate,
          key: r'to_watched_date', opt: true);

  @override
  final MappableFields<SeriesWatchedFilterDataDto> fields = const {
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

  static SeriesWatchedFilterDataDto _instantiate(DecodingData data) {
    return SeriesWatchedFilterDataDto(
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

  static SeriesWatchedFilterDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SeriesWatchedFilterDataDto>(map);
  }

  static SeriesWatchedFilterDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<SeriesWatchedFilterDataDto>(json);
  }
}

mixin SeriesWatchedFilterDataDtoMappable {
  String toJsonString() {
    return SeriesWatchedFilterDataDtoMapper.ensureInitialized()
        .encodeJson<SeriesWatchedFilterDataDto>(
            this as SeriesWatchedFilterDataDto);
  }

  Map<String, dynamic> toJson() {
    return SeriesWatchedFilterDataDtoMapper.ensureInitialized()
        .encodeMap<SeriesWatchedFilterDataDto>(
            this as SeriesWatchedFilterDataDto);
  }

  SeriesWatchedFilterDataDtoCopyWith<SeriesWatchedFilterDataDto,
          SeriesWatchedFilterDataDto, SeriesWatchedFilterDataDto>
      get copyWith => _SeriesWatchedFilterDataDtoCopyWithImpl<
              SeriesWatchedFilterDataDto, SeriesWatchedFilterDataDto>(
          this as SeriesWatchedFilterDataDto, $identity, $identity);
  @override
  String toString() {
    return SeriesWatchedFilterDataDtoMapper.ensureInitialized()
        .stringifyValue(this as SeriesWatchedFilterDataDto);
  }

  @override
  bool operator ==(Object other) {
    return SeriesWatchedFilterDataDtoMapper.ensureInitialized()
        .equalsValue(this as SeriesWatchedFilterDataDto, other);
  }

  @override
  int get hashCode {
    return SeriesWatchedFilterDataDtoMapper.ensureInitialized()
        .hashValue(this as SeriesWatchedFilterDataDto);
  }
}

extension SeriesWatchedFilterDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SeriesWatchedFilterDataDto, $Out> {
  SeriesWatchedFilterDataDtoCopyWith<$R, SeriesWatchedFilterDataDto, $Out>
      get $asSeriesWatchedFilterDataDto => $base.as((v, t, t2) =>
          _SeriesWatchedFilterDataDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SeriesWatchedFilterDataDtoCopyWith<
    $R,
    $In extends SeriesWatchedFilterDataDto,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, CountryDto, ObjectCopyWith<$R, CountryDto, CountryDto>>?
      get withCountries;
  ListCopyWith<$R, SeriesGenreDto,
      ObjectCopyWith<$R, SeriesGenreDto, SeriesGenreDto>>? get withGenres;
  ListCopyWith<$R, SeriesGenreDto,
      ObjectCopyWith<$R, SeriesGenreDto, SeriesGenreDto>>? get withoutGenres;
  $R call(
      {WatchedSortByDto? sortBy,
      List<CountryDto>? withCountries,
      bool? includeWatchlist,
      List<SeriesGenreDto>? withGenres,
      List<SeriesGenreDto>? withoutGenres,
      DateTime? fromPremiereDate,
      DateTime? toPremiereDate,
      DateTime? fromWatchedDate,
      DateTime? toWatchedDate});
  SeriesWatchedFilterDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SeriesWatchedFilterDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SeriesWatchedFilterDataDto, $Out>
    implements
        SeriesWatchedFilterDataDtoCopyWith<$R, SeriesWatchedFilterDataDto,
            $Out> {
  _SeriesWatchedFilterDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SeriesWatchedFilterDataDto> $mapper =
      SeriesWatchedFilterDataDtoMapper.ensureInitialized();
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
  SeriesWatchedFilterDataDto $make(CopyWithData data) =>
      SeriesWatchedFilterDataDto(
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
  SeriesWatchedFilterDataDtoCopyWith<$R2, SeriesWatchedFilterDataDto, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _SeriesWatchedFilterDataDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
