// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'delete_account_data_dto.dart';

class DeleteAccountDataDtoMapper extends ClassMapperBase<DeleteAccountDataDto> {
  DeleteAccountDataDtoMapper._();

  static DeleteAccountDataDtoMapper? _instance;
  static DeleteAccountDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DeleteAccountDataDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DeleteAccountDataDto';

  static String? _$password(DeleteAccountDataDto v) => v.password;
  static const Field<DeleteAccountDataDto, String> _f$password = Field(
    'password',
    _$password,
    opt: true,
  );

  @override
  final MappableFields<DeleteAccountDataDto> fields = const {
    #password: _f$password,
  };
  @override
  final bool ignoreNull = true;

  static DeleteAccountDataDto _instantiate(DecodingData data) {
    return DeleteAccountDataDto(password: data.dec(_f$password));
  }

  @override
  final Function instantiate = _instantiate;

  static DeleteAccountDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DeleteAccountDataDto>(map);
  }

  static DeleteAccountDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<DeleteAccountDataDto>(json);
  }
}

mixin DeleteAccountDataDtoMappable {
  String toJsonString() {
    return DeleteAccountDataDtoMapper.ensureInitialized()
        .encodeJson<DeleteAccountDataDto>(this as DeleteAccountDataDto);
  }

  Map<String, dynamic> toJson() {
    return DeleteAccountDataDtoMapper.ensureInitialized()
        .encodeMap<DeleteAccountDataDto>(this as DeleteAccountDataDto);
  }

  DeleteAccountDataDtoCopyWith<
    DeleteAccountDataDto,
    DeleteAccountDataDto,
    DeleteAccountDataDto
  >
  get copyWith =>
      _DeleteAccountDataDtoCopyWithImpl<
        DeleteAccountDataDto,
        DeleteAccountDataDto
      >(this as DeleteAccountDataDto, $identity, $identity);
  @override
  String toString() {
    return DeleteAccountDataDtoMapper.ensureInitialized().stringifyValue(
      this as DeleteAccountDataDto,
    );
  }

  @override
  bool operator ==(Object other) {
    return DeleteAccountDataDtoMapper.ensureInitialized().equalsValue(
      this as DeleteAccountDataDto,
      other,
    );
  }

  @override
  int get hashCode {
    return DeleteAccountDataDtoMapper.ensureInitialized().hashValue(
      this as DeleteAccountDataDto,
    );
  }
}

extension DeleteAccountDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DeleteAccountDataDto, $Out> {
  DeleteAccountDataDtoCopyWith<$R, DeleteAccountDataDto, $Out>
  get $asDeleteAccountDataDto => $base.as(
    (v, t, t2) => _DeleteAccountDataDtoCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class DeleteAccountDataDtoCopyWith<
  $R,
  $In extends DeleteAccountDataDto,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? password});
  DeleteAccountDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _DeleteAccountDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DeleteAccountDataDto, $Out>
    implements DeleteAccountDataDtoCopyWith<$R, DeleteAccountDataDto, $Out> {
  _DeleteAccountDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DeleteAccountDataDto> $mapper =
      DeleteAccountDataDtoMapper.ensureInitialized();
  @override
  $R call({Object? password = $none}) =>
      $apply(FieldCopyWithData({if (password != $none) #password: password}));
  @override
  DeleteAccountDataDto $make(CopyWithData data) =>
      DeleteAccountDataDto(password: data.get(#password, or: $value.password));

  @override
  DeleteAccountDataDtoCopyWith<$R2, DeleteAccountDataDto, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _DeleteAccountDataDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
