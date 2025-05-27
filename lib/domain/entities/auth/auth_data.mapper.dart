// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'auth_data.dart';

class AuthDataMapper extends ClassMapperBase<AuthData> {
  AuthDataMapper._();

  static AuthDataMapper? _instance;
  static AuthDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthDataMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AuthData';

  static String _$email(AuthData v) => v.email;
  static const Field<AuthData, String> _f$email =
      Field('email', _$email, opt: true, def: '');
  static String _$password(AuthData v) => v.password;
  static const Field<AuthData, String> _f$password =
      Field('password', _$password, opt: true, def: '');

  @override
  final MappableFields<AuthData> fields = const {
    #email: _f$email,
    #password: _f$password,
  };

  static AuthData _instantiate(DecodingData data) {
    return AuthData(email: data.dec(_f$email), password: data.dec(_f$password));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin AuthDataMappable {
  AuthDataCopyWith<AuthData, AuthData, AuthData> get copyWith =>
      _AuthDataCopyWithImpl<AuthData, AuthData>(
          this as AuthData, $identity, $identity);
  @override
  String toString() {
    return AuthDataMapper.ensureInitialized().stringifyValue(this as AuthData);
  }

  @override
  bool operator ==(Object other) {
    return AuthDataMapper.ensureInitialized()
        .equalsValue(this as AuthData, other);
  }

  @override
  int get hashCode {
    return AuthDataMapper.ensureInitialized().hashValue(this as AuthData);
  }
}

extension AuthDataValueCopy<$R, $Out> on ObjectCopyWith<$R, AuthData, $Out> {
  AuthDataCopyWith<$R, AuthData, $Out> get $asAuthData =>
      $base.as((v, t, t2) => _AuthDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class AuthDataCopyWith<$R, $In extends AuthData, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? email, String? password});
  AuthDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AuthDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthData, $Out>
    implements AuthDataCopyWith<$R, AuthData, $Out> {
  _AuthDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthData> $mapper =
      AuthDataMapper.ensureInitialized();
  @override
  $R call({String? email, String? password}) => $apply(FieldCopyWithData({
        if (email != null) #email: email,
        if (password != null) #password: password
      }));
  @override
  AuthData $make(CopyWithData data) => AuthData(
      email: data.get(#email, or: $value.email),
      password: data.get(#password, or: $value.password));

  @override
  AuthDataCopyWith<$R2, AuthData, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AuthDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
