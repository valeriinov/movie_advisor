// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'delete_account_data.dart';

class DeleteAccountDataMapper extends ClassMapperBase<DeleteAccountData> {
  DeleteAccountDataMapper._();

  static DeleteAccountDataMapper? _instance;
  static DeleteAccountDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DeleteAccountDataMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DeleteAccountData';

  static String _$password(DeleteAccountData v) => v.password;
  static const Field<DeleteAccountData, String> _f$password =
      Field('password', _$password, opt: true, def: '');

  @override
  final MappableFields<DeleteAccountData> fields = const {
    #password: _f$password,
  };

  static DeleteAccountData _instantiate(DecodingData data) {
    return DeleteAccountData(password: data.dec(_f$password));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin DeleteAccountDataMappable {
  DeleteAccountDataCopyWith<DeleteAccountData, DeleteAccountData,
          DeleteAccountData>
      get copyWith => _DeleteAccountDataCopyWithImpl(
          this as DeleteAccountData, $identity, $identity);
  @override
  String toString() {
    return DeleteAccountDataMapper.ensureInitialized()
        .stringifyValue(this as DeleteAccountData);
  }

  @override
  bool operator ==(Object other) {
    return DeleteAccountDataMapper.ensureInitialized()
        .equalsValue(this as DeleteAccountData, other);
  }

  @override
  int get hashCode {
    return DeleteAccountDataMapper.ensureInitialized()
        .hashValue(this as DeleteAccountData);
  }
}

extension DeleteAccountDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DeleteAccountData, $Out> {
  DeleteAccountDataCopyWith<$R, DeleteAccountData, $Out>
      get $asDeleteAccountData =>
          $base.as((v, t, t2) => _DeleteAccountDataCopyWithImpl(v, t, t2));
}

abstract class DeleteAccountDataCopyWith<$R, $In extends DeleteAccountData,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? password});
  DeleteAccountDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _DeleteAccountDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DeleteAccountData, $Out>
    implements DeleteAccountDataCopyWith<$R, DeleteAccountData, $Out> {
  _DeleteAccountDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DeleteAccountData> $mapper =
      DeleteAccountDataMapper.ensureInitialized();
  @override
  $R call({String? password}) =>
      $apply(FieldCopyWithData({if (password != null) #password: password}));
  @override
  DeleteAccountData $make(CopyWithData data) =>
      DeleteAccountData(password: data.get(#password, or: $value.password));

  @override
  DeleteAccountDataCopyWith<$R2, DeleteAccountData, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DeleteAccountDataCopyWithImpl($value, $cast, t);
}
