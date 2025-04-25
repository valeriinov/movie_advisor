// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'person_data.dart';

class PersonDataMapper extends ClassMapperBase<PersonData> {
  PersonDataMapper._();

  static PersonDataMapper? _instance;
  static PersonDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PersonDataMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PersonData';

  static int _$id(PersonData v) => v.id;
  static const Field<PersonData, int> _f$id =
      Field('id', _$id, opt: true, def: -1);
  static String _$name(PersonData v) => v.name;
  static const Field<PersonData, String> _f$name =
      Field('name', _$name, opt: true, def: '');
  static String _$profilePath(PersonData v) => v.profilePath;
  static const Field<PersonData, String> _f$profilePath =
      Field('profilePath', _$profilePath, opt: true, def: '');
  static String _$placeOfBirth(PersonData v) => v.placeOfBirth;
  static const Field<PersonData, String> _f$placeOfBirth =
      Field('placeOfBirth', _$placeOfBirth, opt: true, def: '');
  static String _$biography(PersonData v) => v.biography;
  static const Field<PersonData, String> _f$biography =
      Field('biography', _$biography, opt: true, def: '');
  static DateTime? _$birthday(PersonData v) => v.birthday;
  static const Field<PersonData, DateTime> _f$birthday =
      Field('birthday', _$birthday, opt: true);
  static DateTime? _$deathDay(PersonData v) => v.deathDay;
  static const Field<PersonData, DateTime> _f$deathDay =
      Field('deathDay', _$deathDay, opt: true);

  @override
  final MappableFields<PersonData> fields = const {
    #id: _f$id,
    #name: _f$name,
    #profilePath: _f$profilePath,
    #placeOfBirth: _f$placeOfBirth,
    #biography: _f$biography,
    #birthday: _f$birthday,
    #deathDay: _f$deathDay,
  };

  static PersonData _instantiate(DecodingData data) {
    return PersonData(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        profilePath: data.dec(_f$profilePath),
        placeOfBirth: data.dec(_f$placeOfBirth),
        biography: data.dec(_f$biography),
        birthday: data.dec(_f$birthday),
        deathDay: data.dec(_f$deathDay));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin PersonDataMappable {
  PersonDataCopyWith<PersonData, PersonData, PersonData> get copyWith =>
      _PersonDataCopyWithImpl<PersonData, PersonData>(
          this as PersonData, $identity, $identity);
  @override
  String toString() {
    return PersonDataMapper.ensureInitialized()
        .stringifyValue(this as PersonData);
  }

  @override
  bool operator ==(Object other) {
    return PersonDataMapper.ensureInitialized()
        .equalsValue(this as PersonData, other);
  }

  @override
  int get hashCode {
    return PersonDataMapper.ensureInitialized().hashValue(this as PersonData);
  }
}

extension PersonDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PersonData, $Out> {
  PersonDataCopyWith<$R, PersonData, $Out> get $asPersonData =>
      $base.as((v, t, t2) => _PersonDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PersonDataCopyWith<$R, $In extends PersonData, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? id,
      String? name,
      String? profilePath,
      String? placeOfBirth,
      String? biography,
      DateTime? birthday,
      DateTime? deathDay});
  PersonDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PersonDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PersonData, $Out>
    implements PersonDataCopyWith<$R, PersonData, $Out> {
  _PersonDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PersonData> $mapper =
      PersonDataMapper.ensureInitialized();
  @override
  $R call(
          {int? id,
          String? name,
          String? profilePath,
          String? placeOfBirth,
          String? biography,
          Object? birthday = $none,
          Object? deathDay = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (profilePath != null) #profilePath: profilePath,
        if (placeOfBirth != null) #placeOfBirth: placeOfBirth,
        if (biography != null) #biography: biography,
        if (birthday != $none) #birthday: birthday,
        if (deathDay != $none) #deathDay: deathDay
      }));
  @override
  PersonData $make(CopyWithData data) => PersonData(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      profilePath: data.get(#profilePath, or: $value.profilePath),
      placeOfBirth: data.get(#placeOfBirth, or: $value.placeOfBirth),
      biography: data.get(#biography, or: $value.biography),
      birthday: data.get(#birthday, or: $value.birthday),
      deathDay: data.get(#deathDay, or: $value.deathDay));

  @override
  PersonDataCopyWith<$R2, PersonData, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PersonDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
