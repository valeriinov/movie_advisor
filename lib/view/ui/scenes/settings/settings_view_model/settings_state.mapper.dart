// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'settings_state.dart';

class SettingsStateMapper extends ClassMapperBase<SettingsState> {
  SettingsStateMapper._();

  static SettingsStateMapper? _instance;
  static SettingsStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SettingsStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SettingsState';

  static SettingsStatus _$status(SettingsState v) => v.status;
  static const Field<SettingsState, SettingsStatus> _f$status =
      Field('status', _$status, opt: true, def: const SettingsBaseStatus());

  @override
  final MappableFields<SettingsState> fields = const {
    #status: _f$status,
  };

  static SettingsState _instantiate(DecodingData data) {
    return SettingsState(status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin SettingsStateMappable {
  SettingsStateCopyWith<SettingsState, SettingsState, SettingsState>
      get copyWith => _SettingsStateCopyWithImpl(
          this as SettingsState, $identity, $identity);
  @override
  String toString() {
    return SettingsStateMapper.ensureInitialized()
        .stringifyValue(this as SettingsState);
  }

  @override
  bool operator ==(Object other) {
    return SettingsStateMapper.ensureInitialized()
        .equalsValue(this as SettingsState, other);
  }

  @override
  int get hashCode {
    return SettingsStateMapper.ensureInitialized()
        .hashValue(this as SettingsState);
  }
}

extension SettingsStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SettingsState, $Out> {
  SettingsStateCopyWith<$R, SettingsState, $Out> get $asSettingsState =>
      $base.as((v, t, t2) => _SettingsStateCopyWithImpl(v, t, t2));
}

abstract class SettingsStateCopyWith<$R, $In extends SettingsState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({SettingsStatus? status});
  SettingsStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SettingsStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SettingsState, $Out>
    implements SettingsStateCopyWith<$R, SettingsState, $Out> {
  _SettingsStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SettingsState> $mapper =
      SettingsStateMapper.ensureInitialized();
  @override
  $R call({SettingsStatus? status}) =>
      $apply(FieldCopyWithData({if (status != null) #status: status}));
  @override
  SettingsState $make(CopyWithData data) =>
      SettingsState(status: data.get(#status, or: $value.status));

  @override
  SettingsStateCopyWith<$R2, SettingsState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SettingsStateCopyWithImpl($value, $cast, t);
}

class SettingsBaseStatusMapper extends ClassMapperBase<SettingsBaseStatus> {
  SettingsBaseStatusMapper._();

  static SettingsBaseStatusMapper? _instance;
  static SettingsBaseStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SettingsBaseStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SettingsBaseStatus';

  static bool _$isLoading(SettingsBaseStatus v) => v.isLoading;
  static const Field<SettingsBaseStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(SettingsBaseStatus v) => v.errorMessage;
  static const Field<SettingsBaseStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(SettingsBaseStatus v) => v.isInitialized;
  static const Field<SettingsBaseStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: false);

  @override
  final MappableFields<SettingsBaseStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static SettingsBaseStatus _instantiate(DecodingData data) {
    return SettingsBaseStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin SettingsBaseStatusMappable {
  SettingsBaseStatusCopyWith<SettingsBaseStatus, SettingsBaseStatus,
          SettingsBaseStatus>
      get copyWith => _SettingsBaseStatusCopyWithImpl(
          this as SettingsBaseStatus, $identity, $identity);
  @override
  String toString() {
    return SettingsBaseStatusMapper.ensureInitialized()
        .stringifyValue(this as SettingsBaseStatus);
  }

  @override
  bool operator ==(Object other) {
    return SettingsBaseStatusMapper.ensureInitialized()
        .equalsValue(this as SettingsBaseStatus, other);
  }

  @override
  int get hashCode {
    return SettingsBaseStatusMapper.ensureInitialized()
        .hashValue(this as SettingsBaseStatus);
  }
}

extension SettingsBaseStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SettingsBaseStatus, $Out> {
  SettingsBaseStatusCopyWith<$R, SettingsBaseStatus, $Out>
      get $asSettingsBaseStatus =>
          $base.as((v, t, t2) => _SettingsBaseStatusCopyWithImpl(v, t, t2));
}

abstract class SettingsBaseStatusCopyWith<$R, $In extends SettingsBaseStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  SettingsBaseStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SettingsBaseStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SettingsBaseStatus, $Out>
    implements SettingsBaseStatusCopyWith<$R, SettingsBaseStatus, $Out> {
  _SettingsBaseStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SettingsBaseStatus> $mapper =
      SettingsBaseStatusMapper.ensureInitialized();
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
  SettingsBaseStatus $make(CopyWithData data) => SettingsBaseStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  SettingsBaseStatusCopyWith<$R2, SettingsBaseStatus, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SettingsBaseStatusCopyWithImpl($value, $cast, t);
}

class SettingsBaseInitStatusMapper
    extends ClassMapperBase<SettingsBaseInitStatus> {
  SettingsBaseInitStatusMapper._();

  static SettingsBaseInitStatusMapper? _instance;
  static SettingsBaseInitStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SettingsBaseInitStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SettingsBaseInitStatus';

  static bool _$isLoading(SettingsBaseInitStatus v) => v.isLoading;
  static const Field<SettingsBaseInitStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(SettingsBaseInitStatus v) => v.errorMessage;
  static const Field<SettingsBaseInitStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(SettingsBaseInitStatus v) => v.isInitialized;
  static const Field<SettingsBaseInitStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: true);

  @override
  final MappableFields<SettingsBaseInitStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static SettingsBaseInitStatus _instantiate(DecodingData data) {
    return SettingsBaseInitStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin SettingsBaseInitStatusMappable {
  SettingsBaseInitStatusCopyWith<SettingsBaseInitStatus, SettingsBaseInitStatus,
          SettingsBaseInitStatus>
      get copyWith => _SettingsBaseInitStatusCopyWithImpl(
          this as SettingsBaseInitStatus, $identity, $identity);
  @override
  String toString() {
    return SettingsBaseInitStatusMapper.ensureInitialized()
        .stringifyValue(this as SettingsBaseInitStatus);
  }

  @override
  bool operator ==(Object other) {
    return SettingsBaseInitStatusMapper.ensureInitialized()
        .equalsValue(this as SettingsBaseInitStatus, other);
  }

  @override
  int get hashCode {
    return SettingsBaseInitStatusMapper.ensureInitialized()
        .hashValue(this as SettingsBaseInitStatus);
  }
}

extension SettingsBaseInitStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SettingsBaseInitStatus, $Out> {
  SettingsBaseInitStatusCopyWith<$R, SettingsBaseInitStatus, $Out>
      get $asSettingsBaseInitStatus =>
          $base.as((v, t, t2) => _SettingsBaseInitStatusCopyWithImpl(v, t, t2));
}

abstract class SettingsBaseInitStatusCopyWith<
    $R,
    $In extends SettingsBaseInitStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  SettingsBaseInitStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SettingsBaseInitStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SettingsBaseInitStatus, $Out>
    implements
        SettingsBaseInitStatusCopyWith<$R, SettingsBaseInitStatus, $Out> {
  _SettingsBaseInitStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SettingsBaseInitStatus> $mapper =
      SettingsBaseInitStatusMapper.ensureInitialized();
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
  SettingsBaseInitStatus $make(CopyWithData data) => SettingsBaseInitStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  SettingsBaseInitStatusCopyWith<$R2, SettingsBaseInitStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _SettingsBaseInitStatusCopyWithImpl($value, $cast, t);
}
