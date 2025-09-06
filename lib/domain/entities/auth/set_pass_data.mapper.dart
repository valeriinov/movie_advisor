// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'set_pass_data.dart';

class SetPassDataMapper extends ClassMapperBase<SetPassData> {
  SetPassDataMapper._();

  static SetPassDataMapper? _instance;
  static SetPassDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SetPassDataMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SetPassData';

  static String _$oobCode(SetPassData v) => v.oobCode;
  static const Field<SetPassData, String> _f$oobCode =
      Field('oobCode', _$oobCode, opt: true, def: '');
  static String _$password(SetPassData v) => v.password;
  static const Field<SetPassData, String> _f$password =
      Field('password', _$password, opt: true, def: '');

  @override
  final MappableFields<SetPassData> fields = const {
    #oobCode: _f$oobCode,
    #password: _f$password,
  };

  static SetPassData _instantiate(DecodingData data) {
    return SetPassData(
        oobCode: data.dec(_f$oobCode), password: data.dec(_f$password));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin SetPassDataMappable {
  SetPassDataCopyWith<SetPassData, SetPassData, SetPassData> get copyWith =>
      _SetPassDataCopyWithImpl<SetPassData, SetPassData>(
          this as SetPassData, $identity, $identity);
  @override
  String toString() {
    return SetPassDataMapper.ensureInitialized()
        .stringifyValue(this as SetPassData);
  }

  @override
  bool operator ==(Object other) {
    return SetPassDataMapper.ensureInitialized()
        .equalsValue(this as SetPassData, other);
  }

  @override
  int get hashCode {
    return SetPassDataMapper.ensureInitialized().hashValue(this as SetPassData);
  }
}

extension SetPassDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SetPassData, $Out> {
  SetPassDataCopyWith<$R, SetPassData, $Out> get $asSetPassData =>
      $base.as((v, t, t2) => _SetPassDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SetPassDataCopyWith<$R, $In extends SetPassData, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? oobCode, String? password});
  SetPassDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SetPassDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SetPassData, $Out>
    implements SetPassDataCopyWith<$R, SetPassData, $Out> {
  _SetPassDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SetPassData> $mapper =
      SetPassDataMapper.ensureInitialized();
  @override
  $R call({String? oobCode, String? password}) => $apply(FieldCopyWithData({
        if (oobCode != null) #oobCode: oobCode,
        if (password != null) #password: password
      }));
  @override
  SetPassData $make(CopyWithData data) => SetPassData(
      oobCode: data.get(#oobCode, or: $value.oobCode),
      password: data.get(#password, or: $value.password));

  @override
  SetPassDataCopyWith<$R2, SetPassData, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SetPassDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
