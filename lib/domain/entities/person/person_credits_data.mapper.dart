// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'person_credits_data.dart';

class PersonCreditsDataMapper extends ClassMapperBase<PersonCreditsData> {
  PersonCreditsDataMapper._();

  static PersonCreditsDataMapper? _instance;
  static PersonCreditsDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PersonCreditsDataMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PersonCreditsData';
  @override
  Function get typeFactory =>
      <T>(f) => f<PersonCreditsData<T>>();

  static List<dynamic> _$cast(PersonCreditsData v) => v.cast;
  static dynamic _arg$cast<T>(f) => f<List<T>>();
  static const Field<PersonCreditsData, List<dynamic>> _f$cast = Field(
    'cast',
    _$cast,
    opt: true,
    def: const [],
    arg: _arg$cast,
  );
  static List<dynamic> _$crew(PersonCreditsData v) => v.crew;
  static dynamic _arg$crew<T>(f) => f<List<T>>();
  static const Field<PersonCreditsData, List<dynamic>> _f$crew = Field(
    'crew',
    _$crew,
    opt: true,
    def: const [],
    arg: _arg$crew,
  );

  @override
  final MappableFields<PersonCreditsData> fields = const {
    #cast: _f$cast,
    #crew: _f$crew,
  };

  static PersonCreditsData<T> _instantiate<T>(DecodingData data) {
    return PersonCreditsData(cast: data.dec(_f$cast), crew: data.dec(_f$crew));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin PersonCreditsDataMappable<T> {
  PersonCreditsDataCopyWith<
    PersonCreditsData<T>,
    PersonCreditsData<T>,
    PersonCreditsData<T>,
    T
  >
  get copyWith =>
      _PersonCreditsDataCopyWithImpl<
        PersonCreditsData<T>,
        PersonCreditsData<T>,
        T
      >(this as PersonCreditsData<T>, $identity, $identity);
  @override
  String toString() {
    return PersonCreditsDataMapper.ensureInitialized().stringifyValue(
      this as PersonCreditsData<T>,
    );
  }

  @override
  bool operator ==(Object other) {
    return PersonCreditsDataMapper.ensureInitialized().equalsValue(
      this as PersonCreditsData<T>,
      other,
    );
  }

  @override
  int get hashCode {
    return PersonCreditsDataMapper.ensureInitialized().hashValue(
      this as PersonCreditsData<T>,
    );
  }
}

extension PersonCreditsDataValueCopy<$R, $Out, T>
    on ObjectCopyWith<$R, PersonCreditsData<T>, $Out> {
  PersonCreditsDataCopyWith<$R, PersonCreditsData<T>, $Out, T>
  get $asPersonCreditsData => $base.as(
    (v, t, t2) => _PersonCreditsDataCopyWithImpl<$R, $Out, T>(v, t, t2),
  );
}

abstract class PersonCreditsDataCopyWith<
  $R,
  $In extends PersonCreditsData<T>,
  $Out,
  T
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, T, ObjectCopyWith<$R, T, T>> get cast;
  ListCopyWith<$R, T, ObjectCopyWith<$R, T, T>> get crew;
  $R call({List<T>? cast, List<T>? crew});
  PersonCreditsDataCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PersonCreditsDataCopyWithImpl<$R, $Out, T>
    extends ClassCopyWithBase<$R, PersonCreditsData<T>, $Out>
    implements PersonCreditsDataCopyWith<$R, PersonCreditsData<T>, $Out, T> {
  _PersonCreditsDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PersonCreditsData> $mapper =
      PersonCreditsDataMapper.ensureInitialized();
  @override
  ListCopyWith<$R, T, ObjectCopyWith<$R, T, T>> get cast => ListCopyWith(
    $value.cast,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(cast: v),
  );
  @override
  ListCopyWith<$R, T, ObjectCopyWith<$R, T, T>> get crew => ListCopyWith(
    $value.crew,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(crew: v),
  );
  @override
  $R call({List<T>? cast, List<T>? crew}) => $apply(
    FieldCopyWithData({
      if (cast != null) #cast: cast,
      if (crew != null) #crew: crew,
    }),
  );
  @override
  PersonCreditsData<T> $make(CopyWithData data) => PersonCreditsData(
    cast: data.get(#cast, or: $value.cast),
    crew: data.get(#crew, or: $value.crew),
  );

  @override
  PersonCreditsDataCopyWith<$R2, PersonCreditsData<T>, $Out2, T>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _PersonCreditsDataCopyWithImpl<$R2, $Out2, T>($value, $cast, t);
}
