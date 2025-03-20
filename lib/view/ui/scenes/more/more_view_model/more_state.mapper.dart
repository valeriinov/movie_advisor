// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'more_state.dart';

class MoreStateMapper extends ClassMapperBase<MoreState> {
  MoreStateMapper._();

  static MoreStateMapper? _instance;
  static MoreStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MoreStateMapper._());
      UserDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MoreState';

  static UserData? _$user(MoreState v) => v.user;
  static const Field<MoreState, UserData> _f$user =
      Field('user', _$user, opt: true);
  static MoreStatus _$status(MoreState v) => v.status;
  static const Field<MoreState, MoreStatus> _f$status = Field(
      'status', _$status,
      opt: true, def: const MoreBaseStatus(isLoading: true));

  @override
  final MappableFields<MoreState> fields = const {
    #user: _f$user,
    #status: _f$status,
  };

  static MoreState _instantiate(DecodingData data) {
    return MoreState(user: data.dec(_f$user), status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin MoreStateMappable {
  MoreStateCopyWith<MoreState, MoreState, MoreState> get copyWith =>
      _MoreStateCopyWithImpl<MoreState, MoreState>(
          this as MoreState, $identity, $identity);
  @override
  String toString() {
    return MoreStateMapper.ensureInitialized()
        .stringifyValue(this as MoreState);
  }

  @override
  bool operator ==(Object other) {
    return MoreStateMapper.ensureInitialized()
        .equalsValue(this as MoreState, other);
  }

  @override
  int get hashCode {
    return MoreStateMapper.ensureInitialized().hashValue(this as MoreState);
  }
}

extension MoreStateValueCopy<$R, $Out> on ObjectCopyWith<$R, MoreState, $Out> {
  MoreStateCopyWith<$R, MoreState, $Out> get $asMoreState =>
      $base.as((v, t, t2) => _MoreStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MoreStateCopyWith<$R, $In extends MoreState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  UserDataCopyWith<$R, UserData, UserData>? get user;
  $R call({UserData? user, MoreStatus? status});
  MoreStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MoreStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MoreState, $Out>
    implements MoreStateCopyWith<$R, MoreState, $Out> {
  _MoreStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MoreState> $mapper =
      MoreStateMapper.ensureInitialized();
  @override
  UserDataCopyWith<$R, UserData, UserData>? get user =>
      $value.user?.copyWith.$chain((v) => call(user: v));
  @override
  $R call({Object? user = $none, MoreStatus? status}) =>
      $apply(FieldCopyWithData({
        if (user != $none) #user: user,
        if (status != null) #status: status
      }));
  @override
  MoreState $make(CopyWithData data) => MoreState(
      user: data.get(#user, or: $value.user),
      status: data.get(#status, or: $value.status));

  @override
  MoreStateCopyWith<$R2, MoreState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MoreStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MoreBaseStatusMapper extends ClassMapperBase<MoreBaseStatus> {
  MoreBaseStatusMapper._();

  static MoreBaseStatusMapper? _instance;
  static MoreBaseStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MoreBaseStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MoreBaseStatus';

  static bool _$isLoading(MoreBaseStatus v) => v.isLoading;
  static const Field<MoreBaseStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(MoreBaseStatus v) => v.errorMessage;
  static const Field<MoreBaseStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(MoreBaseStatus v) => v.isInitialized;
  static const Field<MoreBaseStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: false);

  @override
  final MappableFields<MoreBaseStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static MoreBaseStatus _instantiate(DecodingData data) {
    return MoreBaseStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin MoreBaseStatusMappable {
  MoreBaseStatusCopyWith<MoreBaseStatus, MoreBaseStatus, MoreBaseStatus>
      get copyWith =>
          _MoreBaseStatusCopyWithImpl<MoreBaseStatus, MoreBaseStatus>(
              this as MoreBaseStatus, $identity, $identity);
  @override
  String toString() {
    return MoreBaseStatusMapper.ensureInitialized()
        .stringifyValue(this as MoreBaseStatus);
  }

  @override
  bool operator ==(Object other) {
    return MoreBaseStatusMapper.ensureInitialized()
        .equalsValue(this as MoreBaseStatus, other);
  }

  @override
  int get hashCode {
    return MoreBaseStatusMapper.ensureInitialized()
        .hashValue(this as MoreBaseStatus);
  }
}

extension MoreBaseStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MoreBaseStatus, $Out> {
  MoreBaseStatusCopyWith<$R, MoreBaseStatus, $Out> get $asMoreBaseStatus =>
      $base.as((v, t, t2) => _MoreBaseStatusCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MoreBaseStatusCopyWith<$R, $In extends MoreBaseStatus, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  MoreBaseStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MoreBaseStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MoreBaseStatus, $Out>
    implements MoreBaseStatusCopyWith<$R, MoreBaseStatus, $Out> {
  _MoreBaseStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MoreBaseStatus> $mapper =
      MoreBaseStatusMapper.ensureInitialized();
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
  MoreBaseStatus $make(CopyWithData data) => MoreBaseStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  MoreBaseStatusCopyWith<$R2, MoreBaseStatus, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MoreBaseStatusCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MoreBaseInitStatusMapper extends ClassMapperBase<MoreBaseInitStatus> {
  MoreBaseInitStatusMapper._();

  static MoreBaseInitStatusMapper? _instance;
  static MoreBaseInitStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MoreBaseInitStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MoreBaseInitStatus';

  static bool _$isLoading(MoreBaseInitStatus v) => v.isLoading;
  static const Field<MoreBaseInitStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(MoreBaseInitStatus v) => v.errorMessage;
  static const Field<MoreBaseInitStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(MoreBaseInitStatus v) => v.isInitialized;
  static const Field<MoreBaseInitStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: true);

  @override
  final MappableFields<MoreBaseInitStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static MoreBaseInitStatus _instantiate(DecodingData data) {
    return MoreBaseInitStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin MoreBaseInitStatusMappable {
  MoreBaseInitStatusCopyWith<MoreBaseInitStatus, MoreBaseInitStatus,
          MoreBaseInitStatus>
      get copyWith => _MoreBaseInitStatusCopyWithImpl<MoreBaseInitStatus,
          MoreBaseInitStatus>(this as MoreBaseInitStatus, $identity, $identity);
  @override
  String toString() {
    return MoreBaseInitStatusMapper.ensureInitialized()
        .stringifyValue(this as MoreBaseInitStatus);
  }

  @override
  bool operator ==(Object other) {
    return MoreBaseInitStatusMapper.ensureInitialized()
        .equalsValue(this as MoreBaseInitStatus, other);
  }

  @override
  int get hashCode {
    return MoreBaseInitStatusMapper.ensureInitialized()
        .hashValue(this as MoreBaseInitStatus);
  }
}

extension MoreBaseInitStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MoreBaseInitStatus, $Out> {
  MoreBaseInitStatusCopyWith<$R, MoreBaseInitStatus, $Out>
      get $asMoreBaseInitStatus => $base.as(
          (v, t, t2) => _MoreBaseInitStatusCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MoreBaseInitStatusCopyWith<$R, $In extends MoreBaseInitStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  MoreBaseInitStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MoreBaseInitStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MoreBaseInitStatus, $Out>
    implements MoreBaseInitStatusCopyWith<$R, MoreBaseInitStatus, $Out> {
  _MoreBaseInitStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MoreBaseInitStatus> $mapper =
      MoreBaseInitStatusMapper.ensureInitialized();
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
  MoreBaseInitStatus $make(CopyWithData data) => MoreBaseInitStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  MoreBaseInitStatusCopyWith<$R2, MoreBaseInitStatus, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MoreBaseInitStatusCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
