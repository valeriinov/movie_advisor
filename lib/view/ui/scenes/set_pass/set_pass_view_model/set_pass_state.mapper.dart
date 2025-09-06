// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'set_pass_state.dart';

class SetPassStateMapper extends ClassMapperBase<SetPassState> {
  SetPassStateMapper._();

  static SetPassStateMapper? _instance;
  static SetPassStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SetPassStateMapper._());
      SetPassFormStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SetPassState';

  static String _$oobCode(SetPassState v) => v.oobCode;
  static const Field<SetPassState, String> _f$oobCode =
      Field('oobCode', _$oobCode, opt: true, def: '');
  static SetPassFormState _$formState(SetPassState v) => v.formState;
  static const Field<SetPassState, SetPassFormState> _f$formState =
      Field('formState', _$formState, opt: true, def: const SetPassFormState());
  static SetPassStatus _$status(SetPassState v) => v.status;
  static const Field<SetPassState, SetPassStatus> _f$status =
      Field('status', _$status, opt: true, def: const SetPassBaseStatus());

  @override
  final MappableFields<SetPassState> fields = const {
    #oobCode: _f$oobCode,
    #formState: _f$formState,
    #status: _f$status,
  };

  static SetPassState _instantiate(DecodingData data) {
    return SetPassState(
        oobCode: data.dec(_f$oobCode),
        formState: data.dec(_f$formState),
        status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin SetPassStateMappable {
  SetPassStateCopyWith<SetPassState, SetPassState, SetPassState> get copyWith =>
      _SetPassStateCopyWithImpl<SetPassState, SetPassState>(
          this as SetPassState, $identity, $identity);
  @override
  String toString() {
    return SetPassStateMapper.ensureInitialized()
        .stringifyValue(this as SetPassState);
  }

  @override
  bool operator ==(Object other) {
    return SetPassStateMapper.ensureInitialized()
        .equalsValue(this as SetPassState, other);
  }

  @override
  int get hashCode {
    return SetPassStateMapper.ensureInitialized()
        .hashValue(this as SetPassState);
  }
}

extension SetPassStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SetPassState, $Out> {
  SetPassStateCopyWith<$R, SetPassState, $Out> get $asSetPassState =>
      $base.as((v, t, t2) => _SetPassStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SetPassStateCopyWith<$R, $In extends SetPassState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  SetPassFormStateCopyWith<$R, SetPassFormState, SetPassFormState>
      get formState;
  $R call(
      {String? oobCode, SetPassFormState? formState, SetPassStatus? status});
  SetPassStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SetPassStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SetPassState, $Out>
    implements SetPassStateCopyWith<$R, SetPassState, $Out> {
  _SetPassStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SetPassState> $mapper =
      SetPassStateMapper.ensureInitialized();
  @override
  SetPassFormStateCopyWith<$R, SetPassFormState, SetPassFormState>
      get formState =>
          $value.formState.copyWith.$chain((v) => call(formState: v));
  @override
  $R call(
          {String? oobCode,
          SetPassFormState? formState,
          SetPassStatus? status}) =>
      $apply(FieldCopyWithData({
        if (oobCode != null) #oobCode: oobCode,
        if (formState != null) #formState: formState,
        if (status != null) #status: status
      }));
  @override
  SetPassState $make(CopyWithData data) => SetPassState(
      oobCode: data.get(#oobCode, or: $value.oobCode),
      formState: data.get(#formState, or: $value.formState),
      status: data.get(#status, or: $value.status));

  @override
  SetPassStateCopyWith<$R2, SetPassState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SetPassStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SetPassBaseStatusMapper extends ClassMapperBase<SetPassBaseStatus> {
  SetPassBaseStatusMapper._();

  static SetPassBaseStatusMapper? _instance;
  static SetPassBaseStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SetPassBaseStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SetPassBaseStatus';

  static bool _$isLoading(SetPassBaseStatus v) => v.isLoading;
  static const Field<SetPassBaseStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(SetPassBaseStatus v) => v.errorMessage;
  static const Field<SetPassBaseStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(SetPassBaseStatus v) => v.isInitialized;
  static const Field<SetPassBaseStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: true);

  @override
  final MappableFields<SetPassBaseStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static SetPassBaseStatus _instantiate(DecodingData data) {
    return SetPassBaseStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin SetPassBaseStatusMappable {
  SetPassBaseStatusCopyWith<SetPassBaseStatus, SetPassBaseStatus,
          SetPassBaseStatus>
      get copyWith =>
          _SetPassBaseStatusCopyWithImpl<SetPassBaseStatus, SetPassBaseStatus>(
              this as SetPassBaseStatus, $identity, $identity);
  @override
  String toString() {
    return SetPassBaseStatusMapper.ensureInitialized()
        .stringifyValue(this as SetPassBaseStatus);
  }

  @override
  bool operator ==(Object other) {
    return SetPassBaseStatusMapper.ensureInitialized()
        .equalsValue(this as SetPassBaseStatus, other);
  }

  @override
  int get hashCode {
    return SetPassBaseStatusMapper.ensureInitialized()
        .hashValue(this as SetPassBaseStatus);
  }
}

extension SetPassBaseStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SetPassBaseStatus, $Out> {
  SetPassBaseStatusCopyWith<$R, SetPassBaseStatus, $Out>
      get $asSetPassBaseStatus => $base
          .as((v, t, t2) => _SetPassBaseStatusCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SetPassBaseStatusCopyWith<$R, $In extends SetPassBaseStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  SetPassBaseStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SetPassBaseStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SetPassBaseStatus, $Out>
    implements SetPassBaseStatusCopyWith<$R, SetPassBaseStatus, $Out> {
  _SetPassBaseStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SetPassBaseStatus> $mapper =
      SetPassBaseStatusMapper.ensureInitialized();
  @override
  $R call(
          {bool? isLoading,
          Object? errorMessage = $none,
          bool? isInitialized}) =>
      $apply(FieldCopyWithData({
        if (isLoading != null) #isLoading: isLoading,
        if (errorMessage != $none) #errorMessage: errorMessage,
        if (isInitialized != null) #isInitialized: isInitialized
      }));
  @override
  SetPassBaseStatus $make(CopyWithData data) => SetPassBaseStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  SetPassBaseStatusCopyWith<$R2, SetPassBaseStatus, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SetPassBaseStatusCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SetPassSuccessStatusMapper extends ClassMapperBase<SetPassSuccessStatus> {
  SetPassSuccessStatusMapper._();

  static SetPassSuccessStatusMapper? _instance;
  static SetPassSuccessStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SetPassSuccessStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SetPassSuccessStatus';

  static bool _$isLoading(SetPassSuccessStatus v) => v.isLoading;
  static const Field<SetPassSuccessStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(SetPassSuccessStatus v) => v.errorMessage;
  static const Field<SetPassSuccessStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(SetPassSuccessStatus v) => v.isInitialized;
  static const Field<SetPassSuccessStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: true);

  @override
  final MappableFields<SetPassSuccessStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static SetPassSuccessStatus _instantiate(DecodingData data) {
    return SetPassSuccessStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin SetPassSuccessStatusMappable {
  SetPassSuccessStatusCopyWith<SetPassSuccessStatus, SetPassSuccessStatus,
      SetPassSuccessStatus> get copyWith => _SetPassSuccessStatusCopyWithImpl<
          SetPassSuccessStatus, SetPassSuccessStatus>(
      this as SetPassSuccessStatus, $identity, $identity);
  @override
  String toString() {
    return SetPassSuccessStatusMapper.ensureInitialized()
        .stringifyValue(this as SetPassSuccessStatus);
  }

  @override
  bool operator ==(Object other) {
    return SetPassSuccessStatusMapper.ensureInitialized()
        .equalsValue(this as SetPassSuccessStatus, other);
  }

  @override
  int get hashCode {
    return SetPassSuccessStatusMapper.ensureInitialized()
        .hashValue(this as SetPassSuccessStatus);
  }
}

extension SetPassSuccessStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SetPassSuccessStatus, $Out> {
  SetPassSuccessStatusCopyWith<$R, SetPassSuccessStatus, $Out>
      get $asSetPassSuccessStatus => $base.as(
          (v, t, t2) => _SetPassSuccessStatusCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SetPassSuccessStatusCopyWith<
    $R,
    $In extends SetPassSuccessStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  SetPassSuccessStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SetPassSuccessStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SetPassSuccessStatus, $Out>
    implements SetPassSuccessStatusCopyWith<$R, SetPassSuccessStatus, $Out> {
  _SetPassSuccessStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SetPassSuccessStatus> $mapper =
      SetPassSuccessStatusMapper.ensureInitialized();
  @override
  $R call(
          {bool? isLoading,
          Object? errorMessage = $none,
          bool? isInitialized}) =>
      $apply(FieldCopyWithData({
        if (isLoading != null) #isLoading: isLoading,
        if (errorMessage != $none) #errorMessage: errorMessage,
        if (isInitialized != null) #isInitialized: isInitialized
      }));
  @override
  SetPassSuccessStatus $make(CopyWithData data) => SetPassSuccessStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  SetPassSuccessStatusCopyWith<$R2, SetPassSuccessStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _SetPassSuccessStatusCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
