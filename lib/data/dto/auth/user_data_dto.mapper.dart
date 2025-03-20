// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user_data_dto.dart';

class UserDataDtoMapper extends ClassMapperBase<UserDataDto> {
  UserDataDtoMapper._();

  static UserDataDtoMapper? _instance;
  static UserDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserDataDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'UserDataDto';

  static String? _$id(UserDataDto v) => v.id;
  static const Field<UserDataDto, String> _f$id = Field('id', _$id, opt: true);
  static String? _$email(UserDataDto v) => v.email;
  static const Field<UserDataDto, String> _f$email =
      Field('email', _$email, opt: true);

  @override
  final MappableFields<UserDataDto> fields = const {
    #id: _f$id,
    #email: _f$email,
  };
  @override
  final bool ignoreNull = true;

  static UserDataDto _instantiate(DecodingData data) {
    return UserDataDto(id: data.dec(_f$id), email: data.dec(_f$email));
  }

  @override
  final Function instantiate = _instantiate;

  static UserDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserDataDto>(map);
  }

  static UserDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<UserDataDto>(json);
  }
}

mixin UserDataDtoMappable {
  String toJsonString() {
    return UserDataDtoMapper.ensureInitialized()
        .encodeJson<UserDataDto>(this as UserDataDto);
  }

  Map<String, dynamic> toJson() {
    return UserDataDtoMapper.ensureInitialized()
        .encodeMap<UserDataDto>(this as UserDataDto);
  }

  UserDataDtoCopyWith<UserDataDto, UserDataDto, UserDataDto> get copyWith =>
      _UserDataDtoCopyWithImpl<UserDataDto, UserDataDto>(
          this as UserDataDto, $identity, $identity);
  @override
  String toString() {
    return UserDataDtoMapper.ensureInitialized()
        .stringifyValue(this as UserDataDto);
  }

  @override
  bool operator ==(Object other) {
    return UserDataDtoMapper.ensureInitialized()
        .equalsValue(this as UserDataDto, other);
  }

  @override
  int get hashCode {
    return UserDataDtoMapper.ensureInitialized().hashValue(this as UserDataDto);
  }
}

extension UserDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UserDataDto, $Out> {
  UserDataDtoCopyWith<$R, UserDataDto, $Out> get $asUserDataDto =>
      $base.as((v, t, t2) => _UserDataDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UserDataDtoCopyWith<$R, $In extends UserDataDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, String? email});
  UserDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserDataDto, $Out>
    implements UserDataDtoCopyWith<$R, UserDataDto, $Out> {
  _UserDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserDataDto> $mapper =
      UserDataDtoMapper.ensureInitialized();
  @override
  $R call({Object? id = $none, Object? email = $none}) =>
      $apply(FieldCopyWithData(
          {if (id != $none) #id: id, if (email != $none) #email: email}));
  @override
  UserDataDto $make(CopyWithData data) => UserDataDto(
      id: data.get(#id, or: $value.id),
      email: data.get(#email, or: $value.email));

  @override
  UserDataDtoCopyWith<$R2, UserDataDto, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UserDataDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
