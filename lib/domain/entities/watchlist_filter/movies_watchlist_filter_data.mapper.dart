// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'movies_watchlist_filter_data.dart';

class MoviesWatchlistFilterDataMapper
    extends ClassMapperBase<MoviesWatchlistFilterData> {
  MoviesWatchlistFilterDataMapper._();

  static MoviesWatchlistFilterDataMapper? _instance;
  static MoviesWatchlistFilterDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = MoviesWatchlistFilterDataMapper._());
      WatchlistFilterDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MoviesWatchlistFilterData';

  static WatchlistSortBy _$sortBy(MoviesWatchlistFilterData v) => v.sortBy;
  static const Field<MoviesWatchlistFilterData, WatchlistSortBy> _f$sortBy =
      Field('sortBy', _$sortBy, opt: true, def: WatchlistSortBy.addedDateDesc);
  static List<Country> _$withCountries(MoviesWatchlistFilterData v) =>
      v.withCountries;
  static const Field<MoviesWatchlistFilterData, List<Country>>
      _f$withCountries =
      Field('withCountries', _$withCountries, opt: true, def: const []);
  static bool _$includeWatched(MoviesWatchlistFilterData v) => v.includeWatched;
  static const Field<MoviesWatchlistFilterData, bool> _f$includeWatched =
      Field('includeWatched', _$includeWatched, opt: true, def: true);
  static List<MovieGenre> _$withGenres(MoviesWatchlistFilterData v) =>
      v.withGenres;
  static const Field<MoviesWatchlistFilterData, List<MovieGenre>>
      _f$withGenres =
      Field('withGenres', _$withGenres, opt: true, def: const []);
  static List<MovieGenre> _$withoutGenres(MoviesWatchlistFilterData v) =>
      v.withoutGenres;
  static const Field<MoviesWatchlistFilterData, List<MovieGenre>>
      _f$withoutGenres =
      Field('withoutGenres', _$withoutGenres, opt: true, def: const []);
  static DateTime? _$fromDate(MoviesWatchlistFilterData v) => v.fromDate;
  static const Field<MoviesWatchlistFilterData, DateTime> _f$fromDate =
      Field('fromDate', _$fromDate, opt: true);
  static DateTime? _$toDate(MoviesWatchlistFilterData v) => v.toDate;
  static const Field<MoviesWatchlistFilterData, DateTime> _f$toDate =
      Field('toDate', _$toDate, opt: true);

  @override
  final MappableFields<MoviesWatchlistFilterData> fields = const {
    #sortBy: _f$sortBy,
    #withCountries: _f$withCountries,
    #includeWatched: _f$includeWatched,
    #withGenres: _f$withGenres,
    #withoutGenres: _f$withoutGenres,
    #fromDate: _f$fromDate,
    #toDate: _f$toDate,
  };

  static MoviesWatchlistFilterData _instantiate(DecodingData data) {
    return MoviesWatchlistFilterData(
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
}

mixin MoviesWatchlistFilterDataMappable {
  MoviesWatchlistFilterDataCopyWith<MoviesWatchlistFilterData,
          MoviesWatchlistFilterData, MoviesWatchlistFilterData>
      get copyWith => _MoviesWatchlistFilterDataCopyWithImpl<
              MoviesWatchlistFilterData, MoviesWatchlistFilterData>(
          this as MoviesWatchlistFilterData, $identity, $identity);
  @override
  String toString() {
    return MoviesWatchlistFilterDataMapper.ensureInitialized()
        .stringifyValue(this as MoviesWatchlistFilterData);
  }

  @override
  bool operator ==(Object other) {
    return MoviesWatchlistFilterDataMapper.ensureInitialized()
        .equalsValue(this as MoviesWatchlistFilterData, other);
  }

  @override
  int get hashCode {
    return MoviesWatchlistFilterDataMapper.ensureInitialized()
        .hashValue(this as MoviesWatchlistFilterData);
  }
}

extension MoviesWatchlistFilterDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MoviesWatchlistFilterData, $Out> {
  MoviesWatchlistFilterDataCopyWith<$R, MoviesWatchlistFilterData, $Out>
      get $asMoviesWatchlistFilterData => $base.as((v, t, t2) =>
          _MoviesWatchlistFilterDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MoviesWatchlistFilterDataCopyWith<
    $R,
    $In extends MoviesWatchlistFilterData,
    $Out> implements WatchlistFilterDataCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, Country, ObjectCopyWith<$R, Country, Country>>
      get withCountries;
  ListCopyWith<$R, MovieGenre, ObjectCopyWith<$R, MovieGenre, MovieGenre>>
      get withGenres;
  ListCopyWith<$R, MovieGenre, ObjectCopyWith<$R, MovieGenre, MovieGenre>>
      get withoutGenres;
  @override
  $R call(
      {WatchlistSortBy? sortBy,
      List<Country>? withCountries,
      bool? includeWatched,
      List<MovieGenre>? withGenres,
      List<MovieGenre>? withoutGenres,
      DateTime? fromDate,
      DateTime? toDate});
  MoviesWatchlistFilterDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MoviesWatchlistFilterDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MoviesWatchlistFilterData, $Out>
    implements
        MoviesWatchlistFilterDataCopyWith<$R, MoviesWatchlistFilterData, $Out> {
  _MoviesWatchlistFilterDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MoviesWatchlistFilterData> $mapper =
      MoviesWatchlistFilterDataMapper.ensureInitialized();
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
          {WatchlistSortBy? sortBy,
          List<Country>? withCountries,
          bool? includeWatched,
          List<MovieGenre>? withGenres,
          List<MovieGenre>? withoutGenres,
          Object? fromDate = $none,
          Object? toDate = $none}) =>
      $apply(FieldCopyWithData({
        if (sortBy != null) #sortBy: sortBy,
        if (withCountries != null) #withCountries: withCountries,
        if (includeWatched != null) #includeWatched: includeWatched,
        if (withGenres != null) #withGenres: withGenres,
        if (withoutGenres != null) #withoutGenres: withoutGenres,
        if (fromDate != $none) #fromDate: fromDate,
        if (toDate != $none) #toDate: toDate
      }));
  @override
  MoviesWatchlistFilterData $make(CopyWithData data) =>
      MoviesWatchlistFilterData(
          sortBy: data.get(#sortBy, or: $value.sortBy),
          withCountries: data.get(#withCountries, or: $value.withCountries),
          includeWatched: data.get(#includeWatched, or: $value.includeWatched),
          withGenres: data.get(#withGenres, or: $value.withGenres),
          withoutGenres: data.get(#withoutGenres, or: $value.withoutGenres),
          fromDate: data.get(#fromDate, or: $value.fromDate),
          toDate: data.get(#toDate, or: $value.toDate));

  @override
  MoviesWatchlistFilterDataCopyWith<$R2, MoviesWatchlistFilterData, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _MoviesWatchlistFilterDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
