// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'search_state.dart';

class SearchStateMapper extends ClassMapperBase<SearchState> {
  SearchStateMapper._();

  static SearchStateMapper? _instance;
  static SearchStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SearchStateMapper._());
      MediaLoadInfoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SearchState';
  @override
  Function get typeFactory => <T>(f) => f<SearchState<T>>();

  static MediaLoadInfo<dynamic> _$results(SearchState v) => v.results;
  static dynamic _arg$results<T>(f) => f<MediaLoadInfo<T>>();
  static const Field<SearchState, MediaLoadInfo<dynamic>> _f$results =
      Field('results', _$results, opt: true, arg: _arg$results);
  static SearchStatus _$status(SearchState v) => v.status;
  static const Field<SearchState, SearchStatus> _f$status =
      Field('status', _$status, opt: true, def: const SearchBaseStatus());

  @override
  final MappableFields<SearchState> fields = const {
    #results: _f$results,
    #status: _f$status,
  };

  static SearchState<T> _instantiate<T>(DecodingData data) {
    return SearchState(
        results: data.dec(_f$results), status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin SearchStateMappable<T> {
  SearchStateCopyWith<SearchState<T>, SearchState<T>, SearchState<T>, T>
      get copyWith =>
          _SearchStateCopyWithImpl<SearchState<T>, SearchState<T>, T>(
              this as SearchState<T>, $identity, $identity);
  @override
  String toString() {
    return SearchStateMapper.ensureInitialized()
        .stringifyValue(this as SearchState<T>);
  }

  @override
  bool operator ==(Object other) {
    return SearchStateMapper.ensureInitialized()
        .equalsValue(this as SearchState<T>, other);
  }

  @override
  int get hashCode {
    return SearchStateMapper.ensureInitialized()
        .hashValue(this as SearchState<T>);
  }
}

extension SearchStateValueCopy<$R, $Out, T>
    on ObjectCopyWith<$R, SearchState<T>, $Out> {
  SearchStateCopyWith<$R, SearchState<T>, $Out, T> get $asSearchState =>
      $base.as((v, t, t2) => _SearchStateCopyWithImpl<$R, $Out, T>(v, t, t2));
}

abstract class SearchStateCopyWith<$R, $In extends SearchState<T>, $Out, T>
    implements ClassCopyWith<$R, $In, $Out> {
  MediaLoadInfoCopyWith<$R, MediaLoadInfo<T>, MediaLoadInfo<T>, T> get results;
  $R call({MediaLoadInfo<T>? results, SearchStatus? status});
  SearchStateCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SearchStateCopyWithImpl<$R, $Out, T>
    extends ClassCopyWithBase<$R, SearchState<T>, $Out>
    implements SearchStateCopyWith<$R, SearchState<T>, $Out, T> {
  _SearchStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SearchState> $mapper =
      SearchStateMapper.ensureInitialized();
  @override
  MediaLoadInfoCopyWith<$R, MediaLoadInfo<T>, MediaLoadInfo<T>, T>
      get results => ($value.results as MediaLoadInfo<T>)
          .copyWith
          .$chain((v) => call(results: v));
  @override
  $R call({Object? results = $none, SearchStatus? status}) =>
      $apply(FieldCopyWithData({
        if (results != $none) #results: results,
        if (status != null) #status: status
      }));
  @override
  SearchState<T> $make(CopyWithData data) => SearchState(
      results: data.get(#results, or: $value.results),
      status: data.get(#status, or: $value.status));

  @override
  SearchStateCopyWith<$R2, SearchState<T>, $Out2, T> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SearchStateCopyWithImpl<$R2, $Out2, T>($value, $cast, t);
}

class SearchBaseStatusMapper extends ClassMapperBase<SearchBaseStatus> {
  SearchBaseStatusMapper._();

  static SearchBaseStatusMapper? _instance;
  static SearchBaseStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SearchBaseStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SearchBaseStatus';

  static bool _$isLoading(SearchBaseStatus v) => v.isLoading;
  static const Field<SearchBaseStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(SearchBaseStatus v) => v.errorMessage;
  static const Field<SearchBaseStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(SearchBaseStatus v) => v.isInitialized;
  static const Field<SearchBaseStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: false);

  @override
  final MappableFields<SearchBaseStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static SearchBaseStatus _instantiate(DecodingData data) {
    return SearchBaseStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin SearchBaseStatusMappable {
  SearchBaseStatusCopyWith<SearchBaseStatus, SearchBaseStatus, SearchBaseStatus>
      get copyWith =>
          _SearchBaseStatusCopyWithImpl<SearchBaseStatus, SearchBaseStatus>(
              this as SearchBaseStatus, $identity, $identity);
  @override
  String toString() {
    return SearchBaseStatusMapper.ensureInitialized()
        .stringifyValue(this as SearchBaseStatus);
  }

  @override
  bool operator ==(Object other) {
    return SearchBaseStatusMapper.ensureInitialized()
        .equalsValue(this as SearchBaseStatus, other);
  }

  @override
  int get hashCode {
    return SearchBaseStatusMapper.ensureInitialized()
        .hashValue(this as SearchBaseStatus);
  }
}

extension SearchBaseStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SearchBaseStatus, $Out> {
  SearchBaseStatusCopyWith<$R, SearchBaseStatus, $Out>
      get $asSearchBaseStatus => $base
          .as((v, t, t2) => _SearchBaseStatusCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SearchBaseStatusCopyWith<$R, $In extends SearchBaseStatus, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  SearchBaseStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SearchBaseStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SearchBaseStatus, $Out>
    implements SearchBaseStatusCopyWith<$R, SearchBaseStatus, $Out> {
  _SearchBaseStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SearchBaseStatus> $mapper =
      SearchBaseStatusMapper.ensureInitialized();
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
  SearchBaseStatus $make(CopyWithData data) => SearchBaseStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  SearchBaseStatusCopyWith<$R2, SearchBaseStatus, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SearchBaseStatusCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SearchBaseInitStatusMapper extends ClassMapperBase<SearchBaseInitStatus> {
  SearchBaseInitStatusMapper._();

  static SearchBaseInitStatusMapper? _instance;
  static SearchBaseInitStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SearchBaseInitStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SearchBaseInitStatus';

  static bool _$isLoading(SearchBaseInitStatus v) => v.isLoading;
  static const Field<SearchBaseInitStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(SearchBaseInitStatus v) => v.errorMessage;
  static const Field<SearchBaseInitStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(SearchBaseInitStatus v) => v.isInitialized;
  static const Field<SearchBaseInitStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: true);

  @override
  final MappableFields<SearchBaseInitStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static SearchBaseInitStatus _instantiate(DecodingData data) {
    return SearchBaseInitStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin SearchBaseInitStatusMappable {
  SearchBaseInitStatusCopyWith<SearchBaseInitStatus, SearchBaseInitStatus,
      SearchBaseInitStatus> get copyWith => _SearchBaseInitStatusCopyWithImpl<
          SearchBaseInitStatus, SearchBaseInitStatus>(
      this as SearchBaseInitStatus, $identity, $identity);
  @override
  String toString() {
    return SearchBaseInitStatusMapper.ensureInitialized()
        .stringifyValue(this as SearchBaseInitStatus);
  }

  @override
  bool operator ==(Object other) {
    return SearchBaseInitStatusMapper.ensureInitialized()
        .equalsValue(this as SearchBaseInitStatus, other);
  }

  @override
  int get hashCode {
    return SearchBaseInitStatusMapper.ensureInitialized()
        .hashValue(this as SearchBaseInitStatus);
  }
}

extension SearchBaseInitStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SearchBaseInitStatus, $Out> {
  SearchBaseInitStatusCopyWith<$R, SearchBaseInitStatus, $Out>
      get $asSearchBaseInitStatus => $base.as(
          (v, t, t2) => _SearchBaseInitStatusCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SearchBaseInitStatusCopyWith<
    $R,
    $In extends SearchBaseInitStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  SearchBaseInitStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SearchBaseInitStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SearchBaseInitStatus, $Out>
    implements SearchBaseInitStatusCopyWith<$R, SearchBaseInitStatus, $Out> {
  _SearchBaseInitStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SearchBaseInitStatus> $mapper =
      SearchBaseInitStatusMapper.ensureInitialized();
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
  SearchBaseInitStatus $make(CopyWithData data) => SearchBaseInitStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  SearchBaseInitStatusCopyWith<$R2, SearchBaseInitStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _SearchBaseInitStatusCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
