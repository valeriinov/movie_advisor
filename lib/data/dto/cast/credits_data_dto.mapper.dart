// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'credits_data_dto.dart';

class CreditsDataDtoMapper extends ClassMapperBase<CreditsDataDto> {
  CreditsDataDtoMapper._();

  static CreditsDataDtoMapper? _instance;
  static CreditsDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CreditsDataDtoMapper._());
      CastDataDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CreditsDataDto';

  static List<CastDataDto>? _$cast(CreditsDataDto v) => v.cast;
  static const Field<CreditsDataDto, List<CastDataDto>> _f$cast =
      Field('cast', _$cast, opt: true);

  @override
  final MappableFields<CreditsDataDto> fields = const {
    #cast: _f$cast,
  };
  @override
  final bool ignoreNull = true;

  static CreditsDataDto _instantiate(DecodingData data) {
    return CreditsDataDto(cast: data.dec(_f$cast));
  }

  @override
  final Function instantiate = _instantiate;

  static CreditsDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CreditsDataDto>(map);
  }

  static CreditsDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<CreditsDataDto>(json);
  }
}

mixin CreditsDataDtoMappable {
  String toJsonString() {
    return CreditsDataDtoMapper.ensureInitialized()
        .encodeJson<CreditsDataDto>(this as CreditsDataDto);
  }

  Map<String, dynamic> toJson() {
    return CreditsDataDtoMapper.ensureInitialized()
        .encodeMap<CreditsDataDto>(this as CreditsDataDto);
  }

  CreditsDataDtoCopyWith<CreditsDataDto, CreditsDataDto, CreditsDataDto>
      get copyWith =>
          _CreditsDataDtoCopyWithImpl<CreditsDataDto, CreditsDataDto>(
              this as CreditsDataDto, $identity, $identity);
  @override
  String toString() {
    return CreditsDataDtoMapper.ensureInitialized()
        .stringifyValue(this as CreditsDataDto);
  }

  @override
  bool operator ==(Object other) {
    return CreditsDataDtoMapper.ensureInitialized()
        .equalsValue(this as CreditsDataDto, other);
  }

  @override
  int get hashCode {
    return CreditsDataDtoMapper.ensureInitialized()
        .hashValue(this as CreditsDataDto);
  }
}

extension CreditsDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CreditsDataDto, $Out> {
  CreditsDataDtoCopyWith<$R, CreditsDataDto, $Out> get $asCreditsDataDto =>
      $base.as((v, t, t2) => _CreditsDataDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CreditsDataDtoCopyWith<$R, $In extends CreditsDataDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, CastDataDto,
      CastDataDtoCopyWith<$R, CastDataDto, CastDataDto>>? get cast;
  $R call({List<CastDataDto>? cast});
  CreditsDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CreditsDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CreditsDataDto, $Out>
    implements CreditsDataDtoCopyWith<$R, CreditsDataDto, $Out> {
  _CreditsDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CreditsDataDto> $mapper =
      CreditsDataDtoMapper.ensureInitialized();
  @override
  ListCopyWith<$R, CastDataDto,
          CastDataDtoCopyWith<$R, CastDataDto, CastDataDto>>?
      get cast => $value.cast != null
          ? ListCopyWith($value.cast!, (v, t) => v.copyWith.$chain(t),
              (v) => call(cast: v))
          : null;
  @override
  $R call({Object? cast = $none}) =>
      $apply(FieldCopyWithData({if (cast != $none) #cast: cast}));
  @override
  CreditsDataDto $make(CopyWithData data) =>
      CreditsDataDto(cast: data.get(#cast, or: $value.cast));

  @override
  CreditsDataDtoCopyWith<$R2, CreditsDataDto, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CreditsDataDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
