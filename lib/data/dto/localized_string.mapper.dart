// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'localized_string.dart';

class LocalizedStringMapper extends ClassMapperBase<LocalizedString> {
  LocalizedStringMapper._();

  static LocalizedStringMapper? _instance;
  static LocalizedStringMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LocalizedStringMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'LocalizedString';

  static String? _$en(LocalizedString v) => v.en;
  static const Field<LocalizedString, String> _f$en =
      Field('en', _$en, opt: true);
  static String? _$uk(LocalizedString v) => v.uk;
  static const Field<LocalizedString, String> _f$uk =
      Field('uk', _$uk, opt: true);

  @override
  final MappableFields<LocalizedString> fields = const {
    #en: _f$en,
    #uk: _f$uk,
  };
  @override
  final bool ignoreNull = true;

  static LocalizedString _instantiate(DecodingData data) {
    return LocalizedString(en: data.dec(_f$en), uk: data.dec(_f$uk));
  }

  @override
  final Function instantiate = _instantiate;

  static LocalizedString fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LocalizedString>(map);
  }

  static LocalizedString fromJsonString(String json) {
    return ensureInitialized().decodeJson<LocalizedString>(json);
  }
}

mixin LocalizedStringMappable {
  String toJsonString() {
    return LocalizedStringMapper.ensureInitialized()
        .encodeJson<LocalizedString>(this as LocalizedString);
  }

  Map<String, dynamic> toJson() {
    return LocalizedStringMapper.ensureInitialized()
        .encodeMap<LocalizedString>(this as LocalizedString);
  }

  LocalizedStringCopyWith<LocalizedString, LocalizedString, LocalizedString>
      get copyWith =>
          _LocalizedStringCopyWithImpl<LocalizedString, LocalizedString>(
              this as LocalizedString, $identity, $identity);
  @override
  String toString() {
    return LocalizedStringMapper.ensureInitialized()
        .stringifyValue(this as LocalizedString);
  }

  @override
  bool operator ==(Object other) {
    return LocalizedStringMapper.ensureInitialized()
        .equalsValue(this as LocalizedString, other);
  }

  @override
  int get hashCode {
    return LocalizedStringMapper.ensureInitialized()
        .hashValue(this as LocalizedString);
  }
}

extension LocalizedStringValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LocalizedString, $Out> {
  LocalizedStringCopyWith<$R, LocalizedString, $Out> get $asLocalizedString =>
      $base.as((v, t, t2) => _LocalizedStringCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LocalizedStringCopyWith<$R, $In extends LocalizedString, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? en, String? uk});
  LocalizedStringCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _LocalizedStringCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LocalizedString, $Out>
    implements LocalizedStringCopyWith<$R, LocalizedString, $Out> {
  _LocalizedStringCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LocalizedString> $mapper =
      LocalizedStringMapper.ensureInitialized();
  @override
  $R call({Object? en = $none, Object? uk = $none}) => $apply(
      FieldCopyWithData({if (en != $none) #en: en, if (uk != $none) #uk: uk}));
  @override
  LocalizedString $make(CopyWithData data) => LocalizedString(
      en: data.get(#en, or: $value.en), uk: data.get(#uk, or: $value.uk));

  @override
  LocalizedStringCopyWith<$R2, LocalizedString, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LocalizedStringCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
