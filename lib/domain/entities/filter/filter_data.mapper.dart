// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'filter_data.dart';

class FilterDataMapper extends ClassMapperBase<FilterData> {
  FilterDataMapper._();

  static FilterDataMapper? _instance;
  static FilterDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FilterDataMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'FilterData';

  static int? _$year(FilterData v) => v.year;
  static const Field<FilterData, int> _f$year = Field('year', _$year);
  static SortBy _$sortBy(FilterData v) => v.sortBy;
  static const Field<FilterData, SortBy> _f$sortBy = Field('sortBy', _$sortBy);
  static List<Country> _$withCountries(FilterData v) => v.withCountries;
  static const Field<FilterData, List<Country>> _f$withCountries =
      Field('withCountries', _$withCountries);

  @override
  final MappableFields<FilterData> fields = const {
    #year: _f$year,
    #sortBy: _f$sortBy,
    #withCountries: _f$withCountries,
  };

  static FilterData _instantiate(DecodingData data) {
    return FilterData(
        year: data.dec(_f$year),
        sortBy: data.dec(_f$sortBy),
        withCountries: data.dec(_f$withCountries));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin FilterDataMappable {
  FilterDataCopyWith<FilterData, FilterData, FilterData> get copyWith =>
      _FilterDataCopyWithImpl<FilterData, FilterData>(
          this as FilterData, $identity, $identity);
  @override
  String toString() {
    return FilterDataMapper.ensureInitialized()
        .stringifyValue(this as FilterData);
  }

  @override
  bool operator ==(Object other) {
    return FilterDataMapper.ensureInitialized()
        .equalsValue(this as FilterData, other);
  }

  @override
  int get hashCode {
    return FilterDataMapper.ensureInitialized().hashValue(this as FilterData);
  }
}

extension FilterDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FilterData, $Out> {
  FilterDataCopyWith<$R, FilterData, $Out> get $asFilterData =>
      $base.as((v, t, t2) => _FilterDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class FilterDataCopyWith<$R, $In extends FilterData, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Country, ObjectCopyWith<$R, Country, Country>>
      get withCountries;
  $R call({int? year, SortBy? sortBy, List<Country>? withCountries});
  FilterDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _FilterDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FilterData, $Out>
    implements FilterDataCopyWith<$R, FilterData, $Out> {
  _FilterDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FilterData> $mapper =
      FilterDataMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Country, ObjectCopyWith<$R, Country, Country>>
      get withCountries => ListCopyWith(
          $value.withCountries,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(withCountries: v));
  @override
  $R call(
          {Object? year = $none,
          SortBy? sortBy,
          List<Country>? withCountries}) =>
      $apply(FieldCopyWithData({
        if (year != $none) #year: year,
        if (sortBy != null) #sortBy: sortBy,
        if (withCountries != null) #withCountries: withCountries
      }));
  @override
  FilterData $make(CopyWithData data) => FilterData(
      year: data.get(#year, or: $value.year),
      sortBy: data.get(#sortBy, or: $value.sortBy),
      withCountries: data.get(#withCountries, or: $value.withCountries));

  @override
  FilterDataCopyWith<$R2, FilterData, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _FilterDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
