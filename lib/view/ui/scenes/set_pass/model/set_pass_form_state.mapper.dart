// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'set_pass_form_state.dart';

class SetPassFormStateMapper extends ClassMapperBase<SetPassFormState> {
  SetPassFormStateMapper._();

  static SetPassFormStateMapper? _instance;
  static SetPassFormStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SetPassFormStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SetPassFormState';

  static String _$password(SetPassFormState v) => v.password;
  static const Field<SetPassFormState, String> _f$password = Field(
    'password',
    _$password,
    opt: true,
    def: '',
  );
  static String _$confirmPassword(SetPassFormState v) => v.confirmPassword;
  static const Field<SetPassFormState, String> _f$confirmPassword = Field(
    'confirmPassword',
    _$confirmPassword,
    opt: true,
    def: '',
  );
  static bool _$isFilled(SetPassFormState v) => v.isFilled;
  static const Field<SetPassFormState, bool> _f$isFilled = Field(
    'isFilled',
    _$isFilled,
    mode: FieldMode.member,
  );
  static bool _$hasUnsavedData(SetPassFormState v) => v.hasUnsavedData;
  static const Field<SetPassFormState, bool> _f$hasUnsavedData = Field(
    'hasUnsavedData',
    _$hasUnsavedData,
    mode: FieldMode.member,
  );

  @override
  final MappableFields<SetPassFormState> fields = const {
    #password: _f$password,
    #confirmPassword: _f$confirmPassword,
    #isFilled: _f$isFilled,
    #hasUnsavedData: _f$hasUnsavedData,
  };

  static SetPassFormState _instantiate(DecodingData data) {
    return SetPassFormState(
      password: data.dec(_f$password),
      confirmPassword: data.dec(_f$confirmPassword),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static SetPassFormState fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SetPassFormState>(map);
  }

  static SetPassFormState fromJsonString(String json) {
    return ensureInitialized().decodeJson<SetPassFormState>(json);
  }
}

mixin SetPassFormStateMappable {
  String toJsonString() {
    return SetPassFormStateMapper.ensureInitialized()
        .encodeJson<SetPassFormState>(this as SetPassFormState);
  }

  Map<String, dynamic> toJson() {
    return SetPassFormStateMapper.ensureInitialized()
        .encodeMap<SetPassFormState>(this as SetPassFormState);
  }

  SetPassFormStateCopyWith<SetPassFormState, SetPassFormState, SetPassFormState>
  get copyWith =>
      _SetPassFormStateCopyWithImpl<SetPassFormState, SetPassFormState>(
        this as SetPassFormState,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return SetPassFormStateMapper.ensureInitialized().stringifyValue(
      this as SetPassFormState,
    );
  }

  @override
  bool operator ==(Object other) {
    return SetPassFormStateMapper.ensureInitialized().equalsValue(
      this as SetPassFormState,
      other,
    );
  }

  @override
  int get hashCode {
    return SetPassFormStateMapper.ensureInitialized().hashValue(
      this as SetPassFormState,
    );
  }
}

extension SetPassFormStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SetPassFormState, $Out> {
  SetPassFormStateCopyWith<$R, SetPassFormState, $Out>
  get $asSetPassFormState =>
      $base.as((v, t, t2) => _SetPassFormStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SetPassFormStateCopyWith<$R, $In extends SetPassFormState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? password, String? confirmPassword});
  SetPassFormStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _SetPassFormStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SetPassFormState, $Out>
    implements SetPassFormStateCopyWith<$R, SetPassFormState, $Out> {
  _SetPassFormStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SetPassFormState> $mapper =
      SetPassFormStateMapper.ensureInitialized();
  @override
  $R call({String? password, String? confirmPassword}) => $apply(
    FieldCopyWithData({
      if (password != null) #password: password,
      if (confirmPassword != null) #confirmPassword: confirmPassword,
    }),
  );
  @override
  SetPassFormState $make(CopyWithData data) => SetPassFormState(
    password: data.get(#password, or: $value.password),
    confirmPassword: data.get(#confirmPassword, or: $value.confirmPassword),
  );

  @override
  SetPassFormStateCopyWith<$R2, SetPassFormState, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _SetPassFormStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

