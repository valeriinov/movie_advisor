// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'movies_filter_data.dart';

class MoviesFilterDataMapper extends ClassMapperBase<MoviesFilterData> {
  MoviesFilterDataMapper._();

  static MoviesFilterDataMapper? _instance;
  static MoviesFilterDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MoviesFilterDataMapper._());
      FilterDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MoviesFilterData';

  static int? _$year(MoviesFilterData v) => v.year;
  static const Field<MoviesFilterData, int> _f$year =
      Field('year', _$year, opt: true);
  static SortBy _$sortBy(MoviesFilterData v) => v.sortBy;
  static const Field<MoviesFilterData, SortBy> _f$sortBy =
      Field('sortBy', _$sortBy, opt: true, def: SortBy.popularityDesc);
  static List<Country> _$withCountries(MoviesFilterData v) => v.withCountries;
  static const Field<MoviesFilterData, List<Country>> _f$withCountries =
      Field('withCountries', _$withCountries, opt: true, def: const []);
  static List<Country> _$withoutCountries(MoviesFilterData v) =>
      v.withoutCountries;
  static const Field<MoviesFilterData, List<Country>> _f$withoutCountries =
      Field('withoutCountries', _$withoutCountries, opt: true, def: const []);
  static List<MovieGenre> _$withGenres(MoviesFilterData v) => v.withGenres;
  static const Field<MoviesFilterData, List<MovieGenre>> _f$withGenres =
      Field('withGenres', _$withGenres, opt: true, def: const []);
  static List<MovieGenre> _$withoutGenres(MoviesFilterData v) =>
      v.withoutGenres;
  static const Field<MoviesFilterData, List<MovieGenre>> _f$withoutGenres =
      Field('withoutGenres', _$withoutGenres, opt: true, def: const []);

  @override
  final MappableFields<MoviesFilterData> fields = const {
    #year: _f$year,
    #sortBy: _f$sortBy,
    #withCountries: _f$withCountries,
    #withoutCountries: _f$withoutCountries,
    #withGenres: _f$withGenres,
    #withoutGenres: _f$withoutGenres,
  };

  static MoviesFilterData _instantiate(DecodingData data) {
    return MoviesFilterData(
        year: data.dec(_f$year),
        sortBy: data.dec(_f$sortBy),
        withCountries: data.dec(_f$withCountries),
        withoutCountries: data.dec(_f$withoutCountries),
        withGenres: data.dec(_f$withGenres),
        withoutGenres: data.dec(_f$withoutGenres));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin MoviesFilterDataMappable {
  MoviesFilterDataCopyWith<MoviesFilterData, MoviesFilterData, MoviesFilterData>
      get copyWith => _MoviesFilterDataCopyWithImpl(
          this as MoviesFilterData, $identity, $identity);
  @override
  String toString() {
    return MoviesFilterDataMapper.ensureInitialized()
        .stringifyValue(this as MoviesFilterData);
  }

  @override
  bool operator ==(Object other) {
    return MoviesFilterDataMapper.ensureInitialized()
        .equalsValue(this as MoviesFilterData, other);
  }

  @override
  int get hashCode {
    return MoviesFilterDataMapper.ensureInitialized()
        .hashValue(this as MoviesFilterData);
  }
}

extension MoviesFilterDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MoviesFilterData, $Out> {
  MoviesFilterDataCopyWith<$R, MoviesFilterData, $Out>
      get $asMoviesFilterData =>
          $base.as((v, t, t2) => _MoviesFilterDataCopyWithImpl(v, t, t2));
}

abstract class MoviesFilterDataCopyWith<$R, $In extends MoviesFilterData, $Out>
    implements FilterDataCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, Country, ObjectCopyWith<$R, Country, Country>>
      get withCountries;
  @override
  ListCopyWith<$R, Country, ObjectCopyWith<$R, Country, Country>>
      get withoutCountries;
  ListCopyWith<$R, MovieGenre, ObjectCopyWith<$R, MovieGenre, MovieGenre>>
      get withGenres;
  ListCopyWith<$R, MovieGenre, ObjectCopyWith<$R, MovieGenre, MovieGenre>>
      get withoutGenres;
  @override
  $R call(
      {int? year,
      SortBy? sortBy,
      List<Country>? withCountries,
      List<Country>? withoutCountries,
      List<MovieGenre>? withGenres,
      List<MovieGenre>? withoutGenres});
  MoviesFilterDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MoviesFilterDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MoviesFilterData, $Out>
    implements MoviesFilterDataCopyWith<$R, MoviesFilterData, $Out> {
  _MoviesFilterDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MoviesFilterData> $mapper =
      MoviesFilterDataMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Country, ObjectCopyWith<$R, Country, Country>>
      get withCountries => ListCopyWith(
          $value.withCountries,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(withCountries: v));
  @override
  ListCopyWith<$R, Country, ObjectCopyWith<$R, Country, Country>>
      get withoutCountries => ListCopyWith(
          $value.withoutCountries,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(withoutCountries: v));
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
          {Object? year = $none,
          SortBy? sortBy,
          List<Country>? withCountries,
          List<Country>? withoutCountries,
          List<MovieGenre>? withGenres,
          List<MovieGenre>? withoutGenres}) =>
      $apply(FieldCopyWithData({
        if (year != $none) #year: year,
        if (sortBy != null) #sortBy: sortBy,
        if (withCountries != null) #withCountries: withCountries,
        if (withoutCountries != null) #withoutCountries: withoutCountries,
        if (withGenres != null) #withGenres: withGenres,
        if (withoutGenres != null) #withoutGenres: withoutGenres
      }));
  @override
  MoviesFilterData $make(CopyWithData data) => MoviesFilterData(
      year: data.get(#year, or: $value.year),
      sortBy: data.get(#sortBy, or: $value.sortBy),
      withCountries: data.get(#withCountries, or: $value.withCountries),
      withoutCountries:
          data.get(#withoutCountries, or: $value.withoutCountries),
      withGenres: data.get(#withGenres, or: $value.withGenres),
      withoutGenres: data.get(#withoutGenres, or: $value.withoutGenres));

  @override
  MoviesFilterDataCopyWith<$R2, MoviesFilterData, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MoviesFilterDataCopyWithImpl($value, $cast, t);
}
