// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'reset_pass_form_state.dart';

class ResetPassFormStateMapper extends ClassMapperBase<ResetPassFormState> {
  ResetPassFormStateMapper._();

  static ResetPassFormStateMapper? _instance;
  static ResetPassFormStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ResetPassFormStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ResetPassFormState';

  static String _$email(ResetPassFormState v) => v.email;
  static const Field<ResetPassFormState, String> _f$email =
      Field('email', _$email, opt: true, def: '');

  @override
  final MappableFields<ResetPassFormState> fields = const {
    #email: _f$email,
  };

  static ResetPassFormState _instantiate(DecodingData data) {
    return ResetPassFormState(email: data.dec(_f$email));
  }

  @override
  final Function instantiate = _instantiate;

  static ResetPassFormState fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ResetPassFormState>(map);
  }

  static ResetPassFormState fromJsonString(String json) {
    return ensureInitialized().decodeJson<ResetPassFormState>(json);
  }
}

mixin ResetPassFormStateMappable {
  String toJsonString() {
    return ResetPassFormStateMapper.ensureInitialized()
        .encodeJson<ResetPassFormState>(this as ResetPassFormState);
  }

  Map<String, dynamic> toJson() {
    return ResetPassFormStateMapper.ensureInitialized()
        .encodeMap<ResetPassFormState>(this as ResetPassFormState);
  }

  ResetPassFormStateCopyWith<ResetPassFormState, ResetPassFormState,
          ResetPassFormState>
      get copyWith => _ResetPassFormStateCopyWithImpl<ResetPassFormState,
          ResetPassFormState>(this as ResetPassFormState, $identity, $identity);
  @override
  String toString() {
    return ResetPassFormStateMapper.ensureInitialized()
        .stringifyValue(this as ResetPassFormState);
  }

  @override
  bool operator ==(Object other) {
    return ResetPassFormStateMapper.ensureInitialized()
        .equalsValue(this as ResetPassFormState, other);
  }

  @override
  int get hashCode {
    return ResetPassFormStateMapper.ensureInitialized()
        .hashValue(this as ResetPassFormState);
  }
}

extension ResetPassFormStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ResetPassFormState, $Out> {
  ResetPassFormStateCopyWith<$R, ResetPassFormState, $Out>
      get $asResetPassFormState => $base.as(
          (v, t, t2) => _ResetPassFormStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ResetPassFormStateCopyWith<$R, $In extends ResetPassFormState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? email});
  ResetPassFormStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ResetPassFormStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ResetPassFormState, $Out>
    implements ResetPassFormStateCopyWith<$R, ResetPassFormState, $Out> {
  _ResetPassFormStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ResetPassFormState> $mapper =
      ResetPassFormStateMapper.ensureInitialized();
  @override
  $R call({String? email}) =>
      $apply(FieldCopyWithData({if (email != null) #email: email}));
  @override
  ResetPassFormState $make(CopyWithData data) =>
      ResetPassFormState(email: data.get(#email, or: $value.email));

  @override
  ResetPassFormStateCopyWith<$R2, ResetPassFormState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ResetPassFormStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
