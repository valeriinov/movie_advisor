// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'reg_data_dto.dart';

class RegDataDtoMapper extends ClassMapperBase<RegDataDto> {
  RegDataDtoMapper._();

  static RegDataDtoMapper? _instance;
  static RegDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RegDataDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RegDataDto';

  static String? _$email(RegDataDto v) => v.email;
  static const Field<RegDataDto, String> _f$email = Field(
    'email',
    _$email,
    opt: true,
  );
  static String? _$password(RegDataDto v) => v.password;
  static const Field<RegDataDto, String> _f$password = Field(
    'password',
    _$password,
    opt: true,
  );

  @override
  final MappableFields<RegDataDto> fields = const {
    #email: _f$email,
    #password: _f$password,
  };
  @override
  final bool ignoreNull = true;

  static RegDataDto _instantiate(DecodingData data) {
    return RegDataDto(
      email: data.dec(_f$email),
      password: data.dec(_f$password),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RegDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RegDataDto>(map);
  }

  static RegDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<RegDataDto>(json);
  }
}

mixin RegDataDtoMappable {
  String toJsonString() {
    return RegDataDtoMapper.ensureInitialized().encodeJson<RegDataDto>(
      this as RegDataDto,
    );
  }

  Map<String, dynamic> toJson() {
    return RegDataDtoMapper.ensureInitialized().encodeMap<RegDataDto>(
      this as RegDataDto,
    );
  }

  RegDataDtoCopyWith<RegDataDto, RegDataDto, RegDataDto> get copyWith =>
      _RegDataDtoCopyWithImpl<RegDataDto, RegDataDto>(
        this as RegDataDto,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RegDataDtoMapper.ensureInitialized().stringifyValue(
      this as RegDataDto,
    );
  }

  @override
  bool operator ==(Object other) {
    return RegDataDtoMapper.ensureInitialized().equalsValue(
      this as RegDataDto,
      other,
    );
  }

  @override
  int get hashCode {
    return RegDataDtoMapper.ensureInitialized().hashValue(this as RegDataDto);
  }
}

extension RegDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RegDataDto, $Out> {
  RegDataDtoCopyWith<$R, RegDataDto, $Out> get $asRegDataDto =>
      $base.as((v, t, t2) => _RegDataDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RegDataDtoCopyWith<$R, $In extends RegDataDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? email, String? password});
  RegDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RegDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RegDataDto, $Out>
    implements RegDataDtoCopyWith<$R, RegDataDto, $Out> {
  _RegDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RegDataDto> $mapper =
      RegDataDtoMapper.ensureInitialized();
  @override
  $R call({Object? email = $none, Object? password = $none}) => $apply(
    FieldCopyWithData({
      if (email != $none) #email: email,
      if (password != $none) #password: password,
    }),
  );
  @override
  RegDataDto $make(CopyWithData data) => RegDataDto(
    email: data.get(#email, or: $value.email),
    password: data.get(#password, or: $value.password),
  );

  @override
  RegDataDtoCopyWith<$R2, RegDataDto, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RegDataDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
