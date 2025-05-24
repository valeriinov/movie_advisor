// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'reg_form_state.dart';

class RegFormStateMapper extends ClassMapperBase<RegFormState> {
  RegFormStateMapper._();

  static RegFormStateMapper? _instance;
  static RegFormStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RegFormStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RegFormState';

  static String _$email(RegFormState v) => v.email;
  static const Field<RegFormState, String> _f$email = Field(
    'email',
    _$email,
    opt: true,
    def: '',
  );
  static String _$password(RegFormState v) => v.password;
  static const Field<RegFormState, String> _f$password = Field(
    'password',
    _$password,
    opt: true,
    def: '',
  );
  static String _$confirmPassword(RegFormState v) => v.confirmPassword;
  static const Field<RegFormState, String> _f$confirmPassword = Field(
    'confirmPassword',
    _$confirmPassword,
    opt: true,
    def: '',
  );

  @override
  final MappableFields<RegFormState> fields = const {
    #email: _f$email,
    #password: _f$password,
    #confirmPassword: _f$confirmPassword,
  };

  static RegFormState _instantiate(DecodingData data) {
    return RegFormState(
      email: data.dec(_f$email),
      password: data.dec(_f$password),
      confirmPassword: data.dec(_f$confirmPassword),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RegFormState fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RegFormState>(map);
  }

  static RegFormState fromJsonString(String json) {
    return ensureInitialized().decodeJson<RegFormState>(json);
  }
}

mixin RegFormStateMappable {
  String toJsonString() {
    return RegFormStateMapper.ensureInitialized().encodeJson<RegFormState>(
      this as RegFormState,
    );
  }

  Map<String, dynamic> toJson() {
    return RegFormStateMapper.ensureInitialized().encodeMap<RegFormState>(
      this as RegFormState,
    );
  }

  RegFormStateCopyWith<RegFormState, RegFormState, RegFormState> get copyWith =>
      _RegFormStateCopyWithImpl<RegFormState, RegFormState>(
        this as RegFormState,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RegFormStateMapper.ensureInitialized().stringifyValue(
      this as RegFormState,
    );
  }

  @override
  bool operator ==(Object other) {
    return RegFormStateMapper.ensureInitialized().equalsValue(
      this as RegFormState,
      other,
    );
  }

  @override
  int get hashCode {
    return RegFormStateMapper.ensureInitialized().hashValue(
      this as RegFormState,
    );
  }
}

extension RegFormStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RegFormState, $Out> {
  RegFormStateCopyWith<$R, RegFormState, $Out> get $asRegFormState =>
      $base.as((v, t, t2) => _RegFormStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RegFormStateCopyWith<$R, $In extends RegFormState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? email, String? password, String? confirmPassword});
  RegFormStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RegFormStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RegFormState, $Out>
    implements RegFormStateCopyWith<$R, RegFormState, $Out> {
  _RegFormStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RegFormState> $mapper =
      RegFormStateMapper.ensureInitialized();
  @override
  $R call({String? email, String? password, String? confirmPassword}) => $apply(
    FieldCopyWithData({
      if (email != null) #email: email,
      if (password != null) #password: password,
      if (confirmPassword != null) #confirmPassword: confirmPassword,
    }),
  );
  @override
  RegFormState $make(CopyWithData data) => RegFormState(
    email: data.get(#email, or: $value.email),
    password: data.get(#password, or: $value.password),
    confirmPassword: data.get(#confirmPassword, or: $value.confirmPassword),
  );

  @override
  RegFormStateCopyWith<$R2, RegFormState, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RegFormStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
