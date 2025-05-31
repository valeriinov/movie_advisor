// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'delete_account_form_state.dart';

class DeleteAccountFormStateMapper
    extends ClassMapperBase<DeleteAccountFormState> {
  DeleteAccountFormStateMapper._();

  static DeleteAccountFormStateMapper? _instance;
  static DeleteAccountFormStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DeleteAccountFormStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DeleteAccountFormState';

  static String _$password(DeleteAccountFormState v) => v.password;
  static const Field<DeleteAccountFormState, String> _f$password = Field(
    'password',
    _$password,
    opt: true,
    def: '',
  );

  @override
  final MappableFields<DeleteAccountFormState> fields = const {
    #password: _f$password,
  };

  static DeleteAccountFormState _instantiate(DecodingData data) {
    return DeleteAccountFormState(password: data.dec(_f$password));
  }

  @override
  final Function instantiate = _instantiate;

  static DeleteAccountFormState fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DeleteAccountFormState>(map);
  }

  static DeleteAccountFormState fromJsonString(String json) {
    return ensureInitialized().decodeJson<DeleteAccountFormState>(json);
  }
}

mixin DeleteAccountFormStateMappable {
  String toJsonString() {
    return DeleteAccountFormStateMapper.ensureInitialized()
        .encodeJson<DeleteAccountFormState>(this as DeleteAccountFormState);
  }

  Map<String, dynamic> toJson() {
    return DeleteAccountFormStateMapper.ensureInitialized()
        .encodeMap<DeleteAccountFormState>(this as DeleteAccountFormState);
  }

  DeleteAccountFormStateCopyWith<
    DeleteAccountFormState,
    DeleteAccountFormState,
    DeleteAccountFormState
  >
  get copyWith =>
      _DeleteAccountFormStateCopyWithImpl<
        DeleteAccountFormState,
        DeleteAccountFormState
      >(this as DeleteAccountFormState, $identity, $identity);
  @override
  String toString() {
    return DeleteAccountFormStateMapper.ensureInitialized().stringifyValue(
      this as DeleteAccountFormState,
    );
  }

  @override
  bool operator ==(Object other) {
    return DeleteAccountFormStateMapper.ensureInitialized().equalsValue(
      this as DeleteAccountFormState,
      other,
    );
  }

  @override
  int get hashCode {
    return DeleteAccountFormStateMapper.ensureInitialized().hashValue(
      this as DeleteAccountFormState,
    );
  }
}

extension DeleteAccountFormStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DeleteAccountFormState, $Out> {
  DeleteAccountFormStateCopyWith<$R, DeleteAccountFormState, $Out>
  get $asDeleteAccountFormState => $base.as(
    (v, t, t2) => _DeleteAccountFormStateCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class DeleteAccountFormStateCopyWith<
  $R,
  $In extends DeleteAccountFormState,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? password});
  DeleteAccountFormStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _DeleteAccountFormStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DeleteAccountFormState, $Out>
    implements
        DeleteAccountFormStateCopyWith<$R, DeleteAccountFormState, $Out> {
  _DeleteAccountFormStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DeleteAccountFormState> $mapper =
      DeleteAccountFormStateMapper.ensureInitialized();
  @override
  $R call({String? password}) =>
      $apply(FieldCopyWithData({if (password != null) #password: password}));
  @override
  DeleteAccountFormState $make(CopyWithData data) => DeleteAccountFormState(
    password: data.get(#password, or: $value.password),
  );

  @override
  DeleteAccountFormStateCopyWith<$R2, DeleteAccountFormState, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _DeleteAccountFormStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
