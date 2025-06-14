// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'series_watched_filter_data.dart';

class SeriesWatchedFilterDataMapper
    extends ClassMapperBase<SeriesWatchedFilterData> {
  SeriesWatchedFilterDataMapper._();

  static SeriesWatchedFilterDataMapper? _instance;
  static SeriesWatchedFilterDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = SeriesWatchedFilterDataMapper._());
      WatchedFilterDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SeriesWatchedFilterData';

  static WatchedSortBy _$sortBy(SeriesWatchedFilterData v) => v.sortBy;
  static const Field<SeriesWatchedFilterData, WatchedSortBy> _f$sortBy =
      Field('sortBy', _$sortBy, opt: true, def: WatchedSortBy.watchedDateDesc);
  static List<Country> _$withCountries(SeriesWatchedFilterData v) =>
      v.withCountries;
  static const Field<SeriesWatchedFilterData, List<Country>> _f$withCountries =
      Field('withCountries', _$withCountries, opt: true, def: const []);
  static bool _$includeWatchlist(SeriesWatchedFilterData v) =>
      v.includeWatchlist;
  static const Field<SeriesWatchedFilterData, bool> _f$includeWatchlist =
      Field('includeWatchlist', _$includeWatchlist, opt: true, def: true);
  static List<SeriesGenre> _$withGenres(SeriesWatchedFilterData v) =>
      v.withGenres;
  static const Field<SeriesWatchedFilterData, List<SeriesGenre>> _f$withGenres =
      Field('withGenres', _$withGenres, opt: true, def: const []);
  static List<SeriesGenre> _$withoutGenres(SeriesWatchedFilterData v) =>
      v.withoutGenres;
  static const Field<SeriesWatchedFilterData, List<SeriesGenre>>
      _f$withoutGenres =
      Field('withoutGenres', _$withoutGenres, opt: true, def: const []);
  static DateTime? _$fromPremiereDate(SeriesWatchedFilterData v) =>
      v.fromPremiereDate;
  static const Field<SeriesWatchedFilterData, DateTime> _f$fromPremiereDate =
      Field('fromPremiereDate', _$fromPremiereDate, opt: true);
  static DateTime? _$toPremiereDate(SeriesWatchedFilterData v) =>
      v.toPremiereDate;
  static const Field<SeriesWatchedFilterData, DateTime> _f$toPremiereDate =
      Field('toPremiereDate', _$toPremiereDate, opt: true);
  static DateTime? _$fromWatchedDate(SeriesWatchedFilterData v) =>
      v.fromWatchedDate;
  static const Field<SeriesWatchedFilterData, DateTime> _f$fromWatchedDate =
      Field('fromWatchedDate', _$fromWatchedDate, opt: true);
  static DateTime? _$toWatchedDate(SeriesWatchedFilterData v) =>
      v.toWatchedDate;
  static const Field<SeriesWatchedFilterData, DateTime> _f$toWatchedDate =
      Field('toWatchedDate', _$toWatchedDate, opt: true);

  @override
  final MappableFields<SeriesWatchedFilterData> fields = const {
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

  static SeriesWatchedFilterData _instantiate(DecodingData data) {
    return SeriesWatchedFilterData(
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
}

mixin SeriesWatchedFilterDataMappable {
  SeriesWatchedFilterDataCopyWith<SeriesWatchedFilterData,
          SeriesWatchedFilterData, SeriesWatchedFilterData>
      get copyWith => _SeriesWatchedFilterDataCopyWithImpl<
              SeriesWatchedFilterData, SeriesWatchedFilterData>(
          this as SeriesWatchedFilterData, $identity, $identity);
  @override
  String toString() {
    return SeriesWatchedFilterDataMapper.ensureInitialized()
        .stringifyValue(this as SeriesWatchedFilterData);
  }

  @override
  bool operator ==(Object other) {
    return SeriesWatchedFilterDataMapper.ensureInitialized()
        .equalsValue(this as SeriesWatchedFilterData, other);
  }

  @override
  int get hashCode {
    return SeriesWatchedFilterDataMapper.ensureInitialized()
        .hashValue(this as SeriesWatchedFilterData);
  }
}

extension SeriesWatchedFilterDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SeriesWatchedFilterData, $Out> {
  SeriesWatchedFilterDataCopyWith<$R, SeriesWatchedFilterData, $Out>
      get $asSeriesWatchedFilterData => $base.as((v, t, t2) =>
          _SeriesWatchedFilterDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SeriesWatchedFilterDataCopyWith<
    $R,
    $In extends SeriesWatchedFilterData,
    $Out> implements WatchedFilterDataCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, Country, ObjectCopyWith<$R, Country, Country>>
      get withCountries;
  ListCopyWith<$R, SeriesGenre, ObjectCopyWith<$R, SeriesGenre, SeriesGenre>>
      get withGenres;
  ListCopyWith<$R, SeriesGenre, ObjectCopyWith<$R, SeriesGenre, SeriesGenre>>
      get withoutGenres;
  @override
  $R call(
      {WatchedSortBy? sortBy,
      List<Country>? withCountries,
      bool? includeWatchlist,
      List<SeriesGenre>? withGenres,
      List<SeriesGenre>? withoutGenres,
      DateTime? fromPremiereDate,
      DateTime? toPremiereDate,
      DateTime? fromWatchedDate,
      DateTime? toWatchedDate});
  SeriesWatchedFilterDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SeriesWatchedFilterDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SeriesWatchedFilterData, $Out>
    implements
        SeriesWatchedFilterDataCopyWith<$R, SeriesWatchedFilterData, $Out> {
  _SeriesWatchedFilterDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SeriesWatchedFilterData> $mapper =
      SeriesWatchedFilterDataMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Country, ObjectCopyWith<$R, Country, Country>>
      get withCountries => ListCopyWith(
          $value.withCountries,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(withCountries: v));
  @override
  ListCopyWith<$R, SeriesGenre, ObjectCopyWith<$R, SeriesGenre, SeriesGenre>>
      get withGenres => ListCopyWith(
          $value.withGenres,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(withGenres: v));
  @override
  ListCopyWith<$R, SeriesGenre, ObjectCopyWith<$R, SeriesGenre, SeriesGenre>>
      get withoutGenres => ListCopyWith(
          $value.withoutGenres,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(withoutGenres: v));
  @override
  $R call(
          {WatchedSortBy? sortBy,
          List<Country>? withCountries,
          bool? includeWatchlist,
          List<SeriesGenre>? withGenres,
          List<SeriesGenre>? withoutGenres,
          Object? fromPremiereDate = $none,
          Object? toPremiereDate = $none,
          Object? fromWatchedDate = $none,
          Object? toWatchedDate = $none}) =>
      $apply(FieldCopyWithData({
        if (sortBy != null) #sortBy: sortBy,
        if (withCountries != null) #withCountries: withCountries,
        if (includeWatchlist != null) #includeWatchlist: includeWatchlist,
        if (withGenres != null) #withGenres: withGenres,
        if (withoutGenres != null) #withoutGenres: withoutGenres,
        if (fromPremiereDate != $none) #fromPremiereDate: fromPremiereDate,
        if (toPremiereDate != $none) #toPremiereDate: toPremiereDate,
        if (fromWatchedDate != $none) #fromWatchedDate: fromWatchedDate,
        if (toWatchedDate != $none) #toWatchedDate: toWatchedDate
      }));
  @override
  SeriesWatchedFilterData $make(CopyWithData data) => SeriesWatchedFilterData(
      sortBy: data.get(#sortBy, or: $value.sortBy),
      withCountries: data.get(#withCountries, or: $value.withCountries),
      includeWatchlist:
          data.get(#includeWatchlist, or: $value.includeWatchlist),
      withGenres: data.get(#withGenres, or: $value.withGenres),
      withoutGenres: data.get(#withoutGenres, or: $value.withoutGenres),
      fromPremiereDate:
          data.get(#fromPremiereDate, or: $value.fromPremiereDate),
      toPremiereDate: data.get(#toPremiereDate, or: $value.toPremiereDate),
      fromWatchedDate: data.get(#fromWatchedDate, or: $value.fromWatchedDate),
      toWatchedDate: data.get(#toWatchedDate, or: $value.toWatchedDate));

  @override
  SeriesWatchedFilterDataCopyWith<$R2, SeriesWatchedFilterData, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _SeriesWatchedFilterDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
