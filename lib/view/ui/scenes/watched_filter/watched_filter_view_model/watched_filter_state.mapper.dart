// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'watched_filter_state.dart';

class WatchedFilterStateMapper extends ClassMapperBase<WatchedFilterState> {
  WatchedFilterStateMapper._();

  static WatchedFilterStateMapper? _instance;
  static WatchedFilterStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WatchedFilterStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'WatchedFilterState';
  @override
  Function get typeFactory => <F>(f) => f<WatchedFilterState<F>>();

  static dynamic _$initFilter(WatchedFilterState v) => v.initFilter;
  static dynamic _arg$initFilter<F>(f) => f<F>();
  static const Field<WatchedFilterState, dynamic> _f$initFilter =
      Field('initFilter', _$initFilter, arg: _arg$initFilter);
  static dynamic _$filter(WatchedFilterState v) => v.filter;
  static dynamic _arg$filter<F>(f) => f<F>();
  static const Field<WatchedFilterState, dynamic> _f$filter =
      Field('filter', _$filter, opt: true, arg: _arg$filter);
  static WatchedFilterStatus _$status(WatchedFilterState v) => v.status;
  static const Field<WatchedFilterState, WatchedFilterStatus> _f$status = Field(
      'status', _$status,
      opt: true, def: const WatchedFilterBaseStatus());

  @override
  final MappableFields<WatchedFilterState> fields = const {
    #initFilter: _f$initFilter,
    #filter: _f$filter,
    #status: _f$status,
  };

  static WatchedFilterState<F> _instantiate<F>(DecodingData data) {
    return WatchedFilterState(
        initFilter: data.dec(_f$initFilter),
        filter: data.dec(_f$filter),
        status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin WatchedFilterStateMappable<F> {
  WatchedFilterStateCopyWith<WatchedFilterState<F>, WatchedFilterState<F>,
          WatchedFilterState<F>, F>
      get copyWith => _WatchedFilterStateCopyWithImpl<
          WatchedFilterState<F>,
          WatchedFilterState<F>,
          F>(this as WatchedFilterState<F>, $identity, $identity);
  @override
  String toString() {
    return WatchedFilterStateMapper.ensureInitialized()
        .stringifyValue(this as WatchedFilterState<F>);
  }

  @override
  bool operator ==(Object other) {
    return WatchedFilterStateMapper.ensureInitialized()
        .equalsValue(this as WatchedFilterState<F>, other);
  }

  @override
  int get hashCode {
    return WatchedFilterStateMapper.ensureInitialized()
        .hashValue(this as WatchedFilterState<F>);
  }
}

extension WatchedFilterStateValueCopy<$R, $Out, F>
    on ObjectCopyWith<$R, WatchedFilterState<F>, $Out> {
  WatchedFilterStateCopyWith<$R, WatchedFilterState<F>, $Out, F>
      get $asWatchedFilterState => $base.as(
          (v, t, t2) => _WatchedFilterStateCopyWithImpl<$R, $Out, F>(v, t, t2));
}

abstract class WatchedFilterStateCopyWith<$R, $In extends WatchedFilterState<F>,
    $Out, F> implements ClassCopyWith<$R, $In, $Out> {
  $R call({F? initFilter, F? filter, WatchedFilterStatus? status});
  WatchedFilterStateCopyWith<$R2, $In, $Out2, F> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _WatchedFilterStateCopyWithImpl<$R, $Out, F>
    extends ClassCopyWithBase<$R, WatchedFilterState<F>, $Out>
    implements WatchedFilterStateCopyWith<$R, WatchedFilterState<F>, $Out, F> {
  _WatchedFilterStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WatchedFilterState> $mapper =
      WatchedFilterStateMapper.ensureInitialized();
  @override
  $R call(
          {Object? initFilter = $none,
          Object? filter = $none,
          WatchedFilterStatus? status}) =>
      $apply(FieldCopyWithData({
        if (initFilter != $none) #initFilter: initFilter,
        if (filter != $none) #filter: filter,
        if (status != null) #status: status
      }));
  @override
  WatchedFilterState<F> $make(CopyWithData data) => WatchedFilterState(
      initFilter: data.get(#initFilter, or: $value.initFilter),
      filter: data.get(#filter, or: $value.filter),
      status: data.get(#status, or: $value.status));

  @override
  WatchedFilterStateCopyWith<$R2, WatchedFilterState<F>, $Out2, F>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _WatchedFilterStateCopyWithImpl<$R2, $Out2, F>($value, $cast, t);
}

class WatchedFilterBaseStatusMapper
    extends ClassMapperBase<WatchedFilterBaseStatus> {
  WatchedFilterBaseStatusMapper._();

  static WatchedFilterBaseStatusMapper? _instance;
  static WatchedFilterBaseStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = WatchedFilterBaseStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'WatchedFilterBaseStatus';

  static bool _$isLoading(WatchedFilterBaseStatus v) => v.isLoading;
  static const Field<WatchedFilterBaseStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(WatchedFilterBaseStatus v) => v.errorMessage;
  static const Field<WatchedFilterBaseStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(WatchedFilterBaseStatus v) => v.isInitialized;
  static const Field<WatchedFilterBaseStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: false);

  @override
  final MappableFields<WatchedFilterBaseStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static WatchedFilterBaseStatus _instantiate(DecodingData data) {
    return WatchedFilterBaseStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin WatchedFilterBaseStatusMappable {
  WatchedFilterBaseStatusCopyWith<WatchedFilterBaseStatus,
          WatchedFilterBaseStatus, WatchedFilterBaseStatus>
      get copyWith => _WatchedFilterBaseStatusCopyWithImpl<
              WatchedFilterBaseStatus, WatchedFilterBaseStatus>(
          this as WatchedFilterBaseStatus, $identity, $identity);
  @override
  String toString() {
    return WatchedFilterBaseStatusMapper.ensureInitialized()
        .stringifyValue(this as WatchedFilterBaseStatus);
  }

  @override
  bool operator ==(Object other) {
    return WatchedFilterBaseStatusMapper.ensureInitialized()
        .equalsValue(this as WatchedFilterBaseStatus, other);
  }

  @override
  int get hashCode {
    return WatchedFilterBaseStatusMapper.ensureInitialized()
        .hashValue(this as WatchedFilterBaseStatus);
  }
}

extension WatchedFilterBaseStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, WatchedFilterBaseStatus, $Out> {
  WatchedFilterBaseStatusCopyWith<$R, WatchedFilterBaseStatus, $Out>
      get $asWatchedFilterBaseStatus => $base.as((v, t, t2) =>
          _WatchedFilterBaseStatusCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class WatchedFilterBaseStatusCopyWith<
    $R,
    $In extends WatchedFilterBaseStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  WatchedFilterBaseStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _WatchedFilterBaseStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WatchedFilterBaseStatus, $Out>
    implements
        WatchedFilterBaseStatusCopyWith<$R, WatchedFilterBaseStatus, $Out> {
  _WatchedFilterBaseStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WatchedFilterBaseStatus> $mapper =
      WatchedFilterBaseStatusMapper.ensureInitialized();
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
  WatchedFilterBaseStatus $make(CopyWithData data) => WatchedFilterBaseStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  WatchedFilterBaseStatusCopyWith<$R2, WatchedFilterBaseStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _WatchedFilterBaseStatusCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class WatchedFilterBaseInitStatusMapper
    extends ClassMapperBase<WatchedFilterBaseInitStatus> {
  WatchedFilterBaseInitStatusMapper._();

  static WatchedFilterBaseInitStatusMapper? _instance;
  static WatchedFilterBaseInitStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = WatchedFilterBaseInitStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'WatchedFilterBaseInitStatus';

  static bool _$isLoading(WatchedFilterBaseInitStatus v) => v.isLoading;
  static const Field<WatchedFilterBaseInitStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(WatchedFilterBaseInitStatus v) =>
      v.errorMessage;
  static const Field<WatchedFilterBaseInitStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(WatchedFilterBaseInitStatus v) => v.isInitialized;
  static const Field<WatchedFilterBaseInitStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: true);

  @override
  final MappableFields<WatchedFilterBaseInitStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static WatchedFilterBaseInitStatus _instantiate(DecodingData data) {
    return WatchedFilterBaseInitStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin WatchedFilterBaseInitStatusMappable {
  WatchedFilterBaseInitStatusCopyWith<WatchedFilterBaseInitStatus,
          WatchedFilterBaseInitStatus, WatchedFilterBaseInitStatus>
      get copyWith => _WatchedFilterBaseInitStatusCopyWithImpl<
              WatchedFilterBaseInitStatus, WatchedFilterBaseInitStatus>(
          this as WatchedFilterBaseInitStatus, $identity, $identity);
  @override
  String toString() {
    return WatchedFilterBaseInitStatusMapper.ensureInitialized()
        .stringifyValue(this as WatchedFilterBaseInitStatus);
  }

  @override
  bool operator ==(Object other) {
    return WatchedFilterBaseInitStatusMapper.ensureInitialized()
        .equalsValue(this as WatchedFilterBaseInitStatus, other);
  }

  @override
  int get hashCode {
    return WatchedFilterBaseInitStatusMapper.ensureInitialized()
        .hashValue(this as WatchedFilterBaseInitStatus);
  }
}

extension WatchedFilterBaseInitStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, WatchedFilterBaseInitStatus, $Out> {
  WatchedFilterBaseInitStatusCopyWith<$R, WatchedFilterBaseInitStatus, $Out>
      get $asWatchedFilterBaseInitStatus => $base.as((v, t, t2) =>
          _WatchedFilterBaseInitStatusCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class WatchedFilterBaseInitStatusCopyWith<
    $R,
    $In extends WatchedFilterBaseInitStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  WatchedFilterBaseInitStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _WatchedFilterBaseInitStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WatchedFilterBaseInitStatus, $Out>
    implements
        WatchedFilterBaseInitStatusCopyWith<$R, WatchedFilterBaseInitStatus,
            $Out> {
  _WatchedFilterBaseInitStatusCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WatchedFilterBaseInitStatus> $mapper =
      WatchedFilterBaseInitStatusMapper.ensureInitialized();
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
  WatchedFilterBaseInitStatus $make(CopyWithData data) =>
      WatchedFilterBaseInitStatus(
          isLoading: data.get(#isLoading, or: $value.isLoading),
          errorMessage: data.get(#errorMessage, or: $value.errorMessage),
          isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  WatchedFilterBaseInitStatusCopyWith<$R2, WatchedFilterBaseInitStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _WatchedFilterBaseInitStatusCopyWithImpl<$R2, $Out2>(
              $value, $cast, t);
}

class ApplyWatchedFilterStatusMapper
    extends ClassMapperBase<ApplyWatchedFilterStatus> {
  ApplyWatchedFilterStatusMapper._();

  static ApplyWatchedFilterStatusMapper? _instance;
  static ApplyWatchedFilterStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ApplyWatchedFilterStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ApplyWatchedFilterStatus';

  static bool _$isInitialized(ApplyWatchedFilterStatus v) => v.isInitialized;
  static const Field<ApplyWatchedFilterStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: false);

  @override
  final MappableFields<ApplyWatchedFilterStatus> fields = const {
    #isInitialized: _f$isInitialized,
  };

  static ApplyWatchedFilterStatus _instantiate(DecodingData data) {
    return ApplyWatchedFilterStatus(isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin ApplyWatchedFilterStatusMappable {
  ApplyWatchedFilterStatusCopyWith<ApplyWatchedFilterStatus,
          ApplyWatchedFilterStatus, ApplyWatchedFilterStatus>
      get copyWith => _ApplyWatchedFilterStatusCopyWithImpl<
              ApplyWatchedFilterStatus, ApplyWatchedFilterStatus>(
          this as ApplyWatchedFilterStatus, $identity, $identity);
  @override
  String toString() {
    return ApplyWatchedFilterStatusMapper.ensureInitialized()
        .stringifyValue(this as ApplyWatchedFilterStatus);
  }

  @override
  bool operator ==(Object other) {
    return ApplyWatchedFilterStatusMapper.ensureInitialized()
        .equalsValue(this as ApplyWatchedFilterStatus, other);
  }

  @override
  int get hashCode {
    return ApplyWatchedFilterStatusMapper.ensureInitialized()
        .hashValue(this as ApplyWatchedFilterStatus);
  }
}

extension ApplyWatchedFilterStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ApplyWatchedFilterStatus, $Out> {
  ApplyWatchedFilterStatusCopyWith<$R, ApplyWatchedFilterStatus, $Out>
      get $asApplyWatchedFilterStatus => $base.as((v, t, t2) =>
          _ApplyWatchedFilterStatusCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ApplyWatchedFilterStatusCopyWith<
    $R,
    $In extends ApplyWatchedFilterStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isInitialized});
  ApplyWatchedFilterStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ApplyWatchedFilterStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ApplyWatchedFilterStatus, $Out>
    implements
        ApplyWatchedFilterStatusCopyWith<$R, ApplyWatchedFilterStatus, $Out> {
  _ApplyWatchedFilterStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ApplyWatchedFilterStatus> $mapper =
      ApplyWatchedFilterStatusMapper.ensureInitialized();
  @override
  $R call({bool? isInitialized}) => $apply(FieldCopyWithData(
      {if (isInitialized != null) #isInitialized: isInitialized}));
  @override
  ApplyWatchedFilterStatus $make(CopyWithData data) => ApplyWatchedFilterStatus(
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  ApplyWatchedFilterStatusCopyWith<$R2, ApplyWatchedFilterStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ApplyWatchedFilterStatusCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
