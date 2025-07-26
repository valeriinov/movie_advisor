// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'set_pass_data_dto.dart';

class SetPassDataDtoMapper extends ClassMapperBase<SetPassDataDto> {
  SetPassDataDtoMapper._();

  static SetPassDataDtoMapper? _instance;
  static SetPassDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SetPassDataDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SetPassDataDto';

  static String? _$oobCode(SetPassDataDto v) => v.oobCode;
  static const Field<SetPassDataDto, String> _f$oobCode =
      Field('oobCode', _$oobCode, key: r'oob_code', opt: true);
  static String? _$password(SetPassDataDto v) => v.password;
  static const Field<SetPassDataDto, String> _f$password =
      Field('password', _$password, opt: true);

  @override
  final MappableFields<SetPassDataDto> fields = const {
    #oobCode: _f$oobCode,
    #password: _f$password,
  };
  @override
  final bool ignoreNull = true;

  static SetPassDataDto _instantiate(DecodingData data) {
    return SetPassDataDto(
        oobCode: data.dec(_f$oobCode), password: data.dec(_f$password));
  }

  @override
  final Function instantiate = _instantiate;

  static SetPassDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SetPassDataDto>(map);
  }

  static SetPassDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<SetPassDataDto>(json);
  }
}

mixin SetPassDataDtoMappable {
  String toJsonString() {
    return SetPassDataDtoMapper.ensureInitialized()
        .encodeJson<SetPassDataDto>(this as SetPassDataDto);
  }

  Map<String, dynamic> toJson() {
    return SetPassDataDtoMapper.ensureInitialized()
        .encodeMap<SetPassDataDto>(this as SetPassDataDto);
  }

  SetPassDataDtoCopyWith<SetPassDataDto, SetPassDataDto, SetPassDataDto>
      get copyWith =>
          _SetPassDataDtoCopyWithImpl<SetPassDataDto, SetPassDataDto>(
              this as SetPassDataDto, $identity, $identity);
  @override
  String toString() {
    return SetPassDataDtoMapper.ensureInitialized()
        .stringifyValue(this as SetPassDataDto);
  }

  @override
  bool operator ==(Object other) {
    return SetPassDataDtoMapper.ensureInitialized()
        .equalsValue(this as SetPassDataDto, other);
  }

  @override
  int get hashCode {
    return SetPassDataDtoMapper.ensureInitialized()
        .hashValue(this as SetPassDataDto);
  }
}

extension SetPassDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SetPassDataDto, $Out> {
  SetPassDataDtoCopyWith<$R, SetPassDataDto, $Out> get $asSetPassDataDto =>
      $base.as((v, t, t2) => _SetPassDataDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SetPassDataDtoCopyWith<$R, $In extends SetPassDataDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? oobCode, String? password});
  SetPassDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SetPassDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SetPassDataDto, $Out>
    implements SetPassDataDtoCopyWith<$R, SetPassDataDto, $Out> {
  _SetPassDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SetPassDataDto> $mapper =
      SetPassDataDtoMapper.ensureInitialized();
  @override
  $R call({Object? oobCode = $none, Object? password = $none}) =>
      $apply(FieldCopyWithData({
        if (oobCode != $none) #oobCode: oobCode,
        if (password != $none) #password: password
      }));
  @override
  SetPassDataDto $make(CopyWithData data) => SetPassDataDto(
      oobCode: data.get(#oobCode, or: $value.oobCode),
      password: data.get(#password, or: $value.password));

  @override
  SetPassDataDtoCopyWith<$R2, SetPassDataDto, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SetPassDataDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
