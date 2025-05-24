// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'person_credits_data_dto.dart';

class PersonCreditsDataDtoMapper extends ClassMapperBase<PersonCreditsDataDto> {
  PersonCreditsDataDtoMapper._();

  static PersonCreditsDataDtoMapper? _instance;
  static PersonCreditsDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PersonCreditsDataDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PersonCreditsDataDto';
  @override
  Function get typeFactory =>
      <T>(f) => f<PersonCreditsDataDto<T>>();

  static List<dynamic>? _$cast(PersonCreditsDataDto v) => v.cast;
  static dynamic _arg$cast<T>(f) => f<List<T>>();
  static const Field<PersonCreditsDataDto, List<dynamic>> _f$cast = Field(
    'cast',
    _$cast,
    opt: true,
    arg: _arg$cast,
  );
  static List<dynamic>? _$crew(PersonCreditsDataDto v) => v.crew;
  static dynamic _arg$crew<T>(f) => f<List<T>>();
  static const Field<PersonCreditsDataDto, List<dynamic>> _f$crew = Field(
    'crew',
    _$crew,
    opt: true,
    arg: _arg$crew,
  );

  @override
  final MappableFields<PersonCreditsDataDto> fields = const {
    #cast: _f$cast,
    #crew: _f$crew,
  };
  @override
  final bool ignoreNull = true;

  static PersonCreditsDataDto<T> _instantiate<T>(DecodingData data) {
    return PersonCreditsDataDto(
      cast: data.dec(_f$cast),
      crew: data.dec(_f$crew),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PersonCreditsDataDto<T> fromJson<T>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PersonCreditsDataDto<T>>(map);
  }

  static PersonCreditsDataDto<T> fromJsonString<T>(String json) {
    return ensureInitialized().decodeJson<PersonCreditsDataDto<T>>(json);
  }
}

mixin PersonCreditsDataDtoMappable<T> {
  String toJsonString() {
    return PersonCreditsDataDtoMapper.ensureInitialized()
        .encodeJson<PersonCreditsDataDto<T>>(this as PersonCreditsDataDto<T>);
  }

  Map<String, dynamic> toJson() {
    return PersonCreditsDataDtoMapper.ensureInitialized()
        .encodeMap<PersonCreditsDataDto<T>>(this as PersonCreditsDataDto<T>);
  }

  PersonCreditsDataDtoCopyWith<
    PersonCreditsDataDto<T>,
    PersonCreditsDataDto<T>,
    PersonCreditsDataDto<T>,
    T
  >
  get copyWith =>
      _PersonCreditsDataDtoCopyWithImpl<
        PersonCreditsDataDto<T>,
        PersonCreditsDataDto<T>,
        T
      >(this as PersonCreditsDataDto<T>, $identity, $identity);
  @override
  String toString() {
    return PersonCreditsDataDtoMapper.ensureInitialized().stringifyValue(
      this as PersonCreditsDataDto<T>,
    );
  }

  @override
  bool operator ==(Object other) {
    return PersonCreditsDataDtoMapper.ensureInitialized().equalsValue(
      this as PersonCreditsDataDto<T>,
      other,
    );
  }

  @override
  int get hashCode {
    return PersonCreditsDataDtoMapper.ensureInitialized().hashValue(
      this as PersonCreditsDataDto<T>,
    );
  }
}

extension PersonCreditsDataDtoValueCopy<$R, $Out, T>
    on ObjectCopyWith<$R, PersonCreditsDataDto<T>, $Out> {
  PersonCreditsDataDtoCopyWith<$R, PersonCreditsDataDto<T>, $Out, T>
  get $asPersonCreditsDataDto => $base.as(
    (v, t, t2) => _PersonCreditsDataDtoCopyWithImpl<$R, $Out, T>(v, t, t2),
  );
}

abstract class PersonCreditsDataDtoCopyWith<
  $R,
  $In extends PersonCreditsDataDto<T>,
  $Out,
  T
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, T, ObjectCopyWith<$R, T, T>>? get cast;
  ListCopyWith<$R, T, ObjectCopyWith<$R, T, T>>? get crew;
  $R call({List<T>? cast, List<T>? crew});
  PersonCreditsDataDtoCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PersonCreditsDataDtoCopyWithImpl<$R, $Out, T>
    extends ClassCopyWithBase<$R, PersonCreditsDataDto<T>, $Out>
    implements
        PersonCreditsDataDtoCopyWith<$R, PersonCreditsDataDto<T>, $Out, T> {
  _PersonCreditsDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PersonCreditsDataDto> $mapper =
      PersonCreditsDataDtoMapper.ensureInitialized();
  @override
  ListCopyWith<$R, T, ObjectCopyWith<$R, T, T>>? get cast => $value.cast != null
      ? ListCopyWith(
          $value.cast!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(cast: v),
        )
      : null;
  @override
  ListCopyWith<$R, T, ObjectCopyWith<$R, T, T>>? get crew => $value.crew != null
      ? ListCopyWith(
          $value.crew!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(crew: v),
        )
      : null;
  @override
  $R call({Object? cast = $none, Object? crew = $none}) => $apply(
    FieldCopyWithData({
      if (cast != $none) #cast: cast,
      if (crew != $none) #crew: crew,
    }),
  );
  @override
  PersonCreditsDataDto<T> $make(CopyWithData data) => PersonCreditsDataDto(
    cast: data.get(#cast, or: $value.cast),
    crew: data.get(#crew, or: $value.crew),
  );

  @override
  PersonCreditsDataDtoCopyWith<$R2, PersonCreditsDataDto<T>, $Out2, T>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _PersonCreditsDataDtoCopyWithImpl<$R2, $Out2, T>($value, $cast, t);
}
