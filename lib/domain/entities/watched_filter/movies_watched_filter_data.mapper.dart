// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'movies_watched_filter_data.dart';

class MoviesWatchedFilterDataMapper
    extends ClassMapperBase<MoviesWatchedFilterData> {
  MoviesWatchedFilterDataMapper._();

  static MoviesWatchedFilterDataMapper? _instance;
  static MoviesWatchedFilterDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = MoviesWatchedFilterDataMapper._());
      WatchedFilterDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MoviesWatchedFilterData';

  static WatchedSortBy _$sortBy(MoviesWatchedFilterData v) => v.sortBy;
  static const Field<MoviesWatchedFilterData, WatchedSortBy> _f$sortBy =
      Field('sortBy', _$sortBy, opt: true, def: WatchedSortBy.watchedDateAsc);
  static List<Country> _$withCountries(MoviesWatchedFilterData v) =>
      v.withCountries;
  static const Field<MoviesWatchedFilterData, List<Country>> _f$withCountries =
      Field('withCountries', _$withCountries, opt: true, def: const []);
  static bool _$includeWatchlist(MoviesWatchedFilterData v) =>
      v.includeWatchlist;
  static const Field<MoviesWatchedFilterData, bool> _f$includeWatchlist =
      Field('includeWatchlist', _$includeWatchlist, opt: true, def: true);
  static List<MovieGenre> _$withGenres(MoviesWatchedFilterData v) =>
      v.withGenres;
  static const Field<MoviesWatchedFilterData, List<MovieGenre>> _f$withGenres =
      Field('withGenres', _$withGenres, opt: true, def: const []);
  static List<MovieGenre> _$withoutGenres(MoviesWatchedFilterData v) =>
      v.withoutGenres;
  static const Field<MoviesWatchedFilterData, List<MovieGenre>>
      _f$withoutGenres =
      Field('withoutGenres', _$withoutGenres, opt: true, def: const []);
  static DateTime? _$fromPremiereDate(MoviesWatchedFilterData v) =>
      v.fromPremiereDate;
  static const Field<MoviesWatchedFilterData, DateTime> _f$fromPremiereDate =
      Field('fromPremiereDate', _$fromPremiereDate, opt: true);
  static DateTime? _$toPremiereDate(MoviesWatchedFilterData v) =>
      v.toPremiereDate;
  static const Field<MoviesWatchedFilterData, DateTime> _f$toPremiereDate =
      Field('toPremiereDate', _$toPremiereDate, opt: true);
  static DateTime? _$fromWatchedDate(MoviesWatchedFilterData v) =>
      v.fromWatchedDate;
  static const Field<MoviesWatchedFilterData, DateTime> _f$fromWatchedDate =
      Field('fromWatchedDate', _$fromWatchedDate, opt: true);
  static DateTime? _$toWatchedDate(MoviesWatchedFilterData v) =>
      v.toWatchedDate;
  static const Field<MoviesWatchedFilterData, DateTime> _f$toWatchedDate =
      Field('toWatchedDate', _$toWatchedDate, opt: true);

  @override
  final MappableFields<MoviesWatchedFilterData> fields = const {
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

  static MoviesWatchedFilterData _instantiate(DecodingData data) {
    return MoviesWatchedFilterData(
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

mixin MoviesWatchedFilterDataMappable {
  MoviesWatchedFilterDataCopyWith<MoviesWatchedFilterData,
          MoviesWatchedFilterData, MoviesWatchedFilterData>
      get copyWith => _MoviesWatchedFilterDataCopyWithImpl<
              MoviesWatchedFilterData, MoviesWatchedFilterData>(
          this as MoviesWatchedFilterData, $identity, $identity);
  @override
  String toString() {
    return MoviesWatchedFilterDataMapper.ensureInitialized()
        .stringifyValue(this as MoviesWatchedFilterData);
  }

  @override
  bool operator ==(Object other) {
    return MoviesWatchedFilterDataMapper.ensureInitialized()
        .equalsValue(this as MoviesWatchedFilterData, other);
  }

  @override
  int get hashCode {
    return MoviesWatchedFilterDataMapper.ensureInitialized()
        .hashValue(this as MoviesWatchedFilterData);
  }
}

extension MoviesWatchedFilterDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MoviesWatchedFilterData, $Out> {
  MoviesWatchedFilterDataCopyWith<$R, MoviesWatchedFilterData, $Out>
      get $asMoviesWatchedFilterData => $base.as((v, t, t2) =>
          _MoviesWatchedFilterDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MoviesWatchedFilterDataCopyWith<
    $R,
    $In extends MoviesWatchedFilterData,
    $Out> implements WatchedFilterDataCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, Country, ObjectCopyWith<$R, Country, Country>>
      get withCountries;
  ListCopyWith<$R, MovieGenre, ObjectCopyWith<$R, MovieGenre, MovieGenre>>
      get withGenres;
  ListCopyWith<$R, MovieGenre, ObjectCopyWith<$R, MovieGenre, MovieGenre>>
      get withoutGenres;
  @override
  $R call(
      {WatchedSortBy? sortBy,
      List<Country>? withCountries,
      bool? includeWatchlist,
      List<MovieGenre>? withGenres,
      List<MovieGenre>? withoutGenres,
      DateTime? fromPremiereDate,
      DateTime? toPremiereDate,
      DateTime? fromWatchedDate,
      DateTime? toWatchedDate});
  MoviesWatchedFilterDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MoviesWatchedFilterDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MoviesWatchedFilterData, $Out>
    implements
        MoviesWatchedFilterDataCopyWith<$R, MoviesWatchedFilterData, $Out> {
  _MoviesWatchedFilterDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MoviesWatchedFilterData> $mapper =
      MoviesWatchedFilterDataMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Country, ObjectCopyWith<$R, Country, Country>>
      get withCountries => ListCopyWith(
          $value.withCountries,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(withCountries: v));
  @override
  ListCopyWith<$R, MovieGenre, ObjectCopyWith<$R, MovieGenre, MovieGenre>>
      get withGenres => ListCopyWith(
          $value.withGenres,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(withGenres: v));
  @override
  ListCopyWith<$R, MovieGenre, ObjectCopyWith<$R, MovieGenre, MovieGenre>>
      get withoutGenres => ListCopyWith(
          $value.withoutGenres,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(withoutGenres: v));
  @override
  $R call(
          {WatchedSortBy? sortBy,
          List<Country>? withCountries,
          bool? includeWatchlist,
          List<MovieGenre>? withGenres,
          List<MovieGenre>? withoutGenres,
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
  MoviesWatchedFilterData $make(CopyWithData data) => MoviesWatchedFilterData(
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
  MoviesWatchedFilterDataCopyWith<$R2, MoviesWatchedFilterData, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _MoviesWatchedFilterDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
