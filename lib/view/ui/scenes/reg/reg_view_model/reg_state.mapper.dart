// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'reg_state.dart';

class RegStateMapper extends ClassMapperBase<RegState> {
  RegStateMapper._();

  static RegStateMapper? _instance;
  static RegStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RegStateMapper._());
      RegFormStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RegState';

  static RegFormState _$formState(RegState v) => v.formState;
  static const Field<RegState, RegFormState> _f$formState = Field(
    'formState',
    _$formState,
    opt: true,
    def: const RegFormState(),
  );
  static RegStatus _$status(RegState v) => v.status;
  static const Field<RegState, RegStatus> _f$status = Field(
    'status',
    _$status,
    opt: true,
    def: const RegBaseStatus(),
  );

  @override
  final MappableFields<RegState> fields = const {
    #formState: _f$formState,
    #status: _f$status,
  };

  static RegState _instantiate(DecodingData data) {
    return RegState(
      formState: data.dec(_f$formState),
      status: data.dec(_f$status),
    );
  }

  @override
  final Function instantiate = _instantiate;
}

mixin RegStateMappable {
  RegStateCopyWith<RegState, RegState, RegState> get copyWith =>
      _RegStateCopyWithImpl<RegState, RegState>(
        this as RegState,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RegStateMapper.ensureInitialized().stringifyValue(this as RegState);
  }

  @override
  bool operator ==(Object other) {
    return RegStateMapper.ensureInitialized().equalsValue(
      this as RegState,
      other,
    );
  }

  @override
  int get hashCode {
    return RegStateMapper.ensureInitialized().hashValue(this as RegState);
  }
}

extension RegStateValueCopy<$R, $Out> on ObjectCopyWith<$R, RegState, $Out> {
  RegStateCopyWith<$R, RegState, $Out> get $asRegState =>
      $base.as((v, t, t2) => _RegStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RegStateCopyWith<$R, $In extends RegState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  RegFormStateCopyWith<$R, RegFormState, RegFormState> get formState;
  $R call({RegFormState? formState, RegStatus? status});
  RegStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RegStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RegState, $Out>
    implements RegStateCopyWith<$R, RegState, $Out> {
  _RegStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RegState> $mapper =
      RegStateMapper.ensureInitialized();
  @override
  RegFormStateCopyWith<$R, RegFormState, RegFormState> get formState =>
      $value.formState.copyWith.$chain((v) => call(formState: v));
  @override
  $R call({RegFormState? formState, RegStatus? status}) => $apply(
    FieldCopyWithData({
      if (formState != null) #formState: formState,
      if (status != null) #status: status,
    }),
  );
  @override
  RegState $make(CopyWithData data) => RegState(
    formState: data.get(#formState, or: $value.formState),
    status: data.get(#status, or: $value.status),
  );

  @override
  RegStateCopyWith<$R2, RegState, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RegStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RegBaseStatusMapper extends ClassMapperBase<RegBaseStatus> {
  RegBaseStatusMapper._();

  static RegBaseStatusMapper? _instance;
  static RegBaseStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RegBaseStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RegBaseStatus';

  static bool _$isLoading(RegBaseStatus v) => v.isLoading;
  static const Field<RegBaseStatus, bool> _f$isLoading = Field(
    'isLoading',
    _$isLoading,
    opt: true,
    def: false,
  );
  static String? _$errorMessage(RegBaseStatus v) => v.errorMessage;
  static const Field<RegBaseStatus, String> _f$errorMessage = Field(
    'errorMessage',
    _$errorMessage,
    opt: true,
  );
  static bool _$isInitialized(RegBaseStatus v) => v.isInitialized;
  static const Field<RegBaseStatus, bool> _f$isInitialized = Field(
    'isInitialized',
    _$isInitialized,
    opt: true,
    def: false,
  );

  @override
  final MappableFields<RegBaseStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static RegBaseStatus _instantiate(DecodingData data) {
    return RegBaseStatus(
      isLoading: data.dec(_f$isLoading),
      errorMessage: data.dec(_f$errorMessage),
      isInitialized: data.dec(_f$isInitialized),
    );
  }

  @override
  final Function instantiate = _instantiate;
}

mixin RegBaseStatusMappable {
  RegBaseStatusCopyWith<RegBaseStatus, RegBaseStatus, RegBaseStatus>
  get copyWith => _RegBaseStatusCopyWithImpl<RegBaseStatus, RegBaseStatus>(
    this as RegBaseStatus,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return RegBaseStatusMapper.ensureInitialized().stringifyValue(
      this as RegBaseStatus,
    );
  }

  @override
  bool operator ==(Object other) {
    return RegBaseStatusMapper.ensureInitialized().equalsValue(
      this as RegBaseStatus,
      other,
    );
  }

  @override
  int get hashCode {
    return RegBaseStatusMapper.ensureInitialized().hashValue(
      this as RegBaseStatus,
    );
  }
}

extension RegBaseStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RegBaseStatus, $Out> {
  RegBaseStatusCopyWith<$R, RegBaseStatus, $Out> get $asRegBaseStatus =>
      $base.as((v, t, t2) => _RegBaseStatusCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RegBaseStatusCopyWith<$R, $In extends RegBaseStatus, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  RegBaseStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RegBaseStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RegBaseStatus, $Out>
    implements RegBaseStatusCopyWith<$R, RegBaseStatus, $Out> {
  _RegBaseStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RegBaseStatus> $mapper =
      RegBaseStatusMapper.ensureInitialized();
  @override
  $R call({
    bool? isLoading,
    Object? errorMessage = $none,
    bool? isInitialized,
  }) => $apply(
    FieldCopyWithData({
      if (isLoading != null) #isLoading: isLoading,
      if (errorMessage != $none) #errorMessage: errorMessage,
      if (isInitialized != null) #isInitialized: isInitialized,
    }),
  );
  @override
  RegBaseStatus $make(CopyWithData data) => RegBaseStatus(
    isLoading: data.get(#isLoading, or: $value.isLoading),
    errorMessage: data.get(#errorMessage, or: $value.errorMessage),
    isInitialized: data.get(#isInitialized, or: $value.isInitialized),
  );

  @override
  RegBaseStatusCopyWith<$R2, RegBaseStatus, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RegBaseStatusCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RegBaseInitStatusMapper extends ClassMapperBase<RegBaseInitStatus> {
  RegBaseInitStatusMapper._();

  static RegBaseInitStatusMapper? _instance;
  static RegBaseInitStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RegBaseInitStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RegBaseInitStatus';

  static bool _$isLoading(RegBaseInitStatus v) => v.isLoading;
  static const Field<RegBaseInitStatus, bool> _f$isLoading = Field(
    'isLoading',
    _$isLoading,
    opt: true,
    def: false,
  );
  static String? _$errorMessage(RegBaseInitStatus v) => v.errorMessage;
  static const Field<RegBaseInitStatus, String> _f$errorMessage = Field(
    'errorMessage',
    _$errorMessage,
    opt: true,
  );
  static bool _$isInitialized(RegBaseInitStatus v) => v.isInitialized;
  static const Field<RegBaseInitStatus, bool> _f$isInitialized = Field(
    'isInitialized',
    _$isInitialized,
    opt: true,
    def: true,
  );

  @override
  final MappableFields<RegBaseInitStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static RegBaseInitStatus _instantiate(DecodingData data) {
    return RegBaseInitStatus(
      isLoading: data.dec(_f$isLoading),
      errorMessage: data.dec(_f$errorMessage),
      isInitialized: data.dec(_f$isInitialized),
    );
  }

  @override
  final Function instantiate = _instantiate;
}

mixin RegBaseInitStatusMappable {
  RegBaseInitStatusCopyWith<
    RegBaseInitStatus,
    RegBaseInitStatus,
    RegBaseInitStatus
  >
  get copyWith =>
      _RegBaseInitStatusCopyWithImpl<RegBaseInitStatus, RegBaseInitStatus>(
        this as RegBaseInitStatus,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RegBaseInitStatusMapper.ensureInitialized().stringifyValue(
      this as RegBaseInitStatus,
    );
  }

  @override
  bool operator ==(Object other) {
    return RegBaseInitStatusMapper.ensureInitialized().equalsValue(
      this as RegBaseInitStatus,
      other,
    );
  }

  @override
  int get hashCode {
    return RegBaseInitStatusMapper.ensureInitialized().hashValue(
      this as RegBaseInitStatus,
    );
  }
}

extension RegBaseInitStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RegBaseInitStatus, $Out> {
  RegBaseInitStatusCopyWith<$R, RegBaseInitStatus, $Out>
  get $asRegBaseInitStatus => $base.as(
    (v, t, t2) => _RegBaseInitStatusCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class RegBaseInitStatusCopyWith<
  $R,
  $In extends RegBaseInitStatus,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  RegBaseInitStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _RegBaseInitStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RegBaseInitStatus, $Out>
    implements RegBaseInitStatusCopyWith<$R, RegBaseInitStatus, $Out> {
  _RegBaseInitStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RegBaseInitStatus> $mapper =
      RegBaseInitStatusMapper.ensureInitialized();
  @override
  $R call({
    bool? isLoading,
    Object? errorMessage = $none,
    bool? isInitialized,
  }) => $apply(
    FieldCopyWithData({
      if (isLoading != null) #isLoading: isLoading,
      if (errorMessage != $none) #errorMessage: errorMessage,
      if (isInitialized != null) #isInitialized: isInitialized,
    }),
  );
  @override
  RegBaseInitStatus $make(CopyWithData data) => RegBaseInitStatus(
    isLoading: data.get(#isLoading, or: $value.isLoading),
    errorMessage: data.get(#errorMessage, or: $value.errorMessage),
    isInitialized: data.get(#isInitialized, or: $value.isInitialized),
  );

  @override
  RegBaseInitStatusCopyWith<$R2, RegBaseInitStatus, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RegBaseInitStatusCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RegSuccessStatusMapper extends ClassMapperBase<RegSuccessStatus> {
  RegSuccessStatusMapper._();

  static RegSuccessStatusMapper? _instance;
  static RegSuccessStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RegSuccessStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RegSuccessStatus';

  static bool _$isLoading(RegSuccessStatus v) => v.isLoading;
  static const Field<RegSuccessStatus, bool> _f$isLoading = Field(
    'isLoading',
    _$isLoading,
    opt: true,
    def: false,
  );
  static String? _$errorMessage(RegSuccessStatus v) => v.errorMessage;
  static const Field<RegSuccessStatus, String> _f$errorMessage = Field(
    'errorMessage',
    _$errorMessage,
    opt: true,
  );
  static bool _$isInitialized(RegSuccessStatus v) => v.isInitialized;
  static const Field<RegSuccessStatus, bool> _f$isInitialized = Field(
    'isInitialized',
    _$isInitialized,
    opt: true,
    def: true,
  );

  @override
  final MappableFields<RegSuccessStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static RegSuccessStatus _instantiate(DecodingData data) {
    return RegSuccessStatus(
      isLoading: data.dec(_f$isLoading),
      errorMessage: data.dec(_f$errorMessage),
      isInitialized: data.dec(_f$isInitialized),
    );
  }

  @override
  final Function instantiate = _instantiate;
}

mixin RegSuccessStatusMappable {
  RegSuccessStatusCopyWith<RegSuccessStatus, RegSuccessStatus, RegSuccessStatus>
  get copyWith =>
      _RegSuccessStatusCopyWithImpl<RegSuccessStatus, RegSuccessStatus>(
        this as RegSuccessStatus,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RegSuccessStatusMapper.ensureInitialized().stringifyValue(
      this as RegSuccessStatus,
    );
  }

  @override
  bool operator ==(Object other) {
    return RegSuccessStatusMapper.ensureInitialized().equalsValue(
      this as RegSuccessStatus,
      other,
    );
  }

  @override
  int get hashCode {
    return RegSuccessStatusMapper.ensureInitialized().hashValue(
      this as RegSuccessStatus,
    );
  }
}

extension RegSuccessStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RegSuccessStatus, $Out> {
  RegSuccessStatusCopyWith<$R, RegSuccessStatus, $Out>
  get $asRegSuccessStatus =>
      $base.as((v, t, t2) => _RegSuccessStatusCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RegSuccessStatusCopyWith<$R, $In extends RegSuccessStatus, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  RegSuccessStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _RegSuccessStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RegSuccessStatus, $Out>
    implements RegSuccessStatusCopyWith<$R, RegSuccessStatus, $Out> {
  _RegSuccessStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RegSuccessStatus> $mapper =
      RegSuccessStatusMapper.ensureInitialized();
  @override
  $R call({
    bool? isLoading,
    Object? errorMessage = $none,
    bool? isInitialized,
  }) => $apply(
    FieldCopyWithData({
      if (isLoading != null) #isLoading: isLoading,
      if (errorMessage != $none) #errorMessage: errorMessage,
      if (isInitialized != null) #isInitialized: isInitialized,
    }),
  );
  @override
  RegSuccessStatus $make(CopyWithData data) => RegSuccessStatus(
    isLoading: data.get(#isLoading, or: $value.isLoading),
    errorMessage: data.get(#errorMessage, or: $value.errorMessage),
    isInitialized: data.get(#isInitialized, or: $value.isInitialized),
  );

  @override
  RegSuccessStatusCopyWith<$R2, RegSuccessStatus, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RegSuccessStatusCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
