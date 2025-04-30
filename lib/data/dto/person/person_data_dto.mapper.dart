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
      GenderDtoMapper.ensureInitialized();
      PersonCreditsDataDtoMapper.ensureInitialized();
      PersonMovCredDataDtoMapper.ensureInitialized();
      PersonSerCredDataDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PersonDataDto';

  static int? _$id(PersonDataDto v) => v.id;
  static const Field<PersonDataDto, int> _f$id = Field('id', _$id, opt: true);
  static String? _$name(PersonDataDto v) => v.name;
  static const Field<PersonDataDto, String> _f$name =
      Field('name', _$name, opt: true);
  static String? _$profilePath(PersonDataDto v) => v.profilePath;
  static const Field<PersonDataDto, String> _f$profilePath =
      Field('profilePath', _$profilePath, key: r'profile_path', opt: true);
  static String? _$placeOfBirth(PersonDataDto v) => v.placeOfBirth;
  static const Field<PersonDataDto, String> _f$placeOfBirth =
      Field('placeOfBirth', _$placeOfBirth, key: r'place_of_birth', opt: true);
  static GenderDto? _$gender(PersonDataDto v) => v.gender;
  static const Field<PersonDataDto, GenderDto> _f$gender =
      Field('gender', _$gender, opt: true);
  static String? _$biography(PersonDataDto v) => v.biography;
  static const Field<PersonDataDto, String> _f$biography =
      Field('biography', _$biography, opt: true);
  static DateTime? _$birthday(PersonDataDto v) => v.birthday;
  static const Field<PersonDataDto, DateTime> _f$birthday =
      Field('birthday', _$birthday, opt: true, hook: DateMapperHook());
  static DateTime? _$deathDay(PersonDataDto v) => v.deathDay;
  static const Field<PersonDataDto, DateTime> _f$deathDay = Field(
      'deathDay', _$deathDay,
      key: r'deathday', opt: true, hook: DateMapperHook());
  static PersonCreditsDataDto<PersonMovCredDataDto>? _$movieCredits(
          PersonDataDto v) =>
      v.movieCredits;
  static const Field<PersonDataDto, PersonCreditsDataDto<PersonMovCredDataDto>>
      _f$movieCredits =
      Field('movieCredits', _$movieCredits, key: r'movie_credits', opt: true);
  static PersonCreditsDataDto<PersonSerCredDataDto>? _$seriesCredits(
          PersonDataDto v) =>
      v.seriesCredits;
  static const Field<PersonDataDto, PersonCreditsDataDto<PersonSerCredDataDto>>
      _f$seriesCredits = Field('seriesCredits', _$seriesCredits,
          key: r'series_credits', opt: true);

  @override
  final MappableFields<PersonDataDto> fields = const {
    #id: _f$id,
    #name: _f$name,
    #profilePath: _f$profilePath,
    #placeOfBirth: _f$placeOfBirth,
    #gender: _f$gender,
    #biography: _f$biography,
    #birthday: _f$birthday,
    #deathDay: _f$deathDay,
    #movieCredits: _f$movieCredits,
    #seriesCredits: _f$seriesCredits,
  };
  @override
  final bool ignoreNull = true;

  static PersonDataDto _instantiate(DecodingData data) {
    return PersonDataDto(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        profilePath: data.dec(_f$profilePath),
        placeOfBirth: data.dec(_f$placeOfBirth),
        gender: data.dec(_f$gender),
        biography: data.dec(_f$biography),
        birthday: data.dec(_f$birthday),
        deathDay: data.dec(_f$deathDay),
        movieCredits: data.dec(_f$movieCredits),
        seriesCredits: data.dec(_f$seriesCredits));
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
  PersonCreditsDataDtoCopyWith<
      $R,
      PersonCreditsDataDto<PersonMovCredDataDto>,
      PersonCreditsDataDto<PersonMovCredDataDto>,
      PersonMovCredDataDto>? get movieCredits;
  PersonCreditsDataDtoCopyWith<
      $R,
      PersonCreditsDataDto<PersonSerCredDataDto>,
      PersonCreditsDataDto<PersonSerCredDataDto>,
      PersonSerCredDataDto>? get seriesCredits;
  $R call(
      {int? id,
      String? name,
      String? profilePath,
      String? placeOfBirth,
      GenderDto? gender,
      String? biography,
      DateTime? birthday,
      DateTime? deathDay,
      PersonCreditsDataDto<PersonMovCredDataDto>? movieCredits,
      PersonCreditsDataDto<PersonSerCredDataDto>? seriesCredits});
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
  PersonCreditsDataDtoCopyWith<$R, PersonCreditsDataDto<PersonMovCredDataDto>,
          PersonCreditsDataDto<PersonMovCredDataDto>, PersonMovCredDataDto>?
      get movieCredits =>
          $value.movieCredits?.copyWith.$chain((v) => call(movieCredits: v));
  @override
  PersonCreditsDataDtoCopyWith<$R, PersonCreditsDataDto<PersonSerCredDataDto>,
          PersonCreditsDataDto<PersonSerCredDataDto>, PersonSerCredDataDto>?
      get seriesCredits =>
          $value.seriesCredits?.copyWith.$chain((v) => call(seriesCredits: v));
  @override
  $R call(
          {Object? id = $none,
          Object? name = $none,
          Object? profilePath = $none,
          Object? placeOfBirth = $none,
          Object? gender = $none,
          Object? biography = $none,
          Object? birthday = $none,
          Object? deathDay = $none,
          Object? movieCredits = $none,
          Object? seriesCredits = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (name != $none) #name: name,
        if (profilePath != $none) #profilePath: profilePath,
        if (placeOfBirth != $none) #placeOfBirth: placeOfBirth,
        if (gender != $none) #gender: gender,
        if (biography != $none) #biography: biography,
        if (birthday != $none) #birthday: birthday,
        if (deathDay != $none) #deathDay: deathDay,
        if (movieCredits != $none) #movieCredits: movieCredits,
        if (seriesCredits != $none) #seriesCredits: seriesCredits
      }));
  @override
  PersonDataDto $make(CopyWithData data) => PersonDataDto(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      profilePath: data.get(#profilePath, or: $value.profilePath),
      placeOfBirth: data.get(#placeOfBirth, or: $value.placeOfBirth),
      gender: data.get(#gender, or: $value.gender),
      biography: data.get(#biography, or: $value.biography),
      birthday: data.get(#birthday, or: $value.birthday),
      deathDay: data.get(#deathDay, or: $value.deathDay),
      movieCredits: data.get(#movieCredits, or: $value.movieCredits),
      seriesCredits: data.get(#seriesCredits, or: $value.seriesCredits));

  @override
  PersonDataDtoCopyWith<$R2, PersonDataDto, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PersonDataDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
