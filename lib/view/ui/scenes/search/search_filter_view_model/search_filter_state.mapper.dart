// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'search_filter_state.dart';

class SearchFilterStateMapper extends ClassMapperBase<SearchFilterState> {
  SearchFilterStateMapper._();

  static SearchFilterStateMapper? _instance;
  static SearchFilterStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SearchFilterStateMapper._());
      SearchFilterDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SearchFilterState';

  static SearchFilterData _$filter(SearchFilterState v) => v.filter;
  static const Field<SearchFilterState, SearchFilterData> _f$filter =
      Field('filter', _$filter, opt: true, def: const SearchFilterData());
  static SearchFilterStatus _$status(SearchFilterState v) => v.status;
  static const Field<SearchFilterState, SearchFilterStatus> _f$status =
      Field('status', _$status, opt: true, def: const SearchFilterBaseStatus());

  @override
  final MappableFields<SearchFilterState> fields = const {
    #filter: _f$filter,
    #status: _f$status,
  };

  static SearchFilterState _instantiate(DecodingData data) {
    return SearchFilterState(
        filter: data.dec(_f$filter), status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin SearchFilterStateMappable {
  SearchFilterStateCopyWith<SearchFilterState, SearchFilterState,
          SearchFilterState>
      get copyWith =>
          _SearchFilterStateCopyWithImpl<SearchFilterState, SearchFilterState>(
              this as SearchFilterState, $identity, $identity);
  @override
  String toString() {
    return SearchFilterStateMapper.ensureInitialized()
        .stringifyValue(this as SearchFilterState);
  }

  @override
  bool operator ==(Object other) {
    return SearchFilterStateMapper.ensureInitialized()
        .equalsValue(this as SearchFilterState, other);
  }

  @override
  int get hashCode {
    return SearchFilterStateMapper.ensureInitialized()
        .hashValue(this as SearchFilterState);
  }
}

extension SearchFilterStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SearchFilterState, $Out> {
  SearchFilterStateCopyWith<$R, SearchFilterState, $Out>
      get $asSearchFilterState => $base
          .as((v, t, t2) => _SearchFilterStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SearchFilterStateCopyWith<$R, $In extends SearchFilterState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  SearchFilterDataCopyWith<$R, SearchFilterData, SearchFilterData> get filter;
  $R call({SearchFilterData? filter, SearchFilterStatus? status});
  SearchFilterStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SearchFilterStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SearchFilterState, $Out>
    implements SearchFilterStateCopyWith<$R, SearchFilterState, $Out> {
  _SearchFilterStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SearchFilterState> $mapper =
      SearchFilterStateMapper.ensureInitialized();
  @override
  SearchFilterDataCopyWith<$R, SearchFilterData, SearchFilterData> get filter =>
      $value.filter.copyWith.$chain((v) => call(filter: v));
  @override
  $R call({SearchFilterData? filter, SearchFilterStatus? status}) =>
      $apply(FieldCopyWithData({
        if (filter != null) #filter: filter,
        if (status != null) #status: status
      }));
  @override
  SearchFilterState $make(CopyWithData data) => SearchFilterState(
      filter: data.get(#filter, or: $value.filter),
      status: data.get(#status, or: $value.status));

  @override
  SearchFilterStateCopyWith<$R2, SearchFilterState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SearchFilterStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SearchFilterBaseStatusMapper
    extends ClassMapperBase<SearchFilterBaseStatus> {
  SearchFilterBaseStatusMapper._();

  static SearchFilterBaseStatusMapper? _instance;
  static SearchFilterBaseStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SearchFilterBaseStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SearchFilterBaseStatus';

  static bool _$isLoading(SearchFilterBaseStatus v) => v.isLoading;
  static const Field<SearchFilterBaseStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(SearchFilterBaseStatus v) => v.errorMessage;
  static const Field<SearchFilterBaseStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(SearchFilterBaseStatus v) => v.isInitialized;
  static const Field<SearchFilterBaseStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: true);

  @override
  final MappableFields<SearchFilterBaseStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static SearchFilterBaseStatus _instantiate(DecodingData data) {
    return SearchFilterBaseStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin SearchFilterBaseStatusMappable {
  SearchFilterBaseStatusCopyWith<SearchFilterBaseStatus, SearchFilterBaseStatus,
          SearchFilterBaseStatus>
      get copyWith => _SearchFilterBaseStatusCopyWithImpl<
              SearchFilterBaseStatus, SearchFilterBaseStatus>(
          this as SearchFilterBaseStatus, $identity, $identity);
  @override
  String toString() {
    return SearchFilterBaseStatusMapper.ensureInitialized()
        .stringifyValue(this as SearchFilterBaseStatus);
  }

  @override
  bool operator ==(Object other) {
    return SearchFilterBaseStatusMapper.ensureInitialized()
        .equalsValue(this as SearchFilterBaseStatus, other);
  }

  @override
  int get hashCode {
    return SearchFilterBaseStatusMapper.ensureInitialized()
        .hashValue(this as SearchFilterBaseStatus);
  }
}

extension SearchFilterBaseStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SearchFilterBaseStatus, $Out> {
  SearchFilterBaseStatusCopyWith<$R, SearchFilterBaseStatus, $Out>
      get $asSearchFilterBaseStatus => $base.as((v, t, t2) =>
          _SearchFilterBaseStatusCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SearchFilterBaseStatusCopyWith<
    $R,
    $In extends SearchFilterBaseStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  SearchFilterBaseStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SearchFilterBaseStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SearchFilterBaseStatus, $Out>
    implements
        SearchFilterBaseStatusCopyWith<$R, SearchFilterBaseStatus, $Out> {
  _SearchFilterBaseStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SearchFilterBaseStatus> $mapper =
      SearchFilterBaseStatusMapper.ensureInitialized();
  @override
  $R call(
          {bool? isLoading,
          Object? errorMessage = $none,
          bool? isInitialized}) =>
      $apply(FieldCopyWithData({
        if (isLoading != null) #isLoading: isLoading,
        if (errorMessage != $none) #errorMessage: errorMessage,
        if (isInitialized != null) #isInitialized: isInitialized
      }));
  @override
  SearchFilterBaseStatus $make(CopyWithData data) => SearchFilterBaseStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  SearchFilterBaseStatusCopyWith<$R2, SearchFilterBaseStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _SearchFilterBaseStatusCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
