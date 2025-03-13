// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'refresh_state.dart';

class RefreshStateMapper extends ClassMapperBase<RefreshState> {
  RefreshStateMapper._();

  static RefreshStateMapper? _instance;
  static RefreshStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RefreshStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RefreshState';

  static RefreshStatus _$status(RefreshState v) => v.status;
  static const Field<RefreshState, RefreshStatus> _f$status =
      Field('status', _$status, opt: true, def: const RefreshBaseStatus());

  @override
  final MappableFields<RefreshState> fields = const {
    #status: _f$status,
  };

  static RefreshState _instantiate(DecodingData data) {
    return RefreshState(status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin RefreshStateMappable {
  RefreshStateCopyWith<RefreshState, RefreshState, RefreshState> get copyWith =>
      _RefreshStateCopyWithImpl(this as RefreshState, $identity, $identity);
  @override
  String toString() {
    return RefreshStateMapper.ensureInitialized()
        .stringifyValue(this as RefreshState);
  }

  @override
  bool operator ==(Object other) {
    return RefreshStateMapper.ensureInitialized()
        .equalsValue(this as RefreshState, other);
  }

  @override
  int get hashCode {
    return RefreshStateMapper.ensureInitialized()
        .hashValue(this as RefreshState);
  }
}

extension RefreshStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RefreshState, $Out> {
  RefreshStateCopyWith<$R, RefreshState, $Out> get $asRefreshState =>
      $base.as((v, t, t2) => _RefreshStateCopyWithImpl(v, t, t2));
}

abstract class RefreshStateCopyWith<$R, $In extends RefreshState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({RefreshStatus? status});
  RefreshStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RefreshStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RefreshState, $Out>
    implements RefreshStateCopyWith<$R, RefreshState, $Out> {
  _RefreshStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RefreshState> $mapper =
      RefreshStateMapper.ensureInitialized();
  @override
  $R call({RefreshStatus? status}) =>
      $apply(FieldCopyWithData({if (status != null) #status: status}));
  @override
  RefreshState $make(CopyWithData data) =>
      RefreshState(status: data.get(#status, or: $value.status));

  @override
  RefreshStateCopyWith<$R2, RefreshState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _RefreshStateCopyWithImpl($value, $cast, t);
}

class RefreshBaseStatusMapper extends ClassMapperBase<RefreshBaseStatus> {
  RefreshBaseStatusMapper._();

  static RefreshBaseStatusMapper? _instance;
  static RefreshBaseStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RefreshBaseStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RefreshBaseStatus';

  static bool _$isLoading(RefreshBaseStatus v) => v.isLoading;
  static const Field<RefreshBaseStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(RefreshBaseStatus v) => v.errorMessage;
  static const Field<RefreshBaseStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(RefreshBaseStatus v) => v.isInitialized;
  static const Field<RefreshBaseStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: true);

  @override
  final MappableFields<RefreshBaseStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static RefreshBaseStatus _instantiate(DecodingData data) {
    return RefreshBaseStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin RefreshBaseStatusMappable {
  RefreshBaseStatusCopyWith<RefreshBaseStatus, RefreshBaseStatus,
          RefreshBaseStatus>
      get copyWith => _RefreshBaseStatusCopyWithImpl(
          this as RefreshBaseStatus, $identity, $identity);
  @override
  String toString() {
    return RefreshBaseStatusMapper.ensureInitialized()
        .stringifyValue(this as RefreshBaseStatus);
  }

  @override
  bool operator ==(Object other) {
    return RefreshBaseStatusMapper.ensureInitialized()
        .equalsValue(this as RefreshBaseStatus, other);
  }

  @override
  int get hashCode {
    return RefreshBaseStatusMapper.ensureInitialized()
        .hashValue(this as RefreshBaseStatus);
  }
}

extension RefreshBaseStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RefreshBaseStatus, $Out> {
  RefreshBaseStatusCopyWith<$R, RefreshBaseStatus, $Out>
      get $asRefreshBaseStatus =>
          $base.as((v, t, t2) => _RefreshBaseStatusCopyWithImpl(v, t, t2));
}

abstract class RefreshBaseStatusCopyWith<$R, $In extends RefreshBaseStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  RefreshBaseStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _RefreshBaseStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RefreshBaseStatus, $Out>
    implements RefreshBaseStatusCopyWith<$R, RefreshBaseStatus, $Out> {
  _RefreshBaseStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RefreshBaseStatus> $mapper =
      RefreshBaseStatusMapper.ensureInitialized();
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
  RefreshBaseStatus $make(CopyWithData data) => RefreshBaseStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  RefreshBaseStatusCopyWith<$R2, RefreshBaseStatus, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _RefreshBaseStatusCopyWithImpl($value, $cast, t);
}

class LangUpdatedStatusMapper extends ClassMapperBase<LangUpdatedStatus> {
  LangUpdatedStatusMapper._();

  static LangUpdatedStatusMapper? _instance;
  static LangUpdatedStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LangUpdatedStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'LangUpdatedStatus';

  static bool _$isLoading(LangUpdatedStatus v) => v.isLoading;
  static const Field<LangUpdatedStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(LangUpdatedStatus v) => v.errorMessage;
  static const Field<LangUpdatedStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(LangUpdatedStatus v) => v.isInitialized;
  static const Field<LangUpdatedStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: true);

  @override
  final MappableFields<LangUpdatedStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static LangUpdatedStatus _instantiate(DecodingData data) {
    return LangUpdatedStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin LangUpdatedStatusMappable {
  LangUpdatedStatusCopyWith<LangUpdatedStatus, LangUpdatedStatus,
          LangUpdatedStatus>
      get copyWith => _LangUpdatedStatusCopyWithImpl(
          this as LangUpdatedStatus, $identity, $identity);
  @override
  String toString() {
    return LangUpdatedStatusMapper.ensureInitialized()
        .stringifyValue(this as LangUpdatedStatus);
  }

  @override
  bool operator ==(Object other) {
    return LangUpdatedStatusMapper.ensureInitialized()
        .equalsValue(this as LangUpdatedStatus, other);
  }

  @override
  int get hashCode {
    return LangUpdatedStatusMapper.ensureInitialized()
        .hashValue(this as LangUpdatedStatus);
  }
}

extension LangUpdatedStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LangUpdatedStatus, $Out> {
  LangUpdatedStatusCopyWith<$R, LangUpdatedStatus, $Out>
      get $asLangUpdatedStatus =>
          $base.as((v, t, t2) => _LangUpdatedStatusCopyWithImpl(v, t, t2));
}

abstract class LangUpdatedStatusCopyWith<$R, $In extends LangUpdatedStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  LangUpdatedStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _LangUpdatedStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LangUpdatedStatus, $Out>
    implements LangUpdatedStatusCopyWith<$R, LangUpdatedStatus, $Out> {
  _LangUpdatedStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LangUpdatedStatus> $mapper =
      LangUpdatedStatusMapper.ensureInitialized();
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
  LangUpdatedStatus $make(CopyWithData data) => LangUpdatedStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  LangUpdatedStatusCopyWith<$R2, LangUpdatedStatus, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LangUpdatedStatusCopyWithImpl($value, $cast, t);
}
