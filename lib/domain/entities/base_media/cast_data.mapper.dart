// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'cast_data.dart';

class CastDataMapper extends ClassMapperBase<CastData> {
  CastDataMapper._();

  static CastDataMapper? _instance;
  static CastDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CastDataMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CastData';

  static int _$id(CastData v) => v.id;
  static const Field<CastData, int> _f$id =
      Field('id', _$id, opt: true, def: -1);
  static String _$originalName(CastData v) => v.originalName;
  static const Field<CastData, String> _f$originalName =
      Field('originalName', _$originalName, opt: true, def: '');
  static String _$profilePath(CastData v) => v.profilePath;
  static const Field<CastData, String> _f$profilePath =
      Field('profilePath', _$profilePath, opt: true, def: '');
  static String _$name(CastData v) => v.name;
  static const Field<CastData, String> _f$name =
      Field('name', _$name, opt: true, def: '');
  static String _$character(CastData v) => v.character;
  static const Field<CastData, String> _f$character =
      Field('character', _$character, opt: true, def: '');

  @override
  final MappableFields<CastData> fields = const {
    #id: _f$id,
    #originalName: _f$originalName,
    #profilePath: _f$profilePath,
    #name: _f$name,
    #character: _f$character,
  };

  static CastData _instantiate(DecodingData data) {
    return CastData(
        id: data.dec(_f$id),
        originalName: data.dec(_f$originalName),
        profilePath: data.dec(_f$profilePath),
        name: data.dec(_f$name),
        character: data.dec(_f$character));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin CastDataMappable {
  CastDataCopyWith<CastData, CastData, CastData> get copyWith =>
      _CastDataCopyWithImpl(this as CastData, $identity, $identity);
  @override
  String toString() {
    return CastDataMapper.ensureInitialized().stringifyValue(this as CastData);
  }

  @override
  bool operator ==(Object other) {
    return CastDataMapper.ensureInitialized()
        .equalsValue(this as CastData, other);
  }

  @override
  int get hashCode {
    return CastDataMapper.ensureInitialized().hashValue(this as CastData);
  }
}

extension CastDataValueCopy<$R, $Out> on ObjectCopyWith<$R, CastData, $Out> {
  CastDataCopyWith<$R, CastData, $Out> get $asCastData =>
      $base.as((v, t, t2) => _CastDataCopyWithImpl(v, t, t2));
}

abstract class CastDataCopyWith<$R, $In extends CastData, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? id,
      String? originalName,
      String? profilePath,
      String? name,
      String? character});
  CastDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CastDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CastData, $Out>
    implements CastDataCopyWith<$R, CastData, $Out> {
  _CastDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CastData> $mapper =
      CastDataMapper.ensureInitialized();
  @override
  $R call(
          {int? id,
          String? originalName,
          String? profilePath,
          String? name,
          String? character}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (originalName != null) #originalName: originalName,
        if (profilePath != null) #profilePath: profilePath,
        if (name != null) #name: name,
        if (character != null) #character: character
      }));
  @override
  CastData $make(CopyWithData data) => CastData(
      id: data.get(#id, or: $value.id),
      originalName: data.get(#originalName, or: $value.originalName),
      profilePath: data.get(#profilePath, or: $value.profilePath),
      name: data.get(#name, or: $value.name),
      character: data.get(#character, or: $value.character));

  @override
  CastDataCopyWith<$R2, CastData, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CastDataCopyWithImpl($value, $cast, t);
}
