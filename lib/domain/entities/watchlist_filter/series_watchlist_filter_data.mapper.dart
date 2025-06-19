// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'series_watchlist_filter_data.dart';

class SeriesWatchlistFilterDataMapper
    extends ClassMapperBase<SeriesWatchlistFilterData> {
  SeriesWatchlistFilterDataMapper._();

  static SeriesWatchlistFilterDataMapper? _instance;
  static SeriesWatchlistFilterDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = SeriesWatchlistFilterDataMapper._());
      WatchlistFilterDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SeriesWatchlistFilterData';

  static WatchlistSortBy _$sortBy(SeriesWatchlistFilterData v) => v.sortBy;
  static const Field<SeriesWatchlistFilterData, WatchlistSortBy> _f$sortBy =
      Field('sortBy', _$sortBy, opt: true, def: WatchlistSortBy.addedDateAsc);
  static List<Country> _$withCountries(SeriesWatchlistFilterData v) =>
      v.withCountries;
  static const Field<SeriesWatchlistFilterData, List<Country>>
      _f$withCountries =
      Field('withCountries', _$withCountries, opt: true, def: const []);
  static bool _$includeWatched(SeriesWatchlistFilterData v) => v.includeWatched;
  static const Field<SeriesWatchlistFilterData, bool> _f$includeWatched =
      Field('includeWatched', _$includeWatched, opt: true, def: true);
  static List<SeriesGenre> _$withGenres(SeriesWatchlistFilterData v) =>
      v.withGenres;
  static const Field<SeriesWatchlistFilterData, List<SeriesGenre>>
      _f$withGenres =
      Field('withGenres', _$withGenres, opt: true, def: const []);
  static List<SeriesGenre> _$withoutGenres(SeriesWatchlistFilterData v) =>
      v.withoutGenres;
  static const Field<SeriesWatchlistFilterData, List<SeriesGenre>>
      _f$withoutGenres =
      Field('withoutGenres', _$withoutGenres, opt: true, def: const []);
  static DateTime? _$fromPremiereDate(SeriesWatchlistFilterData v) =>
      v.fromPremiereDate;
  static const Field<SeriesWatchlistFilterData, DateTime> _f$fromPremiereDate =
      Field('fromPremiereDate', _$fromPremiereDate, opt: true);
  static DateTime? _$toPremiereDate(SeriesWatchlistFilterData v) =>
      v.toPremiereDate;
  static const Field<SeriesWatchlistFilterData, DateTime> _f$toPremiereDate =
      Field('toPremiereDate', _$toPremiereDate, opt: true);
  static DateTime? _$fromAddedDate(SeriesWatchlistFilterData v) =>
      v.fromAddedDate;
  static const Field<SeriesWatchlistFilterData, DateTime> _f$fromAddedDate =
      Field('fromAddedDate', _$fromAddedDate, opt: true);
  static DateTime? _$toAddedDate(SeriesWatchlistFilterData v) => v.toAddedDate;
  static const Field<SeriesWatchlistFilterData, DateTime> _f$toAddedDate =
      Field('toAddedDate', _$toAddedDate, opt: true);

  @override
  final MappableFields<SeriesWatchlistFilterData> fields = const {
    #sortBy: _f$sortBy,
    #withCountries: _f$withCountries,
    #includeWatched: _f$includeWatched,
    #withGenres: _f$withGenres,
    #withoutGenres: _f$withoutGenres,
    #fromPremiereDate: _f$fromPremiereDate,
    #toPremiereDate: _f$toPremiereDate,
    #fromAddedDate: _f$fromAddedDate,
    #toAddedDate: _f$toAddedDate,
  };

  static SeriesWatchlistFilterData _instantiate(DecodingData data) {
    return SeriesWatchlistFilterData(
        sortBy: data.dec(_f$sortBy),
        withCountries: data.dec(_f$withCountries),
        includeWatched: data.dec(_f$includeWatched),
        withGenres: data.dec(_f$withGenres),
        withoutGenres: data.dec(_f$withoutGenres),
        fromPremiereDate: data.dec(_f$fromPremiereDate),
        toPremiereDate: data.dec(_f$toPremiereDate),
        fromAddedDate: data.dec(_f$fromAddedDate),
        toAddedDate: data.dec(_f$toAddedDate));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin SeriesWatchlistFilterDataMappable {
  SeriesWatchlistFilterDataCopyWith<SeriesWatchlistFilterData,
          SeriesWatchlistFilterData, SeriesWatchlistFilterData>
      get copyWith => _SeriesWatchlistFilterDataCopyWithImpl<
              SeriesWatchlistFilterData, SeriesWatchlistFilterData>(
          this as SeriesWatchlistFilterData, $identity, $identity);
  @override
  String toString() {
    return SeriesWatchlistFilterDataMapper.ensureInitialized()
        .stringifyValue(this as SeriesWatchlistFilterData);
  }

  @override
  bool operator ==(Object other) {
    return SeriesWatchlistFilterDataMapper.ensureInitialized()
        .equalsValue(this as SeriesWatchlistFilterData, other);
  }

  @override
  int get hashCode {
    return SeriesWatchlistFilterDataMapper.ensureInitialized()
        .hashValue(this as SeriesWatchlistFilterData);
  }
}

extension SeriesWatchlistFilterDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SeriesWatchlistFilterData, $Out> {
  SeriesWatchlistFilterDataCopyWith<$R, SeriesWatchlistFilterData, $Out>
      get $asSeriesWatchlistFilterData => $base.as((v, t, t2) =>
          _SeriesWatchlistFilterDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SeriesWatchlistFilterDataCopyWith<
    $R,
    $In extends SeriesWatchlistFilterData,
    $Out> implements WatchlistFilterDataCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, Country, ObjectCopyWith<$R, Country, Country>>
      get withCountries;
  ListCopyWith<$R, SeriesGenre, ObjectCopyWith<$R, SeriesGenre, SeriesGenre>>
      get withGenres;
  ListCopyWith<$R, SeriesGenre, ObjectCopyWith<$R, SeriesGenre, SeriesGenre>>
      get withoutGenres;
  @override
  $R call(
      {WatchlistSortBy? sortBy,
      List<Country>? withCountries,
      bool? includeWatched,
      List<SeriesGenre>? withGenres,
      List<SeriesGenre>? withoutGenres,
      DateTime? fromPremiereDate,
      DateTime? toPremiereDate,
      DateTime? fromAddedDate,
      DateTime? toAddedDate});
  SeriesWatchlistFilterDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SeriesWatchlistFilterDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SeriesWatchlistFilterData, $Out>
    implements
        SeriesWatchlistFilterDataCopyWith<$R, SeriesWatchlistFilterData, $Out> {
  _SeriesWatchlistFilterDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SeriesWatchlistFilterData> $mapper =
      SeriesWatchlistFilterDataMapper.ensureInitialized();
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
          {WatchlistSortBy? sortBy,
          List<Country>? withCountries,
          bool? includeWatched,
          List<SeriesGenre>? withGenres,
          List<SeriesGenre>? withoutGenres,
          Object? fromPremiereDate = $none,
          Object? toPremiereDate = $none,
          Object? fromAddedDate = $none,
          Object? toAddedDate = $none}) =>
      $apply(FieldCopyWithData({
        if (sortBy != null) #sortBy: sortBy,
        if (withCountries != null) #withCountries: withCountries,
        if (includeWatched != null) #includeWatched: includeWatched,
        if (withGenres != null) #withGenres: withGenres,
        if (withoutGenres != null) #withoutGenres: withoutGenres,
        if (fromPremiereDate != $none) #fromPremiereDate: fromPremiereDate,
        if (toPremiereDate != $none) #toPremiereDate: toPremiereDate,
        if (fromAddedDate != $none) #fromAddedDate: fromAddedDate,
        if (toAddedDate != $none) #toAddedDate: toAddedDate
      }));
  @override
  SeriesWatchlistFilterData $make(CopyWithData data) =>
      SeriesWatchlistFilterData(
          sortBy: data.get(#sortBy, or: $value.sortBy),
          withCountries: data.get(#withCountries, or: $value.withCountries),
          includeWatched: data.get(#includeWatched, or: $value.includeWatched),
          withGenres: data.get(#withGenres, or: $value.withGenres),
          withoutGenres: data.get(#withoutGenres, or: $value.withoutGenres),
          fromPremiereDate:
              data.get(#fromPremiereDate, or: $value.fromPremiereDate),
          toPremiereDate: data.get(#toPremiereDate, or: $value.toPremiereDate),
          fromAddedDate: data.get(#fromAddedDate, or: $value.fromAddedDate),
          toAddedDate: data.get(#toAddedDate, or: $value.toAddedDate));

  @override
  SeriesWatchlistFilterDataCopyWith<$R2, SeriesWatchlistFilterData, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _SeriesWatchlistFilterDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
