// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'search_filter_data.dart';

class SearchFilterDataMapper extends ClassMapperBase<SearchFilterData> {
  SearchFilterDataMapper._();

  static SearchFilterDataMapper? _instance;
  static SearchFilterDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SearchFilterDataMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SearchFilterData';

  static String? _$query(SearchFilterData v) => v.query;
  static const Field<SearchFilterData, String> _f$query = Field(
    'query',
    _$query,
    opt: true,
  );

  @override
  final MappableFields<SearchFilterData> fields = const {#query: _f$query};

  static SearchFilterData _instantiate(DecodingData data) {
    return SearchFilterData(query: data.dec(_f$query));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin SearchFilterDataMappable {
  SearchFilterDataCopyWith<SearchFilterData, SearchFilterData, SearchFilterData>
  get copyWith =>
      _SearchFilterDataCopyWithImpl<SearchFilterData, SearchFilterData>(
        this as SearchFilterData,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return SearchFilterDataMapper.ensureInitialized().stringifyValue(
      this as SearchFilterData,
    );
  }

  @override
  bool operator ==(Object other) {
    return SearchFilterDataMapper.ensureInitialized().equalsValue(
      this as SearchFilterData,
      other,
    );
  }

  @override
  int get hashCode {
    return SearchFilterDataMapper.ensureInitialized().hashValue(
      this as SearchFilterData,
    );
  }
}

extension SearchFilterDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SearchFilterData, $Out> {
  SearchFilterDataCopyWith<$R, SearchFilterData, $Out>
  get $asSearchFilterData =>
      $base.as((v, t, t2) => _SearchFilterDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SearchFilterDataCopyWith<$R, $In extends SearchFilterData, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? query});
  SearchFilterDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _SearchFilterDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SearchFilterData, $Out>
    implements SearchFilterDataCopyWith<$R, SearchFilterData, $Out> {
  _SearchFilterDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SearchFilterData> $mapper =
      SearchFilterDataMapper.ensureInitialized();
  @override
  $R call({Object? query = $none}) =>
      $apply(FieldCopyWithData({if (query != $none) #query: query}));
  @override
  SearchFilterData $make(CopyWithData data) =>
      SearchFilterData(query: data.get(#query, or: $value.query));

  @override
  SearchFilterDataCopyWith<$R2, SearchFilterData, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _SearchFilterDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
