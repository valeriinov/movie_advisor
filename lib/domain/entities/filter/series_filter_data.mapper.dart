// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'series_filter_data.dart';

class SeriesFilterDataMapper extends ClassMapperBase<SeriesFilterData> {
  SeriesFilterDataMapper._();

  static SeriesFilterDataMapper? _instance;
  static SeriesFilterDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SeriesFilterDataMapper._());
      FilterDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SeriesFilterData';

  static SortBy _$sortBy(SeriesFilterData v) => v.sortBy;
  static const Field<SeriesFilterData, SortBy> _f$sortBy =
      Field('sortBy', _$sortBy, opt: true, def: SortBy.popularityDesc);
  static List<Country> _$withCountries(SeriesFilterData v) => v.withCountries;
  static const Field<SeriesFilterData, List<Country>> _f$withCountries =
      Field('withCountries', _$withCountries, opt: true, def: const []);
  static bool _$includeWatched(SeriesFilterData v) => v.includeWatched;
  static const Field<SeriesFilterData, bool> _f$includeWatched =
      Field('includeWatched', _$includeWatched, opt: true, def: true);
  static bool _$includeWatchlist(SeriesFilterData v) => v.includeWatchlist;
  static const Field<SeriesFilterData, bool> _f$includeWatchlist =
      Field('includeWatchlist', _$includeWatchlist, opt: true, def: true);
  static List<SeriesGenre> _$withGenres(SeriesFilterData v) => v.withGenres;
  static const Field<SeriesFilterData, List<SeriesGenre>> _f$withGenres =
      Field('withGenres', _$withGenres, opt: true, def: const []);
  static List<SeriesGenre> _$withoutGenres(SeriesFilterData v) =>
      v.withoutGenres;
  static const Field<SeriesFilterData, List<SeriesGenre>> _f$withoutGenres =
      Field('withoutGenres', _$withoutGenres, opt: true, def: const []);
  static DateTime? _$fromDate(SeriesFilterData v) => v.fromDate;
  static const Field<SeriesFilterData, DateTime> _f$fromDate =
      Field('fromDate', _$fromDate, opt: true);
  static DateTime? _$toDate(SeriesFilterData v) => v.toDate;
  static const Field<SeriesFilterData, DateTime> _f$toDate =
      Field('toDate', _$toDate, opt: true);

  @override
  final MappableFields<SeriesFilterData> fields = const {
    #sortBy: _f$sortBy,
    #withCountries: _f$withCountries,
    #includeWatched: _f$includeWatched,
    #includeWatchlist: _f$includeWatchlist,
    #withGenres: _f$withGenres,
    #withoutGenres: _f$withoutGenres,
    #fromDate: _f$fromDate,
    #toDate: _f$toDate,
  };

  static SeriesFilterData _instantiate(DecodingData data) {
    return SeriesFilterData(
        sortBy: data.dec(_f$sortBy),
        withCountries: data.dec(_f$withCountries),
        includeWatched: data.dec(_f$includeWatched),
        includeWatchlist: data.dec(_f$includeWatchlist),
        withGenres: data.dec(_f$withGenres),
        withoutGenres: data.dec(_f$withoutGenres),
        fromDate: data.dec(_f$fromDate),
        toDate: data.dec(_f$toDate));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin SeriesFilterDataMappable {
  SeriesFilterDataCopyWith<SeriesFilterData, SeriesFilterData, SeriesFilterData>
      get copyWith =>
          _SeriesFilterDataCopyWithImpl<SeriesFilterData, SeriesFilterData>(
              this as SeriesFilterData, $identity, $identity);
  @override
  String toString() {
    return SeriesFilterDataMapper.ensureInitialized()
        .stringifyValue(this as SeriesFilterData);
  }

  @override
  bool operator ==(Object other) {
    return SeriesFilterDataMapper.ensureInitialized()
        .equalsValue(this as SeriesFilterData, other);
  }

  @override
  int get hashCode {
    return SeriesFilterDataMapper.ensureInitialized()
        .hashValue(this as SeriesFilterData);
  }
}

extension SeriesFilterDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SeriesFilterData, $Out> {
  SeriesFilterDataCopyWith<$R, SeriesFilterData, $Out>
      get $asSeriesFilterData => $base
          .as((v, t, t2) => _SeriesFilterDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SeriesFilterDataCopyWith<$R, $In extends SeriesFilterData, $Out>
    implements FilterDataCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, Country, ObjectCopyWith<$R, Country, Country>>
      get withCountries;
  ListCopyWith<$R, SeriesGenre, ObjectCopyWith<$R, SeriesGenre, SeriesGenre>>
      get withGenres;
  ListCopyWith<$R, SeriesGenre, ObjectCopyWith<$R, SeriesGenre, SeriesGenre>>
      get withoutGenres;
  @override
  $R call(
      {SortBy? sortBy,
      List<Country>? withCountries,
      bool? includeWatched,
      bool? includeWatchlist,
      List<SeriesGenre>? withGenres,
      List<SeriesGenre>? withoutGenres,
      DateTime? fromDate,
      DateTime? toDate});
  SeriesFilterDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SeriesFilterDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SeriesFilterData, $Out>
    implements SeriesFilterDataCopyWith<$R, SeriesFilterData, $Out> {
  _SeriesFilterDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SeriesFilterData> $mapper =
      SeriesFilterDataMapper.ensureInitialized();
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
          {SortBy? sortBy,
          List<Country>? withCountries,
          bool? includeWatched,
          bool? includeWatchlist,
          List<SeriesGenre>? withGenres,
          List<SeriesGenre>? withoutGenres,
          Object? fromDate = $none,
          Object? toDate = $none}) =>
      $apply(FieldCopyWithData({
        if (sortBy != null) #sortBy: sortBy,
        if (withCountries != null) #withCountries: withCountries,
        if (includeWatched != null) #includeWatched: includeWatched,
        if (includeWatchlist != null) #includeWatchlist: includeWatchlist,
        if (withGenres != null) #withGenres: withGenres,
        if (withoutGenres != null) #withoutGenres: withoutGenres,
        if (fromDate != $none) #fromDate: fromDate,
        if (toDate != $none) #toDate: toDate
      }));
  @override
  SeriesFilterData $make(CopyWithData data) => SeriesFilterData(
      sortBy: data.get(#sortBy, or: $value.sortBy),
      withCountries: data.get(#withCountries, or: $value.withCountries),
      includeWatched: data.get(#includeWatched, or: $value.includeWatched),
      includeWatchlist:
          data.get(#includeWatchlist, or: $value.includeWatchlist),
      withGenres: data.get(#withGenres, or: $value.withGenres),
      withoutGenres: data.get(#withoutGenres, or: $value.withoutGenres),
      fromDate: data.get(#fromDate, or: $value.fromDate),
      toDate: data.get(#toDate, or: $value.toDate));

  @override
  SeriesFilterDataCopyWith<$R2, SeriesFilterData, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SeriesFilterDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
