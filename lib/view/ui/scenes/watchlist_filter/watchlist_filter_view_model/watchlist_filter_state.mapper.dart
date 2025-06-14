// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'watchlist_filter_state.dart';

class WatchlistFilterStateMapper extends ClassMapperBase<WatchlistFilterState> {
  WatchlistFilterStateMapper._();

  static WatchlistFilterStateMapper? _instance;
  static WatchlistFilterStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WatchlistFilterStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'WatchlistFilterState';
  @override
  Function get typeFactory => <F>(f) => f<WatchlistFilterState<F>>();

  static dynamic _$initFilter(WatchlistFilterState v) => v.initFilter;
  static dynamic _arg$initFilter<F>(f) => f<F>();
  static const Field<WatchlistFilterState, dynamic> _f$initFilter =
      Field('initFilter', _$initFilter, arg: _arg$initFilter);
  static dynamic _$filter(WatchlistFilterState v) => v.filter;
  static dynamic _arg$filter<F>(f) => f<F>();
  static const Field<WatchlistFilterState, dynamic> _f$filter =
      Field('filter', _$filter, opt: true, arg: _arg$filter);
  static WatchlistFilterStatus _$status(WatchlistFilterState v) => v.status;
  static const Field<WatchlistFilterState, WatchlistFilterStatus> _f$status =
      Field('status', _$status,
          opt: true, def: const WatchlistFilterBaseStatus());

  @override
  final MappableFields<WatchlistFilterState> fields = const {
    #initFilter: _f$initFilter,
    #filter: _f$filter,
    #status: _f$status,
  };

  static WatchlistFilterState<F> _instantiate<F>(DecodingData data) {
    return WatchlistFilterState(
        initFilter: data.dec(_f$initFilter),
        filter: data.dec(_f$filter),
        status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin WatchlistFilterStateMappable<F> {
  WatchlistFilterStateCopyWith<WatchlistFilterState<F>, WatchlistFilterState<F>,
          WatchlistFilterState<F>, F>
      get copyWith => _WatchlistFilterStateCopyWithImpl<
          WatchlistFilterState<F>,
          WatchlistFilterState<F>,
          F>(this as WatchlistFilterState<F>, $identity, $identity);
  @override
  String toString() {
    return WatchlistFilterStateMapper.ensureInitialized()
        .stringifyValue(this as WatchlistFilterState<F>);
  }

  @override
  bool operator ==(Object other) {
    return WatchlistFilterStateMapper.ensureInitialized()
        .equalsValue(this as WatchlistFilterState<F>, other);
  }

  @override
  int get hashCode {
    return WatchlistFilterStateMapper.ensureInitialized()
        .hashValue(this as WatchlistFilterState<F>);
  }
}

extension WatchlistFilterStateValueCopy<$R, $Out, F>
    on ObjectCopyWith<$R, WatchlistFilterState<F>, $Out> {
  WatchlistFilterStateCopyWith<$R, WatchlistFilterState<F>, $Out, F>
      get $asWatchlistFilterState => $base.as((v, t, t2) =>
          _WatchlistFilterStateCopyWithImpl<$R, $Out, F>(v, t, t2));
}

abstract class WatchlistFilterStateCopyWith<
    $R,
    $In extends WatchlistFilterState<F>,
    $Out,
    F> implements ClassCopyWith<$R, $In, $Out> {
  $R call({F? initFilter, F? filter, WatchlistFilterStatus? status});
  WatchlistFilterStateCopyWith<$R2, $In, $Out2, F> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _WatchlistFilterStateCopyWithImpl<$R, $Out, F>
    extends ClassCopyWithBase<$R, WatchlistFilterState<F>, $Out>
    implements
        WatchlistFilterStateCopyWith<$R, WatchlistFilterState<F>, $Out, F> {
  _WatchlistFilterStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WatchlistFilterState> $mapper =
      WatchlistFilterStateMapper.ensureInitialized();
  @override
  $R call(
          {Object? initFilter = $none,
          Object? filter = $none,
          WatchlistFilterStatus? status}) =>
      $apply(FieldCopyWithData({
        if (initFilter != $none) #initFilter: initFilter,
        if (filter != $none) #filter: filter,
        if (status != null) #status: status
      }));
  @override
  WatchlistFilterState<F> $make(CopyWithData data) => WatchlistFilterState(
      initFilter: data.get(#initFilter, or: $value.initFilter),
      filter: data.get(#filter, or: $value.filter),
      status: data.get(#status, or: $value.status));

  @override
  WatchlistFilterStateCopyWith<$R2, WatchlistFilterState<F>, $Out2, F>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _WatchlistFilterStateCopyWithImpl<$R2, $Out2, F>($value, $cast, t);
}

class WatchlistFilterBaseStatusMapper
    extends ClassMapperBase<WatchlistFilterBaseStatus> {
  WatchlistFilterBaseStatusMapper._();

  static WatchlistFilterBaseStatusMapper? _instance;
  static WatchlistFilterBaseStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = WatchlistFilterBaseStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'WatchlistFilterBaseStatus';

  static bool _$isLoading(WatchlistFilterBaseStatus v) => v.isLoading;
  static const Field<WatchlistFilterBaseStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(WatchlistFilterBaseStatus v) => v.errorMessage;
  static const Field<WatchlistFilterBaseStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(WatchlistFilterBaseStatus v) => v.isInitialized;
  static const Field<WatchlistFilterBaseStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: false);

  @override
  final MappableFields<WatchlistFilterBaseStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static WatchlistFilterBaseStatus _instantiate(DecodingData data) {
    return WatchlistFilterBaseStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin WatchlistFilterBaseStatusMappable {
  WatchlistFilterBaseStatusCopyWith<WatchlistFilterBaseStatus,
          WatchlistFilterBaseStatus, WatchlistFilterBaseStatus>
      get copyWith => _WatchlistFilterBaseStatusCopyWithImpl<
              WatchlistFilterBaseStatus, WatchlistFilterBaseStatus>(
          this as WatchlistFilterBaseStatus, $identity, $identity);
  @override
  String toString() {
    return WatchlistFilterBaseStatusMapper.ensureInitialized()
        .stringifyValue(this as WatchlistFilterBaseStatus);
  }

  @override
  bool operator ==(Object other) {
    return WatchlistFilterBaseStatusMapper.ensureInitialized()
        .equalsValue(this as WatchlistFilterBaseStatus, other);
  }

  @override
  int get hashCode {
    return WatchlistFilterBaseStatusMapper.ensureInitialized()
        .hashValue(this as WatchlistFilterBaseStatus);
  }
}

extension WatchlistFilterBaseStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, WatchlistFilterBaseStatus, $Out> {
  WatchlistFilterBaseStatusCopyWith<$R, WatchlistFilterBaseStatus, $Out>
      get $asWatchlistFilterBaseStatus => $base.as((v, t, t2) =>
          _WatchlistFilterBaseStatusCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class WatchlistFilterBaseStatusCopyWith<
    $R,
    $In extends WatchlistFilterBaseStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  WatchlistFilterBaseStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _WatchlistFilterBaseStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WatchlistFilterBaseStatus, $Out>
    implements
        WatchlistFilterBaseStatusCopyWith<$R, WatchlistFilterBaseStatus, $Out> {
  _WatchlistFilterBaseStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WatchlistFilterBaseStatus> $mapper =
      WatchlistFilterBaseStatusMapper.ensureInitialized();
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
  WatchlistFilterBaseStatus $make(CopyWithData data) =>
      WatchlistFilterBaseStatus(
          isLoading: data.get(#isLoading, or: $value.isLoading),
          errorMessage: data.get(#errorMessage, or: $value.errorMessage),
          isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  WatchlistFilterBaseStatusCopyWith<$R2, WatchlistFilterBaseStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _WatchlistFilterBaseStatusCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class WatchlistFilterBaseInitStatusMapper
    extends ClassMapperBase<WatchlistFilterBaseInitStatus> {
  WatchlistFilterBaseInitStatusMapper._();

  static WatchlistFilterBaseInitStatusMapper? _instance;
  static WatchlistFilterBaseInitStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = WatchlistFilterBaseInitStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'WatchlistFilterBaseInitStatus';

  static bool _$isLoading(WatchlistFilterBaseInitStatus v) => v.isLoading;
  static const Field<WatchlistFilterBaseInitStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(WatchlistFilterBaseInitStatus v) =>
      v.errorMessage;
  static const Field<WatchlistFilterBaseInitStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(WatchlistFilterBaseInitStatus v) =>
      v.isInitialized;
  static const Field<WatchlistFilterBaseInitStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: true);

  @override
  final MappableFields<WatchlistFilterBaseInitStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static WatchlistFilterBaseInitStatus _instantiate(DecodingData data) {
    return WatchlistFilterBaseInitStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin WatchlistFilterBaseInitStatusMappable {
  WatchlistFilterBaseInitStatusCopyWith<WatchlistFilterBaseInitStatus,
          WatchlistFilterBaseInitStatus, WatchlistFilterBaseInitStatus>
      get copyWith => _WatchlistFilterBaseInitStatusCopyWithImpl<
              WatchlistFilterBaseInitStatus, WatchlistFilterBaseInitStatus>(
          this as WatchlistFilterBaseInitStatus, $identity, $identity);
  @override
  String toString() {
    return WatchlistFilterBaseInitStatusMapper.ensureInitialized()
        .stringifyValue(this as WatchlistFilterBaseInitStatus);
  }

  @override
  bool operator ==(Object other) {
    return WatchlistFilterBaseInitStatusMapper.ensureInitialized()
        .equalsValue(this as WatchlistFilterBaseInitStatus, other);
  }

  @override
  int get hashCode {
    return WatchlistFilterBaseInitStatusMapper.ensureInitialized()
        .hashValue(this as WatchlistFilterBaseInitStatus);
  }
}

extension WatchlistFilterBaseInitStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, WatchlistFilterBaseInitStatus, $Out> {
  WatchlistFilterBaseInitStatusCopyWith<$R, WatchlistFilterBaseInitStatus, $Out>
      get $asWatchlistFilterBaseInitStatus => $base.as((v, t, t2) =>
          _WatchlistFilterBaseInitStatusCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class WatchlistFilterBaseInitStatusCopyWith<
    $R,
    $In extends WatchlistFilterBaseInitStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  WatchlistFilterBaseInitStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _WatchlistFilterBaseInitStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WatchlistFilterBaseInitStatus, $Out>
    implements
        WatchlistFilterBaseInitStatusCopyWith<$R, WatchlistFilterBaseInitStatus,
            $Out> {
  _WatchlistFilterBaseInitStatusCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WatchlistFilterBaseInitStatus> $mapper =
      WatchlistFilterBaseInitStatusMapper.ensureInitialized();
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
  WatchlistFilterBaseInitStatus $make(CopyWithData data) =>
      WatchlistFilterBaseInitStatus(
          isLoading: data.get(#isLoading, or: $value.isLoading),
          errorMessage: data.get(#errorMessage, or: $value.errorMessage),
          isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  WatchlistFilterBaseInitStatusCopyWith<$R2, WatchlistFilterBaseInitStatus,
      $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _WatchlistFilterBaseInitStatusCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ApplyWatchlistFilterStatusMapper
    extends ClassMapperBase<ApplyWatchlistFilterStatus> {
  ApplyWatchlistFilterStatusMapper._();

  static ApplyWatchlistFilterStatusMapper? _instance;
  static ApplyWatchlistFilterStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ApplyWatchlistFilterStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ApplyWatchlistFilterStatus';

  static bool _$isInitialized(ApplyWatchlistFilterStatus v) => v.isInitialized;
  static const Field<ApplyWatchlistFilterStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: false);

  @override
  final MappableFields<ApplyWatchlistFilterStatus> fields = const {
    #isInitialized: _f$isInitialized,
  };

  static ApplyWatchlistFilterStatus _instantiate(DecodingData data) {
    return ApplyWatchlistFilterStatus(
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin ApplyWatchlistFilterStatusMappable {
  ApplyWatchlistFilterStatusCopyWith<ApplyWatchlistFilterStatus,
          ApplyWatchlistFilterStatus, ApplyWatchlistFilterStatus>
      get copyWith => _ApplyWatchlistFilterStatusCopyWithImpl<
              ApplyWatchlistFilterStatus, ApplyWatchlistFilterStatus>(
          this as ApplyWatchlistFilterStatus, $identity, $identity);
  @override
  String toString() {
    return ApplyWatchlistFilterStatusMapper.ensureInitialized()
        .stringifyValue(this as ApplyWatchlistFilterStatus);
  }

  @override
  bool operator ==(Object other) {
    return ApplyWatchlistFilterStatusMapper.ensureInitialized()
        .equalsValue(this as ApplyWatchlistFilterStatus, other);
  }

  @override
  int get hashCode {
    return ApplyWatchlistFilterStatusMapper.ensureInitialized()
        .hashValue(this as ApplyWatchlistFilterStatus);
  }
}

extension ApplyWatchlistFilterStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ApplyWatchlistFilterStatus, $Out> {
  ApplyWatchlistFilterStatusCopyWith<$R, ApplyWatchlistFilterStatus, $Out>
      get $asApplyWatchlistFilterStatus => $base.as((v, t, t2) =>
          _ApplyWatchlistFilterStatusCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ApplyWatchlistFilterStatusCopyWith<
    $R,
    $In extends ApplyWatchlistFilterStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isInitialized});
  ApplyWatchlistFilterStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ApplyWatchlistFilterStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ApplyWatchlistFilterStatus, $Out>
    implements
        ApplyWatchlistFilterStatusCopyWith<$R, ApplyWatchlistFilterStatus,
            $Out> {
  _ApplyWatchlistFilterStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ApplyWatchlistFilterStatus> $mapper =
      ApplyWatchlistFilterStatusMapper.ensureInitialized();
  @override
  $R call({bool? isInitialized}) => $apply(FieldCopyWithData(
      {if (isInitialized != null) #isInitialized: isInitialized}));
  @override
  ApplyWatchlistFilterStatus $make(CopyWithData data) =>
      ApplyWatchlistFilterStatus(
          isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  ApplyWatchlistFilterStatusCopyWith<$R2, ApplyWatchlistFilterStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ApplyWatchlistFilterStatusCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
