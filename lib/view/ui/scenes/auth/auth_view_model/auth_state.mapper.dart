// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'auth_state.dart';

class AuthStateMapper extends ClassMapperBase<AuthState> {
  AuthStateMapper._();

  static AuthStateMapper? _instance;
  static AuthStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthStateMapper._());
      AuthFormStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AuthState';

  static AuthFormState _$formState(AuthState v) => v.formState;
  static const Field<AuthState, AuthFormState> _f$formState =
      Field('formState', _$formState, opt: true, def: const AuthFormState());
  static AuthStatus _$status(AuthState v) => v.status;
  static const Field<AuthState, AuthStatus> _f$status =
      Field('status', _$status, opt: true, def: const AuthBaseStatus());

  @override
  final MappableFields<AuthState> fields = const {
    #formState: _f$formState,
    #status: _f$status,
  };

  static AuthState _instantiate(DecodingData data) {
    return AuthState(
        formState: data.dec(_f$formState), status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin AuthStateMappable {
  AuthStateCopyWith<AuthState, AuthState, AuthState> get copyWith =>
      _AuthStateCopyWithImpl(this as AuthState, $identity, $identity);
  @override
  String toString() {
    return AuthStateMapper.ensureInitialized()
        .stringifyValue(this as AuthState);
  }

  @override
  bool operator ==(Object other) {
    return AuthStateMapper.ensureInitialized()
        .equalsValue(this as AuthState, other);
  }

  @override
  int get hashCode {
    return AuthStateMapper.ensureInitialized().hashValue(this as AuthState);
  }
}

extension AuthStateValueCopy<$R, $Out> on ObjectCopyWith<$R, AuthState, $Out> {
  AuthStateCopyWith<$R, AuthState, $Out> get $asAuthState =>
      $base.as((v, t, t2) => _AuthStateCopyWithImpl(v, t, t2));
}

abstract class AuthStateCopyWith<$R, $In extends AuthState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  AuthFormStateCopyWith<$R, AuthFormState, AuthFormState> get formState;
  $R call({AuthFormState? formState, AuthStatus? status});
  AuthStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AuthStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthState, $Out>
    implements AuthStateCopyWith<$R, AuthState, $Out> {
  _AuthStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthState> $mapper =
      AuthStateMapper.ensureInitialized();
  @override
  AuthFormStateCopyWith<$R, AuthFormState, AuthFormState> get formState =>
      $value.formState.copyWith.$chain((v) => call(formState: v));
  @override
  $R call({AuthFormState? formState, AuthStatus? status}) =>
      $apply(FieldCopyWithData({
        if (formState != null) #formState: formState,
        if (status != null) #status: status
      }));
  @override
  AuthState $make(CopyWithData data) => AuthState(
      formState: data.get(#formState, or: $value.formState),
      status: data.get(#status, or: $value.status));

  @override
  AuthStateCopyWith<$R2, AuthState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AuthStateCopyWithImpl($value, $cast, t);
}

class AuthBaseStatusMapper extends ClassMapperBase<AuthBaseStatus> {
  AuthBaseStatusMapper._();

  static AuthBaseStatusMapper? _instance;
  static AuthBaseStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthBaseStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AuthBaseStatus';

  static bool _$isLoading(AuthBaseStatus v) => v.isLoading;
  static const Field<AuthBaseStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(AuthBaseStatus v) => v.errorMessage;
  static const Field<AuthBaseStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(AuthBaseStatus v) => v.isInitialized;
  static const Field<AuthBaseStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: false);

  @override
  final MappableFields<AuthBaseStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static AuthBaseStatus _instantiate(DecodingData data) {
    return AuthBaseStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin AuthBaseStatusMappable {
  AuthBaseStatusCopyWith<AuthBaseStatus, AuthBaseStatus, AuthBaseStatus>
      get copyWith => _AuthBaseStatusCopyWithImpl(
          this as AuthBaseStatus, $identity, $identity);
  @override
  String toString() {
    return AuthBaseStatusMapper.ensureInitialized()
        .stringifyValue(this as AuthBaseStatus);
  }

  @override
  bool operator ==(Object other) {
    return AuthBaseStatusMapper.ensureInitialized()
        .equalsValue(this as AuthBaseStatus, other);
  }

  @override
  int get hashCode {
    return AuthBaseStatusMapper.ensureInitialized()
        .hashValue(this as AuthBaseStatus);
  }
}

extension AuthBaseStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthBaseStatus, $Out> {
  AuthBaseStatusCopyWith<$R, AuthBaseStatus, $Out> get $asAuthBaseStatus =>
      $base.as((v, t, t2) => _AuthBaseStatusCopyWithImpl(v, t, t2));
}

abstract class AuthBaseStatusCopyWith<$R, $In extends AuthBaseStatus, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  AuthBaseStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AuthBaseStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthBaseStatus, $Out>
    implements AuthBaseStatusCopyWith<$R, AuthBaseStatus, $Out> {
  _AuthBaseStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthBaseStatus> $mapper =
      AuthBaseStatusMapper.ensureInitialized();
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
  AuthBaseStatus $make(CopyWithData data) => AuthBaseStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  AuthBaseStatusCopyWith<$R2, AuthBaseStatus, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AuthBaseStatusCopyWithImpl($value, $cast, t);
}

class AuthBaseInitStatusMapper extends ClassMapperBase<AuthBaseInitStatus> {
  AuthBaseInitStatusMapper._();

  static AuthBaseInitStatusMapper? _instance;
  static AuthBaseInitStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthBaseInitStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AuthBaseInitStatus';

  static bool _$isLoading(AuthBaseInitStatus v) => v.isLoading;
  static const Field<AuthBaseInitStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(AuthBaseInitStatus v) => v.errorMessage;
  static const Field<AuthBaseInitStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(AuthBaseInitStatus v) => v.isInitialized;
  static const Field<AuthBaseInitStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: true);

  @override
  final MappableFields<AuthBaseInitStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static AuthBaseInitStatus _instantiate(DecodingData data) {
    return AuthBaseInitStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin AuthBaseInitStatusMappable {
  AuthBaseInitStatusCopyWith<AuthBaseInitStatus, AuthBaseInitStatus,
          AuthBaseInitStatus>
      get copyWith => _AuthBaseInitStatusCopyWithImpl(
          this as AuthBaseInitStatus, $identity, $identity);
  @override
  String toString() {
    return AuthBaseInitStatusMapper.ensureInitialized()
        .stringifyValue(this as AuthBaseInitStatus);
  }

  @override
  bool operator ==(Object other) {
    return AuthBaseInitStatusMapper.ensureInitialized()
        .equalsValue(this as AuthBaseInitStatus, other);
  }

  @override
  int get hashCode {
    return AuthBaseInitStatusMapper.ensureInitialized()
        .hashValue(this as AuthBaseInitStatus);
  }
}

extension AuthBaseInitStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthBaseInitStatus, $Out> {
  AuthBaseInitStatusCopyWith<$R, AuthBaseInitStatus, $Out>
      get $asAuthBaseInitStatus =>
          $base.as((v, t, t2) => _AuthBaseInitStatusCopyWithImpl(v, t, t2));
}

abstract class AuthBaseInitStatusCopyWith<$R, $In extends AuthBaseInitStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  AuthBaseInitStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AuthBaseInitStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthBaseInitStatus, $Out>
    implements AuthBaseInitStatusCopyWith<$R, AuthBaseInitStatus, $Out> {
  _AuthBaseInitStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthBaseInitStatus> $mapper =
      AuthBaseInitStatusMapper.ensureInitialized();
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
  AuthBaseInitStatus $make(CopyWithData data) => AuthBaseInitStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  AuthBaseInitStatusCopyWith<$R2, AuthBaseInitStatus, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AuthBaseInitStatusCopyWithImpl($value, $cast, t);
}

class AuthSuccessStatusMapper extends ClassMapperBase<AuthSuccessStatus> {
  AuthSuccessStatusMapper._();

  static AuthSuccessStatusMapper? _instance;
  static AuthSuccessStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthSuccessStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AuthSuccessStatus';

  static bool _$isLoading(AuthSuccessStatus v) => v.isLoading;
  static const Field<AuthSuccessStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(AuthSuccessStatus v) => v.errorMessage;
  static const Field<AuthSuccessStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(AuthSuccessStatus v) => v.isInitialized;
  static const Field<AuthSuccessStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: true);

  @override
  final MappableFields<AuthSuccessStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static AuthSuccessStatus _instantiate(DecodingData data) {
    return AuthSuccessStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin AuthSuccessStatusMappable {
  AuthSuccessStatusCopyWith<AuthSuccessStatus, AuthSuccessStatus,
          AuthSuccessStatus>
      get copyWith => _AuthSuccessStatusCopyWithImpl(
          this as AuthSuccessStatus, $identity, $identity);
  @override
  String toString() {
    return AuthSuccessStatusMapper.ensureInitialized()
        .stringifyValue(this as AuthSuccessStatus);
  }

  @override
  bool operator ==(Object other) {
    return AuthSuccessStatusMapper.ensureInitialized()
        .equalsValue(this as AuthSuccessStatus, other);
  }

  @override
  int get hashCode {
    return AuthSuccessStatusMapper.ensureInitialized()
        .hashValue(this as AuthSuccessStatus);
  }
}

extension AuthSuccessStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthSuccessStatus, $Out> {
  AuthSuccessStatusCopyWith<$R, AuthSuccessStatus, $Out>
      get $asAuthSuccessStatus =>
          $base.as((v, t, t2) => _AuthSuccessStatusCopyWithImpl(v, t, t2));
}

abstract class AuthSuccessStatusCopyWith<$R, $In extends AuthSuccessStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  AuthSuccessStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AuthSuccessStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthSuccessStatus, $Out>
    implements AuthSuccessStatusCopyWith<$R, AuthSuccessStatus, $Out> {
  _AuthSuccessStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthSuccessStatus> $mapper =
      AuthSuccessStatusMapper.ensureInitialized();
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
  AuthSuccessStatus $make(CopyWithData data) => AuthSuccessStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  AuthSuccessStatusCopyWith<$R2, AuthSuccessStatus, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AuthSuccessStatusCopyWithImpl($value, $cast, t);
}
