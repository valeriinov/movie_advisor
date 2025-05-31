// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'reg_data.dart';

class RegDataMapper extends ClassMapperBase<RegData> {
  RegDataMapper._();

  static RegDataMapper? _instance;
  static RegDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RegDataMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RegData';

  static String _$email(RegData v) => v.email;
  static const Field<RegData, String> _f$email = Field(
    'email',
    _$email,
    opt: true,
    def: '',
  );
  static String _$password(RegData v) => v.password;
  static const Field<RegData, String> _f$password = Field(
    'password',
    _$password,
    opt: true,
    def: '',
  );

  @override
  final MappableFields<RegData> fields = const {
    #email: _f$email,
    #password: _f$password,
  };

  static RegData _instantiate(DecodingData data) {
    return RegData(email: data.dec(_f$email), password: data.dec(_f$password));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin RegDataMappable {
  RegDataCopyWith<RegData, RegData, RegData> get copyWith =>
      _RegDataCopyWithImpl<RegData, RegData>(
        this as RegData,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RegDataMapper.ensureInitialized().stringifyValue(this as RegData);
  }

  @override
  bool operator ==(Object other) {
    return RegDataMapper.ensureInitialized().equalsValue(
      this as RegData,
      other,
    );
  }

  @override
  int get hashCode {
    return RegDataMapper.ensureInitialized().hashValue(this as RegData);
  }
}

extension RegDataValueCopy<$R, $Out> on ObjectCopyWith<$R, RegData, $Out> {
  RegDataCopyWith<$R, RegData, $Out> get $asRegData =>
      $base.as((v, t, t2) => _RegDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RegDataCopyWith<$R, $In extends RegData, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? email, String? password});
  RegDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RegDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RegData, $Out>
    implements RegDataCopyWith<$R, RegData, $Out> {
  _RegDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RegData> $mapper =
      RegDataMapper.ensureInitialized();
  @override
  $R call({String? email, String? password}) => $apply(
    FieldCopyWithData({
      if (email != null) #email: email,
      if (password != null) #password: password,
    }),
  );
  @override
  RegData $make(CopyWithData data) => RegData(
    email: data.get(#email, or: $value.email),
    password: data.get(#password, or: $value.password),
  );

  @override
  RegDataCopyWith<$R2, RegData, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _RegDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
