// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'watchlist_filter_data.dart';

class WatchlistFilterDataMapper extends ClassMapperBase<WatchlistFilterData> {
  WatchlistFilterDataMapper._();

  static WatchlistFilterDataMapper? _instance;
  static WatchlistFilterDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WatchlistFilterDataMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'WatchlistFilterData';

  static WatchlistSortBy _$sortBy(WatchlistFilterData v) => v.sortBy;
  static const Field<WatchlistFilterData, WatchlistSortBy> _f$sortBy =
      Field('sortBy', _$sortBy);
  static List<Country> _$withCountries(WatchlistFilterData v) =>
      v.withCountries;
  static const Field<WatchlistFilterData, List<Country>> _f$withCountries =
      Field('withCountries', _$withCountries);
  static bool _$includeWatched(WatchlistFilterData v) => v.includeWatched;
  static const Field<WatchlistFilterData, bool> _f$includeWatched =
      Field('includeWatched', _$includeWatched);
  static DateTime? _$fromDate(WatchlistFilterData v) => v.fromDate;
  static const Field<WatchlistFilterData, DateTime> _f$fromDate =
      Field('fromDate', _$fromDate, opt: true);
  static DateTime? _$toDate(WatchlistFilterData v) => v.toDate;
  static const Field<WatchlistFilterData, DateTime> _f$toDate =
      Field('toDate', _$toDate, opt: true);

  @override
  final MappableFields<WatchlistFilterData> fields = const {
    #sortBy: _f$sortBy,
    #withCountries: _f$withCountries,
    #includeWatched: _f$includeWatched,
    #fromDate: _f$fromDate,
    #toDate: _f$toDate,
  };

  static WatchlistFilterData _instantiate(DecodingData data) {
    return WatchlistFilterData(
        sortBy: data.dec(_f$sortBy),
        withCountries: data.dec(_f$withCountries),
        includeWatched: data.dec(_f$includeWatched),
        fromDate: data.dec(_f$fromDate),
        toDate: data.dec(_f$toDate));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin WatchlistFilterDataMappable {
  WatchlistFilterDataCopyWith<WatchlistFilterData, WatchlistFilterData,
      WatchlistFilterData> get copyWith => _WatchlistFilterDataCopyWithImpl<
          WatchlistFilterData, WatchlistFilterData>(
      this as WatchlistFilterData, $identity, $identity);
  @override
  String toString() {
    return WatchlistFilterDataMapper.ensureInitialized()
        .stringifyValue(this as WatchlistFilterData);
  }

  @override
  bool operator ==(Object other) {
    return WatchlistFilterDataMapper.ensureInitialized()
        .equalsValue(this as WatchlistFilterData, other);
  }

  @override
  int get hashCode {
    return WatchlistFilterDataMapper.ensureInitialized()
        .hashValue(this as WatchlistFilterData);
  }
}

extension WatchlistFilterDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, WatchlistFilterData, $Out> {
  WatchlistFilterDataCopyWith<$R, WatchlistFilterData, $Out>
      get $asWatchlistFilterData => $base.as(
          (v, t, t2) => _WatchlistFilterDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class WatchlistFilterDataCopyWith<$R, $In extends WatchlistFilterData,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Country, ObjectCopyWith<$R, Country, Country>>
      get withCountries;
  $R call(
      {WatchlistSortBy? sortBy,
      List<Country>? withCountries,
      bool? includeWatched,
      DateTime? fromDate,
      DateTime? toDate});
  WatchlistFilterDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _WatchlistFilterDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WatchlistFilterData, $Out>
    implements WatchlistFilterDataCopyWith<$R, WatchlistFilterData, $Out> {
  _WatchlistFilterDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WatchlistFilterData> $mapper =
      WatchlistFilterDataMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Country, ObjectCopyWith<$R, Country, Country>>
      get withCountries => ListCopyWith(
          $value.withCountries,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(withCountries: v));
  @override
  $R call(
          {WatchlistSortBy? sortBy,
          List<Country>? withCountries,
          bool? includeWatched,
          Object? fromDate = $none,
          Object? toDate = $none}) =>
      $apply(FieldCopyWithData({
        if (sortBy != null) #sortBy: sortBy,
        if (withCountries != null) #withCountries: withCountries,
        if (includeWatched != null) #includeWatched: includeWatched,
        if (fromDate != $none) #fromDate: fromDate,
        if (toDate != $none) #toDate: toDate
      }));
  @override
  WatchlistFilterData $make(CopyWithData data) => WatchlistFilterData(
      sortBy: data.get(#sortBy, or: $value.sortBy),
      withCountries: data.get(#withCountries, or: $value.withCountries),
      includeWatched: data.get(#includeWatched, or: $value.includeWatched),
      fromDate: data.get(#fromDate, or: $value.fromDate),
      toDate: data.get(#toDate, or: $value.toDate));

  @override
  WatchlistFilterDataCopyWith<$R2, WatchlistFilterData, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _WatchlistFilterDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
