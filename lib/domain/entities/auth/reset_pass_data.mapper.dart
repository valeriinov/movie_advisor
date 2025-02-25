// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'reset_pass_data.dart';

class ResetPassDataMapper extends ClassMapperBase<ResetPassData> {
  ResetPassDataMapper._();

  static ResetPassDataMapper? _instance;
  static ResetPassDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ResetPassDataMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ResetPassData';

  static String _$email(ResetPassData v) => v.email;
  static const Field<ResetPassData, String> _f$email =
      Field('email', _$email, opt: true, def: '');

  @override
  final MappableFields<ResetPassData> fields = const {
    #email: _f$email,
  };

  static ResetPassData _instantiate(DecodingData data) {
    return ResetPassData(email: data.dec(_f$email));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin ResetPassDataMappable {
  ResetPassDataCopyWith<ResetPassData, ResetPassData, ResetPassData>
      get copyWith => _ResetPassDataCopyWithImpl(
          this as ResetPassData, $identity, $identity);
  @override
  String toString() {
    return ResetPassDataMapper.ensureInitialized()
        .stringifyValue(this as ResetPassData);
  }

  @override
  bool operator ==(Object other) {
    return ResetPassDataMapper.ensureInitialized()
        .equalsValue(this as ResetPassData, other);
  }

  @override
  int get hashCode {
    return ResetPassDataMapper.ensureInitialized()
        .hashValue(this as ResetPassData);
  }
}

extension ResetPassDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ResetPassData, $Out> {
  ResetPassDataCopyWith<$R, ResetPassData, $Out> get $asResetPassData =>
      $base.as((v, t, t2) => _ResetPassDataCopyWithImpl(v, t, t2));
}

abstract class ResetPassDataCopyWith<$R, $In extends ResetPassData, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? email});
  ResetPassDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ResetPassDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ResetPassData, $Out>
    implements ResetPassDataCopyWith<$R, ResetPassData, $Out> {
  _ResetPassDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ResetPassData> $mapper =
      ResetPassDataMapper.ensureInitialized();
  @override
  $R call({String? email}) =>
      $apply(FieldCopyWithData({if (email != null) #email: email}));
  @override
  ResetPassData $make(CopyWithData data) =>
      ResetPassData(email: data.get(#email, or: $value.email));

  @override
  ResetPassDataCopyWith<$R2, ResetPassData, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ResetPassDataCopyWithImpl($value, $cast, t);
}
