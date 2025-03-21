// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'cast_data_dto.dart';

class CastDataDtoMapper extends ClassMapperBase<CastDataDto> {
  CastDataDtoMapper._();

  static CastDataDtoMapper? _instance;
  static CastDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CastDataDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CastDataDto';

  static int? _$id(CastDataDto v) => v.id;
  static const Field<CastDataDto, int> _f$id = Field('id', _$id, opt: true);
  static String? _$originalName(CastDataDto v) => v.originalName;
  static const Field<CastDataDto, String> _f$originalName =
      Field('originalName', _$originalName, key: r'original_name', opt: true);
  static String? _$profilePath(CastDataDto v) => v.profilePath;
  static const Field<CastDataDto, String> _f$profilePath =
      Field('profilePath', _$profilePath, key: r'profile_path', opt: true);
  static String? _$name(CastDataDto v) => v.name;
  static const Field<CastDataDto, String> _f$name =
      Field('name', _$name, opt: true);
  static String? _$character(CastDataDto v) => v.character;
  static const Field<CastDataDto, String> _f$character =
      Field('character', _$character, opt: true);

  @override
  final MappableFields<CastDataDto> fields = const {
    #id: _f$id,
    #originalName: _f$originalName,
    #profilePath: _f$profilePath,
    #name: _f$name,
    #character: _f$character,
  };
  @override
  final bool ignoreNull = true;

  static CastDataDto _instantiate(DecodingData data) {
    return CastDataDto(
        id: data.dec(_f$id),
        originalName: data.dec(_f$originalName),
        profilePath: data.dec(_f$profilePath),
        name: data.dec(_f$name),
        character: data.dec(_f$character));
  }

  @override
  final Function instantiate = _instantiate;

  static CastDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CastDataDto>(map);
  }

  static CastDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<CastDataDto>(json);
  }
}

mixin CastDataDtoMappable {
  String toJsonString() {
    return CastDataDtoMapper.ensureInitialized()
        .encodeJson<CastDataDto>(this as CastDataDto);
  }

  Map<String, dynamic> toJson() {
    return CastDataDtoMapper.ensureInitialized()
        .encodeMap<CastDataDto>(this as CastDataDto);
  }

  CastDataDtoCopyWith<CastDataDto, CastDataDto, CastDataDto> get copyWith =>
      _CastDataDtoCopyWithImpl<CastDataDto, CastDataDto>(
          this as CastDataDto, $identity, $identity);
  @override
  String toString() {
    return CastDataDtoMapper.ensureInitialized()
        .stringifyValue(this as CastDataDto);
  }

  @override
  bool operator ==(Object other) {
    return CastDataDtoMapper.ensureInitialized()
        .equalsValue(this as CastDataDto, other);
  }

  @override
  int get hashCode {
    return CastDataDtoMapper.ensureInitialized().hashValue(this as CastDataDto);
  }
}

extension CastDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CastDataDto, $Out> {
  CastDataDtoCopyWith<$R, CastDataDto, $Out> get $asCastDataDto =>
      $base.as((v, t, t2) => _CastDataDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CastDataDtoCopyWith<$R, $In extends CastDataDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? id,
      String? originalName,
      String? profilePath,
      String? name,
      String? character});
  CastDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CastDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CastDataDto, $Out>
    implements CastDataDtoCopyWith<$R, CastDataDto, $Out> {
  _CastDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CastDataDto> $mapper =
      CastDataDtoMapper.ensureInitialized();
  @override
  $R call(
          {Object? id = $none,
          Object? originalName = $none,
          Object? profilePath = $none,
          Object? name = $none,
          Object? character = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (originalName != $none) #originalName: originalName,
        if (profilePath != $none) #profilePath: profilePath,
        if (name != $none) #name: name,
        if (character != $none) #character: character
      }));
  @override
  CastDataDto $make(CopyWithData data) => CastDataDto(
      id: data.get(#id, or: $value.id),
      originalName: data.get(#originalName, or: $value.originalName),
      profilePath: data.get(#profilePath, or: $value.profilePath),
      name: data.get(#name, or: $value.name),
      character: data.get(#character, or: $value.character));

  @override
  CastDataDtoCopyWith<$R2, CastDataDto, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CastDataDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
