// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'watched_state.dart';

class WatchedStateMapper extends ClassMapperBase<WatchedState> {
  WatchedStateMapper._();

  static WatchedStateMapper? _instance;
  static WatchedStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WatchedStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'WatchedState';

  static WatchedStatus _$status(WatchedState v) => v.status;
  static const Field<WatchedState, WatchedStatus> _f$status =
      Field('status', _$status, opt: true, def: const WatchedBaseStatus());

  @override
  final MappableFields<WatchedState> fields = const {
    #status: _f$status,
  };

  static WatchedState _instantiate(DecodingData data) {
    return WatchedState(status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin WatchedStateMappable {
  WatchedStateCopyWith<WatchedState, WatchedState, WatchedState> get copyWith =>
      _WatchedStateCopyWithImpl(this as WatchedState, $identity, $identity);
  @override
  String toString() {
    return WatchedStateMapper.ensureInitialized()
        .stringifyValue(this as WatchedState);
  }

  @override
  bool operator ==(Object other) {
    return WatchedStateMapper.ensureInitialized()
        .equalsValue(this as WatchedState, other);
  }

  @override
  int get hashCode {
    return WatchedStateMapper.ensureInitialized()
        .hashValue(this as WatchedState);
  }
}

extension WatchedStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, WatchedState, $Out> {
  WatchedStateCopyWith<$R, WatchedState, $Out> get $asWatchedState =>
      $base.as((v, t, t2) => _WatchedStateCopyWithImpl(v, t, t2));
}

abstract class WatchedStateCopyWith<$R, $In extends WatchedState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({WatchedStatus? status});
  WatchedStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _WatchedStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WatchedState, $Out>
    implements WatchedStateCopyWith<$R, WatchedState, $Out> {
  _WatchedStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WatchedState> $mapper =
      WatchedStateMapper.ensureInitialized();
  @override
  $R call({WatchedStatus? status}) =>
      $apply(FieldCopyWithData({if (status != null) #status: status}));
  @override
  WatchedState $make(CopyWithData data) =>
      WatchedState(status: data.get(#status, or: $value.status));

  @override
  WatchedStateCopyWith<$R2, WatchedState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _WatchedStateCopyWithImpl($value, $cast, t);
}

class WatchedBaseStatusMapper extends ClassMapperBase<WatchedBaseStatus> {
  WatchedBaseStatusMapper._();

  static WatchedBaseStatusMapper? _instance;
  static WatchedBaseStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WatchedBaseStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'WatchedBaseStatus';

  static bool _$isLoading(WatchedBaseStatus v) => v.isLoading;
  static const Field<WatchedBaseStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(WatchedBaseStatus v) => v.errorMessage;
  static const Field<WatchedBaseStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(WatchedBaseStatus v) => v.isInitialized;
  static const Field<WatchedBaseStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: false);

  @override
  final MappableFields<WatchedBaseStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static WatchedBaseStatus _instantiate(DecodingData data) {
    return WatchedBaseStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin WatchedBaseStatusMappable {
  WatchedBaseStatusCopyWith<WatchedBaseStatus, WatchedBaseStatus,
          WatchedBaseStatus>
      get copyWith => _WatchedBaseStatusCopyWithImpl(
          this as WatchedBaseStatus, $identity, $identity);
  @override
  String toString() {
    return WatchedBaseStatusMapper.ensureInitialized()
        .stringifyValue(this as WatchedBaseStatus);
  }

  @override
  bool operator ==(Object other) {
    return WatchedBaseStatusMapper.ensureInitialized()
        .equalsValue(this as WatchedBaseStatus, other);
  }

  @override
  int get hashCode {
    return WatchedBaseStatusMapper.ensureInitialized()
        .hashValue(this as WatchedBaseStatus);
  }
}

extension WatchedBaseStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, WatchedBaseStatus, $Out> {
  WatchedBaseStatusCopyWith<$R, WatchedBaseStatus, $Out>
      get $asWatchedBaseStatus =>
          $base.as((v, t, t2) => _WatchedBaseStatusCopyWithImpl(v, t, t2));
}

abstract class WatchedBaseStatusCopyWith<$R, $In extends WatchedBaseStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  WatchedBaseStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _WatchedBaseStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WatchedBaseStatus, $Out>
    implements WatchedBaseStatusCopyWith<$R, WatchedBaseStatus, $Out> {
  _WatchedBaseStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WatchedBaseStatus> $mapper =
      WatchedBaseStatusMapper.ensureInitialized();
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
  WatchedBaseStatus $make(CopyWithData data) => WatchedBaseStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  WatchedBaseStatusCopyWith<$R2, WatchedBaseStatus, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _WatchedBaseStatusCopyWithImpl($value, $cast, t);
}

class WatchedBaseInitStatusMapper
    extends ClassMapperBase<WatchedBaseInitStatus> {
  WatchedBaseInitStatusMapper._();

  static WatchedBaseInitStatusMapper? _instance;
  static WatchedBaseInitStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WatchedBaseInitStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'WatchedBaseInitStatus';

  static bool _$isLoading(WatchedBaseInitStatus v) => v.isLoading;
  static const Field<WatchedBaseInitStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(WatchedBaseInitStatus v) => v.errorMessage;
  static const Field<WatchedBaseInitStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(WatchedBaseInitStatus v) => v.isInitialized;
  static const Field<WatchedBaseInitStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: true);

  @override
  final MappableFields<WatchedBaseInitStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static WatchedBaseInitStatus _instantiate(DecodingData data) {
    return WatchedBaseInitStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin WatchedBaseInitStatusMappable {
  WatchedBaseInitStatusCopyWith<WatchedBaseInitStatus, WatchedBaseInitStatus,
          WatchedBaseInitStatus>
      get copyWith => _WatchedBaseInitStatusCopyWithImpl(
          this as WatchedBaseInitStatus, $identity, $identity);
  @override
  String toString() {
    return WatchedBaseInitStatusMapper.ensureInitialized()
        .stringifyValue(this as WatchedBaseInitStatus);
  }

  @override
  bool operator ==(Object other) {
    return WatchedBaseInitStatusMapper.ensureInitialized()
        .equalsValue(this as WatchedBaseInitStatus, other);
  }

  @override
  int get hashCode {
    return WatchedBaseInitStatusMapper.ensureInitialized()
        .hashValue(this as WatchedBaseInitStatus);
  }
}

extension WatchedBaseInitStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, WatchedBaseInitStatus, $Out> {
  WatchedBaseInitStatusCopyWith<$R, WatchedBaseInitStatus, $Out>
      get $asWatchedBaseInitStatus =>
          $base.as((v, t, t2) => _WatchedBaseInitStatusCopyWithImpl(v, t, t2));
}

abstract class WatchedBaseInitStatusCopyWith<
    $R,
    $In extends WatchedBaseInitStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  WatchedBaseInitStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _WatchedBaseInitStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WatchedBaseInitStatus, $Out>
    implements WatchedBaseInitStatusCopyWith<$R, WatchedBaseInitStatus, $Out> {
  _WatchedBaseInitStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WatchedBaseInitStatus> $mapper =
      WatchedBaseInitStatusMapper.ensureInitialized();
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
  WatchedBaseInitStatus $make(CopyWithData data) => WatchedBaseInitStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  WatchedBaseInitStatusCopyWith<$R2, WatchedBaseInitStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _WatchedBaseInitStatusCopyWithImpl($value, $cast, t);
}
