// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'watched_filter_data.dart';

class WatchedFilterDataMapper extends ClassMapperBase<WatchedFilterData> {
  WatchedFilterDataMapper._();

  static WatchedFilterDataMapper? _instance;
  static WatchedFilterDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WatchedFilterDataMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'WatchedFilterData';

  static WatchedSortBy _$sortBy(WatchedFilterData v) => v.sortBy;
  static const Field<WatchedFilterData, WatchedSortBy> _f$sortBy =
      Field('sortBy', _$sortBy);
  static List<Country> _$withCountries(WatchedFilterData v) => v.withCountries;
  static const Field<WatchedFilterData, List<Country>> _f$withCountries =
      Field('withCountries', _$withCountries);
  static bool _$includeWatchlist(WatchedFilterData v) => v.includeWatchlist;
  static const Field<WatchedFilterData, bool> _f$includeWatchlist =
      Field('includeWatchlist', _$includeWatchlist);
  static DateTime? _$fromPremiereDate(WatchedFilterData v) =>
      v.fromPremiereDate;
  static const Field<WatchedFilterData, DateTime> _f$fromPremiereDate =
      Field('fromPremiereDate', _$fromPremiereDate, opt: true);
  static DateTime? _$toPremiereDate(WatchedFilterData v) => v.toPremiereDate;
  static const Field<WatchedFilterData, DateTime> _f$toPremiereDate =
      Field('toPremiereDate', _$toPremiereDate, opt: true);
  static DateTime? _$fromWatchedDate(WatchedFilterData v) => v.fromWatchedDate;
  static const Field<WatchedFilterData, DateTime> _f$fromWatchedDate =
      Field('fromWatchedDate', _$fromWatchedDate, opt: true);
  static DateTime? _$toWatchedDate(WatchedFilterData v) => v.toWatchedDate;
  static const Field<WatchedFilterData, DateTime> _f$toWatchedDate =
      Field('toWatchedDate', _$toWatchedDate, opt: true);

  @override
  final MappableFields<WatchedFilterData> fields = const {
    #sortBy: _f$sortBy,
    #withCountries: _f$withCountries,
    #includeWatchlist: _f$includeWatchlist,
    #fromPremiereDate: _f$fromPremiereDate,
    #toPremiereDate: _f$toPremiereDate,
    #fromWatchedDate: _f$fromWatchedDate,
    #toWatchedDate: _f$toWatchedDate,
  };

  static WatchedFilterData _instantiate(DecodingData data) {
    return WatchedFilterData(
        sortBy: data.dec(_f$sortBy),
        withCountries: data.dec(_f$withCountries),
        includeWatchlist: data.dec(_f$includeWatchlist),
        fromPremiereDate: data.dec(_f$fromPremiereDate),
        toPremiereDate: data.dec(_f$toPremiereDate),
        fromWatchedDate: data.dec(_f$fromWatchedDate),
        toWatchedDate: data.dec(_f$toWatchedDate));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin WatchedFilterDataMappable {
  WatchedFilterDataCopyWith<WatchedFilterData, WatchedFilterData,
          WatchedFilterData>
      get copyWith =>
          _WatchedFilterDataCopyWithImpl<WatchedFilterData, WatchedFilterData>(
              this as WatchedFilterData, $identity, $identity);
  @override
  String toString() {
    return WatchedFilterDataMapper.ensureInitialized()
        .stringifyValue(this as WatchedFilterData);
  }

  @override
  bool operator ==(Object other) {
    return WatchedFilterDataMapper.ensureInitialized()
        .equalsValue(this as WatchedFilterData, other);
  }

  @override
  int get hashCode {
    return WatchedFilterDataMapper.ensureInitialized()
        .hashValue(this as WatchedFilterData);
  }
}

extension WatchedFilterDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, WatchedFilterData, $Out> {
  WatchedFilterDataCopyWith<$R, WatchedFilterData, $Out>
      get $asWatchedFilterData => $base
          .as((v, t, t2) => _WatchedFilterDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class WatchedFilterDataCopyWith<$R, $In extends WatchedFilterData,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Country, ObjectCopyWith<$R, Country, Country>>
      get withCountries;
  $R call(
      {WatchedSortBy? sortBy,
      List<Country>? withCountries,
      bool? includeWatchlist,
      DateTime? fromPremiereDate,
      DateTime? toPremiereDate,
      DateTime? fromWatchedDate,
      DateTime? toWatchedDate});
  WatchedFilterDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _WatchedFilterDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WatchedFilterData, $Out>
    implements WatchedFilterDataCopyWith<$R, WatchedFilterData, $Out> {
  _WatchedFilterDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WatchedFilterData> $mapper =
      WatchedFilterDataMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Country, ObjectCopyWith<$R, Country, Country>>
      get withCountries => ListCopyWith(
          $value.withCountries,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(withCountries: v));
  @override
  $R call(
          {WatchedSortBy? sortBy,
          List<Country>? withCountries,
          bool? includeWatchlist,
          Object? fromPremiereDate = $none,
          Object? toPremiereDate = $none,
          Object? fromWatchedDate = $none,
          Object? toWatchedDate = $none}) =>
      $apply(FieldCopyWithData({
        if (sortBy != null) #sortBy: sortBy,
        if (withCountries != null) #withCountries: withCountries,
        if (includeWatchlist != null) #includeWatchlist: includeWatchlist,
        if (fromPremiereDate != $none) #fromPremiereDate: fromPremiereDate,
        if (toPremiereDate != $none) #toPremiereDate: toPremiereDate,
        if (fromWatchedDate != $none) #fromWatchedDate: fromWatchedDate,
        if (toWatchedDate != $none) #toWatchedDate: toWatchedDate
      }));
  @override
  WatchedFilterData $make(CopyWithData data) => WatchedFilterData(
      sortBy: data.get(#sortBy, or: $value.sortBy),
      withCountries: data.get(#withCountries, or: $value.withCountries),
      includeWatchlist:
          data.get(#includeWatchlist, or: $value.includeWatchlist),
      fromPremiereDate:
          data.get(#fromPremiereDate, or: $value.fromPremiereDate),
      toPremiereDate: data.get(#toPremiereDate, or: $value.toPremiereDate),
      fromWatchedDate: data.get(#fromWatchedDate, or: $value.fromWatchedDate),
      toWatchedDate: data.get(#toWatchedDate, or: $value.toWatchedDate));

  @override
  WatchedFilterDataCopyWith<$R2, WatchedFilterData, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _WatchedFilterDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
