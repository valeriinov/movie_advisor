// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'auth_form_state.dart';

class AuthFormStateMapper extends ClassMapperBase<AuthFormState> {
  AuthFormStateMapper._();

  static AuthFormStateMapper? _instance;
  static AuthFormStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthFormStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AuthFormState';

  static String _$email(AuthFormState v) => v.email;
  static const Field<AuthFormState, String> _f$email =
      Field('email', _$email, opt: true, def: '');
  static String _$password(AuthFormState v) => v.password;
  static const Field<AuthFormState, String> _f$password =
      Field('password', _$password, opt: true, def: '');

  @override
  final MappableFields<AuthFormState> fields = const {
    #email: _f$email,
    #password: _f$password,
  };

  static AuthFormState _instantiate(DecodingData data) {
    return AuthFormState(
        email: data.dec(_f$email), password: data.dec(_f$password));
  }

  @override
  final Function instantiate = _instantiate;

  static AuthFormState fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AuthFormState>(map);
  }

  static AuthFormState fromJsonString(String json) {
    return ensureInitialized().decodeJson<AuthFormState>(json);
  }
}

mixin AuthFormStateMappable {
  String toJsonString() {
    return AuthFormStateMapper.ensureInitialized()
        .encodeJson<AuthFormState>(this as AuthFormState);
  }

  Map<String, dynamic> toJson() {
    return AuthFormStateMapper.ensureInitialized()
        .encodeMap<AuthFormState>(this as AuthFormState);
  }

  AuthFormStateCopyWith<AuthFormState, AuthFormState, AuthFormState>
      get copyWith => _AuthFormStateCopyWithImpl<AuthFormState, AuthFormState>(
          this as AuthFormState, $identity, $identity);
  @override
  String toString() {
    return AuthFormStateMapper.ensureInitialized()
        .stringifyValue(this as AuthFormState);
  }

  @override
  bool operator ==(Object other) {
    return AuthFormStateMapper.ensureInitialized()
        .equalsValue(this as AuthFormState, other);
  }

  @override
  int get hashCode {
    return AuthFormStateMapper.ensureInitialized()
        .hashValue(this as AuthFormState);
  }
}

extension AuthFormStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthFormState, $Out> {
  AuthFormStateCopyWith<$R, AuthFormState, $Out> get $asAuthFormState =>
      $base.as((v, t, t2) => _AuthFormStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class AuthFormStateCopyWith<$R, $In extends AuthFormState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? email, String? password});
  AuthFormStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AuthFormStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthFormState, $Out>
    implements AuthFormStateCopyWith<$R, AuthFormState, $Out> {
  _AuthFormStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthFormState> $mapper =
      AuthFormStateMapper.ensureInitialized();
  @override
  $R call({String? email, String? password}) => $apply(FieldCopyWithData({
        if (email != null) #email: email,
        if (password != null) #password: password
      }));
  @override
  AuthFormState $make(CopyWithData data) => AuthFormState(
      email: data.get(#email, or: $value.email),
      password: data.get(#password, or: $value.password));

  @override
  AuthFormStateCopyWith<$R2, AuthFormState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AuthFormStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
