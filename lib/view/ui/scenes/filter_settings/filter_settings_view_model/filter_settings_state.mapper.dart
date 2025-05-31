// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'filter_settings_state.dart';

class FilterSettingsStateMapper extends ClassMapperBase<FilterSettingsState> {
  FilterSettingsStateMapper._();

  static FilterSettingsStateMapper? _instance;
  static FilterSettingsStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FilterSettingsStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'FilterSettingsState';
  @override
  Function get typeFactory => <F>(f) => f<FilterSettingsState<F>>();

  static dynamic _$initFilter(FilterSettingsState v) => v.initFilter;
  static dynamic _arg$initFilter<F>(f) => f<F>();
  static const Field<FilterSettingsState, dynamic> _f$initFilter =
      Field('initFilter', _$initFilter, arg: _arg$initFilter);
  static dynamic _$filter(FilterSettingsState v) => v.filter;
  static dynamic _arg$filter<F>(f) => f<F>();
  static const Field<FilterSettingsState, dynamic> _f$filter =
      Field('filter', _$filter, opt: true, arg: _arg$filter);
  static FilterSettingsStatus _$status(FilterSettingsState v) => v.status;
  static const Field<FilterSettingsState, FilterSettingsStatus> _f$status =
      Field('status', _$status,
          opt: true, def: const FilterSettingsBaseStatus());

  @override
  final MappableFields<FilterSettingsState> fields = const {
    #initFilter: _f$initFilter,
    #filter: _f$filter,
    #status: _f$status,
  };

  static FilterSettingsState<F> _instantiate<F>(DecodingData data) {
    return FilterSettingsState(
        initFilter: data.dec(_f$initFilter),
        filter: data.dec(_f$filter),
        status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin FilterSettingsStateMappable<F> {
  FilterSettingsStateCopyWith<FilterSettingsState<F>, FilterSettingsState<F>,
          FilterSettingsState<F>, F>
      get copyWith => _FilterSettingsStateCopyWithImpl<
          FilterSettingsState<F>,
          FilterSettingsState<F>,
          F>(this as FilterSettingsState<F>, $identity, $identity);
  @override
  String toString() {
    return FilterSettingsStateMapper.ensureInitialized()
        .stringifyValue(this as FilterSettingsState<F>);
  }

  @override
  bool operator ==(Object other) {
    return FilterSettingsStateMapper.ensureInitialized()
        .equalsValue(this as FilterSettingsState<F>, other);
  }

  @override
  int get hashCode {
    return FilterSettingsStateMapper.ensureInitialized()
        .hashValue(this as FilterSettingsState<F>);
  }
}

extension FilterSettingsStateValueCopy<$R, $Out, F>
    on ObjectCopyWith<$R, FilterSettingsState<F>, $Out> {
  FilterSettingsStateCopyWith<$R, FilterSettingsState<F>, $Out, F>
      get $asFilterSettingsState => $base.as((v, t, t2) =>
          _FilterSettingsStateCopyWithImpl<$R, $Out, F>(v, t, t2));
}

abstract class FilterSettingsStateCopyWith<
    $R,
    $In extends FilterSettingsState<F>,
    $Out,
    F> implements ClassCopyWith<$R, $In, $Out> {
  $R call({F? initFilter, F? filter, FilterSettingsStatus? status});
  FilterSettingsStateCopyWith<$R2, $In, $Out2, F> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _FilterSettingsStateCopyWithImpl<$R, $Out, F>
    extends ClassCopyWithBase<$R, FilterSettingsState<F>, $Out>
    implements
        FilterSettingsStateCopyWith<$R, FilterSettingsState<F>, $Out, F> {
  _FilterSettingsStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FilterSettingsState> $mapper =
      FilterSettingsStateMapper.ensureInitialized();
  @override
  $R call(
          {Object? initFilter = $none,
          Object? filter = $none,
          FilterSettingsStatus? status}) =>
      $apply(FieldCopyWithData({
        if (initFilter != $none) #initFilter: initFilter,
        if (filter != $none) #filter: filter,
        if (status != null) #status: status
      }));
  @override
  FilterSettingsState<F> $make(CopyWithData data) => FilterSettingsState(
      initFilter: data.get(#initFilter, or: $value.initFilter),
      filter: data.get(#filter, or: $value.filter),
      status: data.get(#status, or: $value.status));

  @override
  FilterSettingsStateCopyWith<$R2, FilterSettingsState<F>, $Out2, F>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _FilterSettingsStateCopyWithImpl<$R2, $Out2, F>($value, $cast, t);
}

class FilterSettingsBaseStatusMapper
    extends ClassMapperBase<FilterSettingsBaseStatus> {
  FilterSettingsBaseStatusMapper._();

  static FilterSettingsBaseStatusMapper? _instance;
  static FilterSettingsBaseStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = FilterSettingsBaseStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'FilterSettingsBaseStatus';

  static bool _$isLoading(FilterSettingsBaseStatus v) => v.isLoading;
  static const Field<FilterSettingsBaseStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(FilterSettingsBaseStatus v) => v.errorMessage;
  static const Field<FilterSettingsBaseStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(FilterSettingsBaseStatus v) => v.isInitialized;
  static const Field<FilterSettingsBaseStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: true);

  @override
  final MappableFields<FilterSettingsBaseStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static FilterSettingsBaseStatus _instantiate(DecodingData data) {
    return FilterSettingsBaseStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin FilterSettingsBaseStatusMappable {
  FilterSettingsBaseStatusCopyWith<FilterSettingsBaseStatus,
          FilterSettingsBaseStatus, FilterSettingsBaseStatus>
      get copyWith => _FilterSettingsBaseStatusCopyWithImpl<
              FilterSettingsBaseStatus, FilterSettingsBaseStatus>(
          this as FilterSettingsBaseStatus, $identity, $identity);
  @override
  String toString() {
    return FilterSettingsBaseStatusMapper.ensureInitialized()
        .stringifyValue(this as FilterSettingsBaseStatus);
  }

  @override
  bool operator ==(Object other) {
    return FilterSettingsBaseStatusMapper.ensureInitialized()
        .equalsValue(this as FilterSettingsBaseStatus, other);
  }

  @override
  int get hashCode {
    return FilterSettingsBaseStatusMapper.ensureInitialized()
        .hashValue(this as FilterSettingsBaseStatus);
  }
}

extension FilterSettingsBaseStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FilterSettingsBaseStatus, $Out> {
  FilterSettingsBaseStatusCopyWith<$R, FilterSettingsBaseStatus, $Out>
      get $asFilterSettingsBaseStatus => $base.as((v, t, t2) =>
          _FilterSettingsBaseStatusCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class FilterSettingsBaseStatusCopyWith<
    $R,
    $In extends FilterSettingsBaseStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  FilterSettingsBaseStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _FilterSettingsBaseStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FilterSettingsBaseStatus, $Out>
    implements
        FilterSettingsBaseStatusCopyWith<$R, FilterSettingsBaseStatus, $Out> {
  _FilterSettingsBaseStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FilterSettingsBaseStatus> $mapper =
      FilterSettingsBaseStatusMapper.ensureInitialized();
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
  FilterSettingsBaseStatus $make(CopyWithData data) => FilterSettingsBaseStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  FilterSettingsBaseStatusCopyWith<$R2, FilterSettingsBaseStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _FilterSettingsBaseStatusCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ApplyFilterSettingsStatusMapper
    extends ClassMapperBase<ApplyFilterSettingsStatus> {
  ApplyFilterSettingsStatusMapper._();

  static ApplyFilterSettingsStatusMapper? _instance;
  static ApplyFilterSettingsStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ApplyFilterSettingsStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ApplyFilterSettingsStatus';

  static bool _$isInitialized(ApplyFilterSettingsStatus v) => v.isInitialized;
  static const Field<ApplyFilterSettingsStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: false);

  @override
  final MappableFields<ApplyFilterSettingsStatus> fields = const {
    #isInitialized: _f$isInitialized,
  };

  static ApplyFilterSettingsStatus _instantiate(DecodingData data) {
    return ApplyFilterSettingsStatus(isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin ApplyFilterSettingsStatusMappable {
  ApplyFilterSettingsStatusCopyWith<ApplyFilterSettingsStatus,
          ApplyFilterSettingsStatus, ApplyFilterSettingsStatus>
      get copyWith => _ApplyFilterSettingsStatusCopyWithImpl<
              ApplyFilterSettingsStatus, ApplyFilterSettingsStatus>(
          this as ApplyFilterSettingsStatus, $identity, $identity);
  @override
  String toString() {
    return ApplyFilterSettingsStatusMapper.ensureInitialized()
        .stringifyValue(this as ApplyFilterSettingsStatus);
  }

  @override
  bool operator ==(Object other) {
    return ApplyFilterSettingsStatusMapper.ensureInitialized()
        .equalsValue(this as ApplyFilterSettingsStatus, other);
  }

  @override
  int get hashCode {
    return ApplyFilterSettingsStatusMapper.ensureInitialized()
        .hashValue(this as ApplyFilterSettingsStatus);
  }
}

extension ApplyFilterSettingsStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ApplyFilterSettingsStatus, $Out> {
  ApplyFilterSettingsStatusCopyWith<$R, ApplyFilterSettingsStatus, $Out>
      get $asApplyFilterSettingsStatus => $base.as((v, t, t2) =>
          _ApplyFilterSettingsStatusCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ApplyFilterSettingsStatusCopyWith<
    $R,
    $In extends ApplyFilterSettingsStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isInitialized});
  ApplyFilterSettingsStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ApplyFilterSettingsStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ApplyFilterSettingsStatus, $Out>
    implements
        ApplyFilterSettingsStatusCopyWith<$R, ApplyFilterSettingsStatus, $Out> {
  _ApplyFilterSettingsStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ApplyFilterSettingsStatus> $mapper =
      ApplyFilterSettingsStatusMapper.ensureInitialized();
  @override
  $R call({bool? isInitialized}) => $apply(FieldCopyWithData(
      {if (isInitialized != null) #isInitialized: isInitialized}));
  @override
  ApplyFilterSettingsStatus $make(CopyWithData data) =>
      ApplyFilterSettingsStatus(
          isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  ApplyFilterSettingsStatusCopyWith<$R2, ApplyFilterSettingsStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ApplyFilterSettingsStatusCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
