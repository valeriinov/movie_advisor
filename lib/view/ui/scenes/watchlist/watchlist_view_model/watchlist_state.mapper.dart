// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'watchlist_state.dart';

class WatchlistStateMapper extends ClassMapperBase<WatchlistState> {
  WatchlistStateMapper._();

  static WatchlistStateMapper? _instance;
  static WatchlistStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WatchlistStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'WatchlistState';

  static WatchlistStatus _$status(WatchlistState v) => v.status;
  static const Field<WatchlistState, WatchlistStatus> _f$status =
      Field('status', _$status, opt: true, def: const WatchlistBaseStatus());

  @override
  final MappableFields<WatchlistState> fields = const {
    #status: _f$status,
  };

  static WatchlistState _instantiate(DecodingData data) {
    return WatchlistState(status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin WatchlistStateMappable {
  WatchlistStateCopyWith<WatchlistState, WatchlistState, WatchlistState>
      get copyWith => _WatchlistStateCopyWithImpl(
          this as WatchlistState, $identity, $identity);
  @override
  String toString() {
    return WatchlistStateMapper.ensureInitialized()
        .stringifyValue(this as WatchlistState);
  }

  @override
  bool operator ==(Object other) {
    return WatchlistStateMapper.ensureInitialized()
        .equalsValue(this as WatchlistState, other);
  }

  @override
  int get hashCode {
    return WatchlistStateMapper.ensureInitialized()
        .hashValue(this as WatchlistState);
  }
}

extension WatchlistStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, WatchlistState, $Out> {
  WatchlistStateCopyWith<$R, WatchlistState, $Out> get $asWatchlistState =>
      $base.as((v, t, t2) => _WatchlistStateCopyWithImpl(v, t, t2));
}

abstract class WatchlistStateCopyWith<$R, $In extends WatchlistState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({WatchlistStatus? status});
  WatchlistStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _WatchlistStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WatchlistState, $Out>
    implements WatchlistStateCopyWith<$R, WatchlistState, $Out> {
  _WatchlistStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WatchlistState> $mapper =
      WatchlistStateMapper.ensureInitialized();
  @override
  $R call({WatchlistStatus? status}) =>
      $apply(FieldCopyWithData({if (status != null) #status: status}));
  @override
  WatchlistState $make(CopyWithData data) =>
      WatchlistState(status: data.get(#status, or: $value.status));

  @override
  WatchlistStateCopyWith<$R2, WatchlistState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _WatchlistStateCopyWithImpl($value, $cast, t);
}

class WatchlistBaseStatusMapper extends ClassMapperBase<WatchlistBaseStatus> {
  WatchlistBaseStatusMapper._();

  static WatchlistBaseStatusMapper? _instance;
  static WatchlistBaseStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WatchlistBaseStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'WatchlistBaseStatus';

  static bool _$isLoading(WatchlistBaseStatus v) => v.isLoading;
  static const Field<WatchlistBaseStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(WatchlistBaseStatus v) => v.errorMessage;
  static const Field<WatchlistBaseStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(WatchlistBaseStatus v) => v.isInitialized;
  static const Field<WatchlistBaseStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: false);

  @override
  final MappableFields<WatchlistBaseStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static WatchlistBaseStatus _instantiate(DecodingData data) {
    return WatchlistBaseStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin WatchlistBaseStatusMappable {
  WatchlistBaseStatusCopyWith<WatchlistBaseStatus, WatchlistBaseStatus,
          WatchlistBaseStatus>
      get copyWith => _WatchlistBaseStatusCopyWithImpl(
          this as WatchlistBaseStatus, $identity, $identity);
  @override
  String toString() {
    return WatchlistBaseStatusMapper.ensureInitialized()
        .stringifyValue(this as WatchlistBaseStatus);
  }

  @override
  bool operator ==(Object other) {
    return WatchlistBaseStatusMapper.ensureInitialized()
        .equalsValue(this as WatchlistBaseStatus, other);
  }

  @override
  int get hashCode {
    return WatchlistBaseStatusMapper.ensureInitialized()
        .hashValue(this as WatchlistBaseStatus);
  }
}

extension WatchlistBaseStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, WatchlistBaseStatus, $Out> {
  WatchlistBaseStatusCopyWith<$R, WatchlistBaseStatus, $Out>
      get $asWatchlistBaseStatus =>
          $base.as((v, t, t2) => _WatchlistBaseStatusCopyWithImpl(v, t, t2));
}

abstract class WatchlistBaseStatusCopyWith<$R, $In extends WatchlistBaseStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  WatchlistBaseStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _WatchlistBaseStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WatchlistBaseStatus, $Out>
    implements WatchlistBaseStatusCopyWith<$R, WatchlistBaseStatus, $Out> {
  _WatchlistBaseStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WatchlistBaseStatus> $mapper =
      WatchlistBaseStatusMapper.ensureInitialized();
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
  WatchlistBaseStatus $make(CopyWithData data) => WatchlistBaseStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  WatchlistBaseStatusCopyWith<$R2, WatchlistBaseStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _WatchlistBaseStatusCopyWithImpl($value, $cast, t);
}

class WatchlistBaseInitStatusMapper
    extends ClassMapperBase<WatchlistBaseInitStatus> {
  WatchlistBaseInitStatusMapper._();

  static WatchlistBaseInitStatusMapper? _instance;
  static WatchlistBaseInitStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = WatchlistBaseInitStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'WatchlistBaseInitStatus';

  static bool _$isLoading(WatchlistBaseInitStatus v) => v.isLoading;
  static const Field<WatchlistBaseInitStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(WatchlistBaseInitStatus v) => v.errorMessage;
  static const Field<WatchlistBaseInitStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(WatchlistBaseInitStatus v) => v.isInitialized;
  static const Field<WatchlistBaseInitStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: true);

  @override
  final MappableFields<WatchlistBaseInitStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static WatchlistBaseInitStatus _instantiate(DecodingData data) {
    return WatchlistBaseInitStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin WatchlistBaseInitStatusMappable {
  WatchlistBaseInitStatusCopyWith<WatchlistBaseInitStatus,
          WatchlistBaseInitStatus, WatchlistBaseInitStatus>
      get copyWith => _WatchlistBaseInitStatusCopyWithImpl(
          this as WatchlistBaseInitStatus, $identity, $identity);
  @override
  String toString() {
    return WatchlistBaseInitStatusMapper.ensureInitialized()
        .stringifyValue(this as WatchlistBaseInitStatus);
  }

  @override
  bool operator ==(Object other) {
    return WatchlistBaseInitStatusMapper.ensureInitialized()
        .equalsValue(this as WatchlistBaseInitStatus, other);
  }

  @override
  int get hashCode {
    return WatchlistBaseInitStatusMapper.ensureInitialized()
        .hashValue(this as WatchlistBaseInitStatus);
  }
}

extension WatchlistBaseInitStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, WatchlistBaseInitStatus, $Out> {
  WatchlistBaseInitStatusCopyWith<$R, WatchlistBaseInitStatus, $Out>
      get $asWatchlistBaseInitStatus => $base
          .as((v, t, t2) => _WatchlistBaseInitStatusCopyWithImpl(v, t, t2));
}

abstract class WatchlistBaseInitStatusCopyWith<
    $R,
    $In extends WatchlistBaseInitStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  WatchlistBaseInitStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _WatchlistBaseInitStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WatchlistBaseInitStatus, $Out>
    implements
        WatchlistBaseInitStatusCopyWith<$R, WatchlistBaseInitStatus, $Out> {
  _WatchlistBaseInitStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WatchlistBaseInitStatus> $mapper =
      WatchlistBaseInitStatusMapper.ensureInitialized();
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
  WatchlistBaseInitStatus $make(CopyWithData data) => WatchlistBaseInitStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  WatchlistBaseInitStatusCopyWith<$R2, WatchlistBaseInitStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _WatchlistBaseInitStatusCopyWithImpl($value, $cast, t);
}
