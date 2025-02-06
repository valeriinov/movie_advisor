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
    }
    return _instance!;
  }

  @override
  final String id = 'SearchState';

  static SearchStatus _$status(SearchState v) => v.status;
  static const Field<SearchState, SearchStatus> _f$status =
      Field('status', _$status, opt: true, def: const SearchBaseStatus());

  @override
  final MappableFields<SearchState> fields = const {
    #status: _f$status,
  };

  static SearchState _instantiate(DecodingData data) {
    return SearchState(status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin SearchStateMappable {
  SearchStateCopyWith<SearchState, SearchState, SearchState> get copyWith =>
      _SearchStateCopyWithImpl(this as SearchState, $identity, $identity);
  @override
  String toString() {
    return SearchStateMapper.ensureInitialized()
        .stringifyValue(this as SearchState);
  }

  @override
  bool operator ==(Object other) {
    return SearchStateMapper.ensureInitialized()
        .equalsValue(this as SearchState, other);
  }

  @override
  int get hashCode {
    return SearchStateMapper.ensureInitialized().hashValue(this as SearchState);
  }
}

extension SearchStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SearchState, $Out> {
  SearchStateCopyWith<$R, SearchState, $Out> get $asSearchState =>
      $base.as((v, t, t2) => _SearchStateCopyWithImpl(v, t, t2));
}

abstract class SearchStateCopyWith<$R, $In extends SearchState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({SearchStatus? status});
  SearchStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SearchStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SearchState, $Out>
    implements SearchStateCopyWith<$R, SearchState, $Out> {
  _SearchStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SearchState> $mapper =
      SearchStateMapper.ensureInitialized();
  @override
  $R call({SearchStatus? status}) =>
      $apply(FieldCopyWithData({if (status != null) #status: status}));
  @override
  SearchState $make(CopyWithData data) =>
      SearchState(status: data.get(#status, or: $value.status));

  @override
  SearchStateCopyWith<$R2, SearchState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SearchStateCopyWithImpl($value, $cast, t);
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
      get copyWith => _SearchBaseStatusCopyWithImpl(
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
      get $asSearchBaseStatus =>
          $base.as((v, t, t2) => _SearchBaseStatusCopyWithImpl(v, t, t2));
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
      _SearchBaseStatusCopyWithImpl($value, $cast, t);
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
          SearchBaseInitStatus>
      get copyWith => _SearchBaseInitStatusCopyWithImpl(
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
      get $asSearchBaseInitStatus =>
          $base.as((v, t, t2) => _SearchBaseInitStatusCopyWithImpl(v, t, t2));
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
          _SearchBaseInitStatusCopyWithImpl($value, $cast, t);
}
