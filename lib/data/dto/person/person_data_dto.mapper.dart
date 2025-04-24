// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'person_data_dto.dart';

class PersonDataDtoMapper extends ClassMapperBase<PersonDataDto> {
  PersonDataDtoMapper._();

  static PersonDataDtoMapper? _instance;
  static PersonDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PersonDataDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PersonDataDto';

  static int? _$id(PersonDataDto v) => v.id;
  static const Field<PersonDataDto, int> _f$id = Field('id', _$id, opt: true);
  static String? _$originalName(PersonDataDto v) => v.originalName;
  static const Field<PersonDataDto, String> _f$originalName =
      Field('originalName', _$originalName, key: r'original_name', opt: true);
  static String? _$profilePath(PersonDataDto v) => v.profilePath;
  static const Field<PersonDataDto, String> _f$profilePath =
      Field('profilePath', _$profilePath, key: r'profile_path', opt: true);
  static String? _$placeOfBirth(PersonDataDto v) => v.placeOfBirth;
  static const Field<PersonDataDto, String> _f$placeOfBirth =
      Field('placeOfBirth', _$placeOfBirth, key: r'place_of_birth', opt: true);
  static String? _$biography(PersonDataDto v) => v.biography;
  static const Field<PersonDataDto, String> _f$biography =
      Field('biography', _$biography, opt: true);
  static DateTime? _$birthday(PersonDataDto v) => v.birthday;
  static const Field<PersonDataDto, DateTime> _f$birthday =
      Field('birthday', _$birthday);
  static DateTime? _$deathDay(PersonDataDto v) => v.deathDay;
  static const Field<PersonDataDto, DateTime> _f$deathDay =
      Field('deathDay', _$deathDay, key: r'death_day', opt: true);

  @override
  final MappableFields<PersonDataDto> fields = const {
    #id: _f$id,
    #originalName: _f$originalName,
    #profilePath: _f$profilePath,
    #placeOfBirth: _f$placeOfBirth,
    #biography: _f$biography,
    #birthday: _f$birthday,
    #deathDay: _f$deathDay,
  };
  @override
  final bool ignoreNull = true;

  static PersonDataDto _instantiate(DecodingData data) {
    return PersonDataDto(
        id: data.dec(_f$id),
        originalName: data.dec(_f$originalName),
        profilePath: data.dec(_f$profilePath),
        placeOfBirth: data.dec(_f$placeOfBirth),
        biography: data.dec(_f$biography),
        birthday: data.dec(_f$birthday),
        deathDay: data.dec(_f$deathDay));
  }

  @override
  final Function instantiate = _instantiate;

  static PersonDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PersonDataDto>(map);
  }

  static PersonDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<PersonDataDto>(json);
  }
}

mixin PersonDataDtoMappable {
  String toJsonString() {
    return PersonDataDtoMapper.ensureInitialized()
        .encodeJson<PersonDataDto>(this as PersonDataDto);
  }

  Map<String, dynamic> toJson() {
    return PersonDataDtoMapper.ensureInitialized()
        .encodeMap<PersonDataDto>(this as PersonDataDto);
  }

  PersonDataDtoCopyWith<PersonDataDto, PersonDataDto, PersonDataDto>
      get copyWith => _PersonDataDtoCopyWithImpl<PersonDataDto, PersonDataDto>(
          this as PersonDataDto, $identity, $identity);
  @override
  String toString() {
    return PersonDataDtoMapper.ensureInitialized()
        .stringifyValue(this as PersonDataDto);
  }

  @override
  bool operator ==(Object other) {
    return PersonDataDtoMapper.ensureInitialized()
        .equalsValue(this as PersonDataDto, other);
  }

  @override
  int get hashCode {
    return PersonDataDtoMapper.ensureInitialized()
        .hashValue(this as PersonDataDto);
  }
}

extension PersonDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PersonDataDto, $Out> {
  PersonDataDtoCopyWith<$R, PersonDataDto, $Out> get $asPersonDataDto =>
      $base.as((v, t, t2) => _PersonDataDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PersonDataDtoCopyWith<$R, $In extends PersonDataDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? id,
      String? originalName,
      String? profilePath,
      String? placeOfBirth,
      String? biography,
      DateTime? birthday,
      DateTime? deathDay});
  PersonDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PersonDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PersonDataDto, $Out>
    implements PersonDataDtoCopyWith<$R, PersonDataDto, $Out> {
  _PersonDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PersonDataDto> $mapper =
      PersonDataDtoMapper.ensureInitialized();
  @override
  $R call(
          {Object? id = $none,
          Object? originalName = $none,
          Object? profilePath = $none,
          Object? placeOfBirth = $none,
          Object? biography = $none,
          Object? birthday = $none,
          Object? deathDay = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (originalName != $none) #originalName: originalName,
        if (profilePath != $none) #profilePath: profilePath,
        if (placeOfBirth != $none) #placeOfBirth: placeOfBirth,
        if (biography != $none) #biography: biography,
        if (birthday != $none) #birthday: birthday,
        if (deathDay != $none) #deathDay: deathDay
      }));
  @override
  PersonDataDto $make(CopyWithData data) => PersonDataDto(
      id: data.get(#id, or: $value.id),
      originalName: data.get(#originalName, or: $value.originalName),
      profilePath: data.get(#profilePath, or: $value.profilePath),
      placeOfBirth: data.get(#placeOfBirth, or: $value.placeOfBirth),
      biography: data.get(#biography, or: $value.biography),
      birthday: data.get(#birthday, or: $value.birthday),
      deathDay: data.get(#deathDay, or: $value.deathDay));

  @override
  PersonDataDtoCopyWith<$R2, PersonDataDto, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PersonDataDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
