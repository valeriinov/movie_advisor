// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'reset_pass_state.dart';

class ResetPassStateMapper extends ClassMapperBase<ResetPassState> {
  ResetPassStateMapper._();

  static ResetPassStateMapper? _instance;
  static ResetPassStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ResetPassStateMapper._());
      ResetPassFormStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ResetPassState';

  static ResetPassFormState _$formState(ResetPassState v) => v.formState;
  static const Field<ResetPassState, ResetPassFormState> _f$formState = Field(
      'formState', _$formState,
      opt: true, def: const ResetPassFormState());
  static ResetPassStatus _$status(ResetPassState v) => v.status;
  static const Field<ResetPassState, ResetPassStatus> _f$status =
      Field('status', _$status, opt: true, def: const ResetPassBaseStatus());

  @override
  final MappableFields<ResetPassState> fields = const {
    #formState: _f$formState,
    #status: _f$status,
  };

  static ResetPassState _instantiate(DecodingData data) {
    return ResetPassState(
        formState: data.dec(_f$formState), status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin ResetPassStateMappable {
  ResetPassStateCopyWith<ResetPassState, ResetPassState, ResetPassState>
      get copyWith => _ResetPassStateCopyWithImpl(
          this as ResetPassState, $identity, $identity);
  @override
  String toString() {
    return ResetPassStateMapper.ensureInitialized()
        .stringifyValue(this as ResetPassState);
  }

  @override
  bool operator ==(Object other) {
    return ResetPassStateMapper.ensureInitialized()
        .equalsValue(this as ResetPassState, other);
  }

  @override
  int get hashCode {
    return ResetPassStateMapper.ensureInitialized()
        .hashValue(this as ResetPassState);
  }
}

extension ResetPassStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ResetPassState, $Out> {
  ResetPassStateCopyWith<$R, ResetPassState, $Out> get $asResetPassState =>
      $base.as((v, t, t2) => _ResetPassStateCopyWithImpl(v, t, t2));
}

abstract class ResetPassStateCopyWith<$R, $In extends ResetPassState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ResetPassFormStateCopyWith<$R, ResetPassFormState, ResetPassFormState>
      get formState;
  $R call({ResetPassFormState? formState, ResetPassStatus? status});
  ResetPassStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ResetPassStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ResetPassState, $Out>
    implements ResetPassStateCopyWith<$R, ResetPassState, $Out> {
  _ResetPassStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ResetPassState> $mapper =
      ResetPassStateMapper.ensureInitialized();
  @override
  ResetPassFormStateCopyWith<$R, ResetPassFormState, ResetPassFormState>
      get formState =>
          $value.formState.copyWith.$chain((v) => call(formState: v));
  @override
  $R call({ResetPassFormState? formState, ResetPassStatus? status}) =>
      $apply(FieldCopyWithData({
        if (formState != null) #formState: formState,
        if (status != null) #status: status
      }));
  @override
  ResetPassState $make(CopyWithData data) => ResetPassState(
      formState: data.get(#formState, or: $value.formState),
      status: data.get(#status, or: $value.status));

  @override
  ResetPassStateCopyWith<$R2, ResetPassState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ResetPassStateCopyWithImpl($value, $cast, t);
}

class ResetPassBaseStatusMapper extends ClassMapperBase<ResetPassBaseStatus> {
  ResetPassBaseStatusMapper._();

  static ResetPassBaseStatusMapper? _instance;
  static ResetPassBaseStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ResetPassBaseStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ResetPassBaseStatus';

  static bool _$isLoading(ResetPassBaseStatus v) => v.isLoading;
  static const Field<ResetPassBaseStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(ResetPassBaseStatus v) => v.errorMessage;
  static const Field<ResetPassBaseStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(ResetPassBaseStatus v) => v.isInitialized;
  static const Field<ResetPassBaseStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: false);

  @override
  final MappableFields<ResetPassBaseStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static ResetPassBaseStatus _instantiate(DecodingData data) {
    return ResetPassBaseStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin ResetPassBaseStatusMappable {
  ResetPassBaseStatusCopyWith<ResetPassBaseStatus, ResetPassBaseStatus,
          ResetPassBaseStatus>
      get copyWith => _ResetPassBaseStatusCopyWithImpl(
          this as ResetPassBaseStatus, $identity, $identity);
  @override
  String toString() {
    return ResetPassBaseStatusMapper.ensureInitialized()
        .stringifyValue(this as ResetPassBaseStatus);
  }

  @override
  bool operator ==(Object other) {
    return ResetPassBaseStatusMapper.ensureInitialized()
        .equalsValue(this as ResetPassBaseStatus, other);
  }

  @override
  int get hashCode {
    return ResetPassBaseStatusMapper.ensureInitialized()
        .hashValue(this as ResetPassBaseStatus);
  }
}

extension ResetPassBaseStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ResetPassBaseStatus, $Out> {
  ResetPassBaseStatusCopyWith<$R, ResetPassBaseStatus, $Out>
      get $asResetPassBaseStatus =>
          $base.as((v, t, t2) => _ResetPassBaseStatusCopyWithImpl(v, t, t2));
}

abstract class ResetPassBaseStatusCopyWith<$R, $In extends ResetPassBaseStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  ResetPassBaseStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ResetPassBaseStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ResetPassBaseStatus, $Out>
    implements ResetPassBaseStatusCopyWith<$R, ResetPassBaseStatus, $Out> {
  _ResetPassBaseStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ResetPassBaseStatus> $mapper =
      ResetPassBaseStatusMapper.ensureInitialized();
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
  ResetPassBaseStatus $make(CopyWithData data) => ResetPassBaseStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  ResetPassBaseStatusCopyWith<$R2, ResetPassBaseStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ResetPassBaseStatusCopyWithImpl($value, $cast, t);
}

class ResetPassBaseInitStatusMapper
    extends ClassMapperBase<ResetPassBaseInitStatus> {
  ResetPassBaseInitStatusMapper._();

  static ResetPassBaseInitStatusMapper? _instance;
  static ResetPassBaseInitStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ResetPassBaseInitStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ResetPassBaseInitStatus';

  static bool _$isLoading(ResetPassBaseInitStatus v) => v.isLoading;
  static const Field<ResetPassBaseInitStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(ResetPassBaseInitStatus v) => v.errorMessage;
  static const Field<ResetPassBaseInitStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(ResetPassBaseInitStatus v) => v.isInitialized;
  static const Field<ResetPassBaseInitStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: true);

  @override
  final MappableFields<ResetPassBaseInitStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static ResetPassBaseInitStatus _instantiate(DecodingData data) {
    return ResetPassBaseInitStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin ResetPassBaseInitStatusMappable {
  ResetPassBaseInitStatusCopyWith<ResetPassBaseInitStatus,
          ResetPassBaseInitStatus, ResetPassBaseInitStatus>
      get copyWith => _ResetPassBaseInitStatusCopyWithImpl(
          this as ResetPassBaseInitStatus, $identity, $identity);
  @override
  String toString() {
    return ResetPassBaseInitStatusMapper.ensureInitialized()
        .stringifyValue(this as ResetPassBaseInitStatus);
  }

  @override
  bool operator ==(Object other) {
    return ResetPassBaseInitStatusMapper.ensureInitialized()
        .equalsValue(this as ResetPassBaseInitStatus, other);
  }

  @override
  int get hashCode {
    return ResetPassBaseInitStatusMapper.ensureInitialized()
        .hashValue(this as ResetPassBaseInitStatus);
  }
}

extension ResetPassBaseInitStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ResetPassBaseInitStatus, $Out> {
  ResetPassBaseInitStatusCopyWith<$R, ResetPassBaseInitStatus, $Out>
      get $asResetPassBaseInitStatus => $base
          .as((v, t, t2) => _ResetPassBaseInitStatusCopyWithImpl(v, t, t2));
}

abstract class ResetPassBaseInitStatusCopyWith<
    $R,
    $In extends ResetPassBaseInitStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  ResetPassBaseInitStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ResetPassBaseInitStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ResetPassBaseInitStatus, $Out>
    implements
        ResetPassBaseInitStatusCopyWith<$R, ResetPassBaseInitStatus, $Out> {
  _ResetPassBaseInitStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ResetPassBaseInitStatus> $mapper =
      ResetPassBaseInitStatusMapper.ensureInitialized();
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
  ResetPassBaseInitStatus $make(CopyWithData data) => ResetPassBaseInitStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  ResetPassBaseInitStatusCopyWith<$R2, ResetPassBaseInitStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ResetPassBaseInitStatusCopyWithImpl($value, $cast, t);
}

class ResetPassSuccessStatusMapper
    extends ClassMapperBase<ResetPassSuccessStatus> {
  ResetPassSuccessStatusMapper._();

  static ResetPassSuccessStatusMapper? _instance;
  static ResetPassSuccessStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ResetPassSuccessStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ResetPassSuccessStatus';

  static bool _$isLoading(ResetPassSuccessStatus v) => v.isLoading;
  static const Field<ResetPassSuccessStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(ResetPassSuccessStatus v) => v.errorMessage;
  static const Field<ResetPassSuccessStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(ResetPassSuccessStatus v) => v.isInitialized;
  static const Field<ResetPassSuccessStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: true);

  @override
  final MappableFields<ResetPassSuccessStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static ResetPassSuccessStatus _instantiate(DecodingData data) {
    return ResetPassSuccessStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin ResetPassSuccessStatusMappable {
  ResetPassSuccessStatusCopyWith<ResetPassSuccessStatus, ResetPassSuccessStatus,
          ResetPassSuccessStatus>
      get copyWith => _ResetPassSuccessStatusCopyWithImpl(
          this as ResetPassSuccessStatus, $identity, $identity);
  @override
  String toString() {
    return ResetPassSuccessStatusMapper.ensureInitialized()
        .stringifyValue(this as ResetPassSuccessStatus);
  }

  @override
  bool operator ==(Object other) {
    return ResetPassSuccessStatusMapper.ensureInitialized()
        .equalsValue(this as ResetPassSuccessStatus, other);
  }

  @override
  int get hashCode {
    return ResetPassSuccessStatusMapper.ensureInitialized()
        .hashValue(this as ResetPassSuccessStatus);
  }
}

extension ResetPassSuccessStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ResetPassSuccessStatus, $Out> {
  ResetPassSuccessStatusCopyWith<$R, ResetPassSuccessStatus, $Out>
      get $asResetPassSuccessStatus =>
          $base.as((v, t, t2) => _ResetPassSuccessStatusCopyWithImpl(v, t, t2));
}

abstract class ResetPassSuccessStatusCopyWith<
    $R,
    $In extends ResetPassSuccessStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  ResetPassSuccessStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ResetPassSuccessStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ResetPassSuccessStatus, $Out>
    implements
        ResetPassSuccessStatusCopyWith<$R, ResetPassSuccessStatus, $Out> {
  _ResetPassSuccessStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ResetPassSuccessStatus> $mapper =
      ResetPassSuccessStatusMapper.ensureInitialized();
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
  ResetPassSuccessStatus $make(CopyWithData data) => ResetPassSuccessStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  ResetPassSuccessStatusCopyWith<$R2, ResetPassSuccessStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ResetPassSuccessStatusCopyWithImpl($value, $cast, t);
}
