// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'auth_data_dto.dart';

class AuthDataDtoMapper extends ClassMapperBase<AuthDataDto> {
  AuthDataDtoMapper._();

  static AuthDataDtoMapper? _instance;
  static AuthDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthDataDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AuthDataDto';

  static String? _$email(AuthDataDto v) => v.email;
  static const Field<AuthDataDto, String> _f$email =
      Field('email', _$email, opt: true);
  static String? _$password(AuthDataDto v) => v.password;
  static const Field<AuthDataDto, String> _f$password =
      Field('password', _$password, opt: true);

  @override
  final MappableFields<AuthDataDto> fields = const {
    #email: _f$email,
    #password: _f$password,
  };
  @override
  final bool ignoreNull = true;

  static AuthDataDto _instantiate(DecodingData data) {
    return AuthDataDto(
        email: data.dec(_f$email), password: data.dec(_f$password));
  }

  @override
  final Function instantiate = _instantiate;

  static AuthDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AuthDataDto>(map);
  }

  static AuthDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<AuthDataDto>(json);
  }
}

mixin AuthDataDtoMappable {
  String toJsonString() {
    return AuthDataDtoMapper.ensureInitialized()
        .encodeJson<AuthDataDto>(this as AuthDataDto);
  }

  Map<String, dynamic> toJson() {
    return AuthDataDtoMapper.ensureInitialized()
        .encodeMap<AuthDataDto>(this as AuthDataDto);
  }

  AuthDataDtoCopyWith<AuthDataDto, AuthDataDto, AuthDataDto> get copyWith =>
      _AuthDataDtoCopyWithImpl<AuthDataDto, AuthDataDto>(
          this as AuthDataDto, $identity, $identity);
  @override
  String toString() {
    return AuthDataDtoMapper.ensureInitialized()
        .stringifyValue(this as AuthDataDto);
  }

  @override
  bool operator ==(Object other) {
    return AuthDataDtoMapper.ensureInitialized()
        .equalsValue(this as AuthDataDto, other);
  }

  @override
  int get hashCode {
    return AuthDataDtoMapper.ensureInitialized().hashValue(this as AuthDataDto);
  }
}

extension AuthDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthDataDto, $Out> {
  AuthDataDtoCopyWith<$R, AuthDataDto, $Out> get $asAuthDataDto =>
      $base.as((v, t, t2) => _AuthDataDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class AuthDataDtoCopyWith<$R, $In extends AuthDataDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? email, String? password});
  AuthDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AuthDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthDataDto, $Out>
    implements AuthDataDtoCopyWith<$R, AuthDataDto, $Out> {
  _AuthDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthDataDto> $mapper =
      AuthDataDtoMapper.ensureInitialized();
  @override
  $R call({Object? email = $none, Object? password = $none}) =>
      $apply(FieldCopyWithData({
        if (email != $none) #email: email,
        if (password != $none) #password: password
      }));
  @override
  AuthDataDto $make(CopyWithData data) => AuthDataDto(
      email: data.get(#email, or: $value.email),
      password: data.get(#password, or: $value.password));

  @override
  AuthDataDtoCopyWith<$R2, AuthDataDto, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AuthDataDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
