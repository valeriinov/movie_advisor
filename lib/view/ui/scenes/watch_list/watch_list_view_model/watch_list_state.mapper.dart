// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'watch_list_state.dart';

class WatchListStateMapper extends ClassMapperBase<WatchListState> {
  WatchListStateMapper._();

  static WatchListStateMapper? _instance;
  static WatchListStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WatchListStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'WatchListState';

  static WatchListStatus _$status(WatchListState v) => v.status;
  static const Field<WatchListState, WatchListStatus> _f$status =
      Field('status', _$status, opt: true, def: const WatchListBaseStatus());

  @override
  final MappableFields<WatchListState> fields = const {
    #status: _f$status,
  };

  static WatchListState _instantiate(DecodingData data) {
    return WatchListState(status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin WatchListStateMappable {
  WatchListStateCopyWith<WatchListState, WatchListState, WatchListState>
      get copyWith => _WatchListStateCopyWithImpl(
          this as WatchListState, $identity, $identity);
  @override
  String toString() {
    return WatchListStateMapper.ensureInitialized()
        .stringifyValue(this as WatchListState);
  }

  @override
  bool operator ==(Object other) {
    return WatchListStateMapper.ensureInitialized()
        .equalsValue(this as WatchListState, other);
  }

  @override
  int get hashCode {
    return WatchListStateMapper.ensureInitialized()
        .hashValue(this as WatchListState);
  }
}

extension WatchListStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, WatchListState, $Out> {
  WatchListStateCopyWith<$R, WatchListState, $Out> get $asWatchListState =>
      $base.as((v, t, t2) => _WatchListStateCopyWithImpl(v, t, t2));
}

abstract class WatchListStateCopyWith<$R, $In extends WatchListState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({WatchListStatus? status});
  WatchListStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _WatchListStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WatchListState, $Out>
    implements WatchListStateCopyWith<$R, WatchListState, $Out> {
  _WatchListStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WatchListState> $mapper =
      WatchListStateMapper.ensureInitialized();
  @override
  $R call({WatchListStatus? status}) =>
      $apply(FieldCopyWithData({if (status != null) #status: status}));
  @override
  WatchListState $make(CopyWithData data) =>
      WatchListState(status: data.get(#status, or: $value.status));

  @override
  WatchListStateCopyWith<$R2, WatchListState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _WatchListStateCopyWithImpl($value, $cast, t);
}

class WatchListBaseStatusMapper extends ClassMapperBase<WatchListBaseStatus> {
  WatchListBaseStatusMapper._();

  static WatchListBaseStatusMapper? _instance;
  static WatchListBaseStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WatchListBaseStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'WatchListBaseStatus';

  static bool _$isLoading(WatchListBaseStatus v) => v.isLoading;
  static const Field<WatchListBaseStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(WatchListBaseStatus v) => v.errorMessage;
  static const Field<WatchListBaseStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(WatchListBaseStatus v) => v.isInitialized;
  static const Field<WatchListBaseStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: false);

  @override
  final MappableFields<WatchListBaseStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static WatchListBaseStatus _instantiate(DecodingData data) {
    return WatchListBaseStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin WatchListBaseStatusMappable {
  WatchListBaseStatusCopyWith<WatchListBaseStatus, WatchListBaseStatus,
          WatchListBaseStatus>
      get copyWith => _WatchListBaseStatusCopyWithImpl(
          this as WatchListBaseStatus, $identity, $identity);
  @override
  String toString() {
    return WatchListBaseStatusMapper.ensureInitialized()
        .stringifyValue(this as WatchListBaseStatus);
  }

  @override
  bool operator ==(Object other) {
    return WatchListBaseStatusMapper.ensureInitialized()
        .equalsValue(this as WatchListBaseStatus, other);
  }

  @override
  int get hashCode {
    return WatchListBaseStatusMapper.ensureInitialized()
        .hashValue(this as WatchListBaseStatus);
  }
}

extension WatchListBaseStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, WatchListBaseStatus, $Out> {
  WatchListBaseStatusCopyWith<$R, WatchListBaseStatus, $Out>
      get $asWatchListBaseStatus =>
          $base.as((v, t, t2) => _WatchListBaseStatusCopyWithImpl(v, t, t2));
}

abstract class WatchListBaseStatusCopyWith<$R, $In extends WatchListBaseStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  WatchListBaseStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _WatchListBaseStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WatchListBaseStatus, $Out>
    implements WatchListBaseStatusCopyWith<$R, WatchListBaseStatus, $Out> {
  _WatchListBaseStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WatchListBaseStatus> $mapper =
      WatchListBaseStatusMapper.ensureInitialized();
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
  WatchListBaseStatus $make(CopyWithData data) => WatchListBaseStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  WatchListBaseStatusCopyWith<$R2, WatchListBaseStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _WatchListBaseStatusCopyWithImpl($value, $cast, t);
}

class WatchListBaseInitStatusMapper
    extends ClassMapperBase<WatchListBaseInitStatus> {
  WatchListBaseInitStatusMapper._();

  static WatchListBaseInitStatusMapper? _instance;
  static WatchListBaseInitStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = WatchListBaseInitStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'WatchListBaseInitStatus';

  static bool _$isLoading(WatchListBaseInitStatus v) => v.isLoading;
  static const Field<WatchListBaseInitStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(WatchListBaseInitStatus v) => v.errorMessage;
  static const Field<WatchListBaseInitStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(WatchListBaseInitStatus v) => v.isInitialized;
  static const Field<WatchListBaseInitStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: true);

  @override
  final MappableFields<WatchListBaseInitStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static WatchListBaseInitStatus _instantiate(DecodingData data) {
    return WatchListBaseInitStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin WatchListBaseInitStatusMappable {
  WatchListBaseInitStatusCopyWith<WatchListBaseInitStatus,
          WatchListBaseInitStatus, WatchListBaseInitStatus>
      get copyWith => _WatchListBaseInitStatusCopyWithImpl(
          this as WatchListBaseInitStatus, $identity, $identity);
  @override
  String toString() {
    return WatchListBaseInitStatusMapper.ensureInitialized()
        .stringifyValue(this as WatchListBaseInitStatus);
  }

  @override
  bool operator ==(Object other) {
    return WatchListBaseInitStatusMapper.ensureInitialized()
        .equalsValue(this as WatchListBaseInitStatus, other);
  }

  @override
  int get hashCode {
    return WatchListBaseInitStatusMapper.ensureInitialized()
        .hashValue(this as WatchListBaseInitStatus);
  }
}

extension WatchListBaseInitStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, WatchListBaseInitStatus, $Out> {
  WatchListBaseInitStatusCopyWith<$R, WatchListBaseInitStatus, $Out>
      get $asWatchListBaseInitStatus => $base
          .as((v, t, t2) => _WatchListBaseInitStatusCopyWithImpl(v, t, t2));
}

abstract class WatchListBaseInitStatusCopyWith<
    $R,
    $In extends WatchListBaseInitStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  WatchListBaseInitStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _WatchListBaseInitStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WatchListBaseInitStatus, $Out>
    implements
        WatchListBaseInitStatusCopyWith<$R, WatchListBaseInitStatus, $Out> {
  _WatchListBaseInitStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WatchListBaseInitStatus> $mapper =
      WatchListBaseInitStatusMapper.ensureInitialized();
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
  WatchListBaseInitStatus $make(CopyWithData data) => WatchListBaseInitStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  WatchListBaseInitStatusCopyWith<$R2, WatchListBaseInitStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _WatchListBaseInitStatusCopyWithImpl($value, $cast, t);
}
