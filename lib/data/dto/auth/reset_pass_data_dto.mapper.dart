// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'reset_pass_data_dto.dart';

class ResetPassDataDtoMapper extends ClassMapperBase<ResetPassDataDto> {
  ResetPassDataDtoMapper._();

  static ResetPassDataDtoMapper? _instance;
  static ResetPassDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ResetPassDataDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ResetPassDataDto';

  static String? _$email(ResetPassDataDto v) => v.email;
  static const Field<ResetPassDataDto, String> _f$email = Field(
    'email',
    _$email,
    opt: true,
  );

  @override
  final MappableFields<ResetPassDataDto> fields = const {#email: _f$email};
  @override
  final bool ignoreNull = true;

  static ResetPassDataDto _instantiate(DecodingData data) {
    return ResetPassDataDto(email: data.dec(_f$email));
  }

  @override
  final Function instantiate = _instantiate;

  static ResetPassDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ResetPassDataDto>(map);
  }

  static ResetPassDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<ResetPassDataDto>(json);
  }
}

mixin ResetPassDataDtoMappable {
  String toJsonString() {
    return ResetPassDataDtoMapper.ensureInitialized()
        .encodeJson<ResetPassDataDto>(this as ResetPassDataDto);
  }

  Map<String, dynamic> toJson() {
    return ResetPassDataDtoMapper.ensureInitialized()
        .encodeMap<ResetPassDataDto>(this as ResetPassDataDto);
  }

  ResetPassDataDtoCopyWith<ResetPassDataDto, ResetPassDataDto, ResetPassDataDto>
  get copyWith =>
      _ResetPassDataDtoCopyWithImpl<ResetPassDataDto, ResetPassDataDto>(
        this as ResetPassDataDto,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ResetPassDataDtoMapper.ensureInitialized().stringifyValue(
      this as ResetPassDataDto,
    );
  }

  @override
  bool operator ==(Object other) {
    return ResetPassDataDtoMapper.ensureInitialized().equalsValue(
      this as ResetPassDataDto,
      other,
    );
  }

  @override
  int get hashCode {
    return ResetPassDataDtoMapper.ensureInitialized().hashValue(
      this as ResetPassDataDto,
    );
  }
}

extension ResetPassDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ResetPassDataDto, $Out> {
  ResetPassDataDtoCopyWith<$R, ResetPassDataDto, $Out>
  get $asResetPassDataDto =>
      $base.as((v, t, t2) => _ResetPassDataDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ResetPassDataDtoCopyWith<$R, $In extends ResetPassDataDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? email});
  ResetPassDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ResetPassDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ResetPassDataDto, $Out>
    implements ResetPassDataDtoCopyWith<$R, ResetPassDataDto, $Out> {
  _ResetPassDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ResetPassDataDto> $mapper =
      ResetPassDataDtoMapper.ensureInitialized();
  @override
  $R call({Object? email = $none}) =>
      $apply(FieldCopyWithData({if (email != $none) #email: email}));
  @override
  ResetPassDataDto $make(CopyWithData data) =>
      ResetPassDataDto(email: data.get(#email, or: $value.email));

  @override
  ResetPassDataDtoCopyWith<$R2, ResetPassDataDto, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ResetPassDataDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
