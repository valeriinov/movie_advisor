// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'delete_account_state.dart';

class DeleteAccountStateMapper extends ClassMapperBase<DeleteAccountState> {
  DeleteAccountStateMapper._();

  static DeleteAccountStateMapper? _instance;
  static DeleteAccountStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DeleteAccountStateMapper._());
      DeleteAccountFormStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DeleteAccountState';

  static DeleteAccountFormState _$formState(DeleteAccountState v) =>
      v.formState;
  static const Field<DeleteAccountState, DeleteAccountFormState> _f$formState =
      Field('formState', _$formState,
          opt: true, def: const DeleteAccountFormState());
  static DeleteAccountStatus _$status(DeleteAccountState v) => v.status;
  static const Field<DeleteAccountState, DeleteAccountStatus> _f$status = Field(
      'status', _$status,
      opt: true, def: const DeleteAccountBaseStatus());

  @override
  final MappableFields<DeleteAccountState> fields = const {
    #formState: _f$formState,
    #status: _f$status,
  };

  static DeleteAccountState _instantiate(DecodingData data) {
    return DeleteAccountState(
        formState: data.dec(_f$formState), status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin DeleteAccountStateMappable {
  DeleteAccountStateCopyWith<DeleteAccountState, DeleteAccountState,
          DeleteAccountState>
      get copyWith => _DeleteAccountStateCopyWithImpl(
          this as DeleteAccountState, $identity, $identity);
  @override
  String toString() {
    return DeleteAccountStateMapper.ensureInitialized()
        .stringifyValue(this as DeleteAccountState);
  }

  @override
  bool operator ==(Object other) {
    return DeleteAccountStateMapper.ensureInitialized()
        .equalsValue(this as DeleteAccountState, other);
  }

  @override
  int get hashCode {
    return DeleteAccountStateMapper.ensureInitialized()
        .hashValue(this as DeleteAccountState);
  }
}

extension DeleteAccountStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DeleteAccountState, $Out> {
  DeleteAccountStateCopyWith<$R, DeleteAccountState, $Out>
      get $asDeleteAccountState =>
          $base.as((v, t, t2) => _DeleteAccountStateCopyWithImpl(v, t, t2));
}

abstract class DeleteAccountStateCopyWith<$R, $In extends DeleteAccountState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  DeleteAccountFormStateCopyWith<$R, DeleteAccountFormState,
      DeleteAccountFormState> get formState;
  $R call({DeleteAccountFormState? formState, DeleteAccountStatus? status});
  DeleteAccountStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _DeleteAccountStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DeleteAccountState, $Out>
    implements DeleteAccountStateCopyWith<$R, DeleteAccountState, $Out> {
  _DeleteAccountStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DeleteAccountState> $mapper =
      DeleteAccountStateMapper.ensureInitialized();
  @override
  DeleteAccountFormStateCopyWith<$R, DeleteAccountFormState,
          DeleteAccountFormState>
      get formState =>
          $value.formState.copyWith.$chain((v) => call(formState: v));
  @override
  $R call({DeleteAccountFormState? formState, DeleteAccountStatus? status}) =>
      $apply(FieldCopyWithData({
        if (formState != null) #formState: formState,
        if (status != null) #status: status
      }));
  @override
  DeleteAccountState $make(CopyWithData data) => DeleteAccountState(
      formState: data.get(#formState, or: $value.formState),
      status: data.get(#status, or: $value.status));

  @override
  DeleteAccountStateCopyWith<$R2, DeleteAccountState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DeleteAccountStateCopyWithImpl($value, $cast, t);
}

class DeleteAccountBaseStatusMapper
    extends ClassMapperBase<DeleteAccountBaseStatus> {
  DeleteAccountBaseStatusMapper._();

  static DeleteAccountBaseStatusMapper? _instance;
  static DeleteAccountBaseStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = DeleteAccountBaseStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DeleteAccountBaseStatus';

  static bool _$isLoading(DeleteAccountBaseStatus v) => v.isLoading;
  static const Field<DeleteAccountBaseStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(DeleteAccountBaseStatus v) => v.errorMessage;
  static const Field<DeleteAccountBaseStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(DeleteAccountBaseStatus v) => v.isInitialized;
  static const Field<DeleteAccountBaseStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: false);

  @override
  final MappableFields<DeleteAccountBaseStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static DeleteAccountBaseStatus _instantiate(DecodingData data) {
    return DeleteAccountBaseStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin DeleteAccountBaseStatusMappable {
  DeleteAccountBaseStatusCopyWith<DeleteAccountBaseStatus,
          DeleteAccountBaseStatus, DeleteAccountBaseStatus>
      get copyWith => _DeleteAccountBaseStatusCopyWithImpl(
          this as DeleteAccountBaseStatus, $identity, $identity);
  @override
  String toString() {
    return DeleteAccountBaseStatusMapper.ensureInitialized()
        .stringifyValue(this as DeleteAccountBaseStatus);
  }

  @override
  bool operator ==(Object other) {
    return DeleteAccountBaseStatusMapper.ensureInitialized()
        .equalsValue(this as DeleteAccountBaseStatus, other);
  }

  @override
  int get hashCode {
    return DeleteAccountBaseStatusMapper.ensureInitialized()
        .hashValue(this as DeleteAccountBaseStatus);
  }
}

extension DeleteAccountBaseStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DeleteAccountBaseStatus, $Out> {
  DeleteAccountBaseStatusCopyWith<$R, DeleteAccountBaseStatus, $Out>
      get $asDeleteAccountBaseStatus => $base
          .as((v, t, t2) => _DeleteAccountBaseStatusCopyWithImpl(v, t, t2));
}

abstract class DeleteAccountBaseStatusCopyWith<
    $R,
    $In extends DeleteAccountBaseStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  DeleteAccountBaseStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _DeleteAccountBaseStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DeleteAccountBaseStatus, $Out>
    implements
        DeleteAccountBaseStatusCopyWith<$R, DeleteAccountBaseStatus, $Out> {
  _DeleteAccountBaseStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DeleteAccountBaseStatus> $mapper =
      DeleteAccountBaseStatusMapper.ensureInitialized();
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
  DeleteAccountBaseStatus $make(CopyWithData data) => DeleteAccountBaseStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  DeleteAccountBaseStatusCopyWith<$R2, DeleteAccountBaseStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _DeleteAccountBaseStatusCopyWithImpl($value, $cast, t);
}

class DeleteAccountBaseInitStatusMapper
    extends ClassMapperBase<DeleteAccountBaseInitStatus> {
  DeleteAccountBaseInitStatusMapper._();

  static DeleteAccountBaseInitStatusMapper? _instance;
  static DeleteAccountBaseInitStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = DeleteAccountBaseInitStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DeleteAccountBaseInitStatus';

  static bool _$isLoading(DeleteAccountBaseInitStatus v) => v.isLoading;
  static const Field<DeleteAccountBaseInitStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(DeleteAccountBaseInitStatus v) =>
      v.errorMessage;
  static const Field<DeleteAccountBaseInitStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(DeleteAccountBaseInitStatus v) => v.isInitialized;
  static const Field<DeleteAccountBaseInitStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: true);

  @override
  final MappableFields<DeleteAccountBaseInitStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static DeleteAccountBaseInitStatus _instantiate(DecodingData data) {
    return DeleteAccountBaseInitStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin DeleteAccountBaseInitStatusMappable {
  DeleteAccountBaseInitStatusCopyWith<DeleteAccountBaseInitStatus,
          DeleteAccountBaseInitStatus, DeleteAccountBaseInitStatus>
      get copyWith => _DeleteAccountBaseInitStatusCopyWithImpl(
          this as DeleteAccountBaseInitStatus, $identity, $identity);
  @override
  String toString() {
    return DeleteAccountBaseInitStatusMapper.ensureInitialized()
        .stringifyValue(this as DeleteAccountBaseInitStatus);
  }

  @override
  bool operator ==(Object other) {
    return DeleteAccountBaseInitStatusMapper.ensureInitialized()
        .equalsValue(this as DeleteAccountBaseInitStatus, other);
  }

  @override
  int get hashCode {
    return DeleteAccountBaseInitStatusMapper.ensureInitialized()
        .hashValue(this as DeleteAccountBaseInitStatus);
  }
}

extension DeleteAccountBaseInitStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DeleteAccountBaseInitStatus, $Out> {
  DeleteAccountBaseInitStatusCopyWith<$R, DeleteAccountBaseInitStatus, $Out>
      get $asDeleteAccountBaseInitStatus => $base
          .as((v, t, t2) => _DeleteAccountBaseInitStatusCopyWithImpl(v, t, t2));
}

abstract class DeleteAccountBaseInitStatusCopyWith<
    $R,
    $In extends DeleteAccountBaseInitStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  DeleteAccountBaseInitStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _DeleteAccountBaseInitStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DeleteAccountBaseInitStatus, $Out>
    implements
        DeleteAccountBaseInitStatusCopyWith<$R, DeleteAccountBaseInitStatus,
            $Out> {
  _DeleteAccountBaseInitStatusCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DeleteAccountBaseInitStatus> $mapper =
      DeleteAccountBaseInitStatusMapper.ensureInitialized();
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
  DeleteAccountBaseInitStatus $make(CopyWithData data) =>
      DeleteAccountBaseInitStatus(
          isLoading: data.get(#isLoading, or: $value.isLoading),
          errorMessage: data.get(#errorMessage, or: $value.errorMessage),
          isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  DeleteAccountBaseInitStatusCopyWith<$R2, DeleteAccountBaseInitStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _DeleteAccountBaseInitStatusCopyWithImpl($value, $cast, t);
}

class DeleteAccountSuccessStatusMapper
    extends ClassMapperBase<DeleteAccountSuccessStatus> {
  DeleteAccountSuccessStatusMapper._();

  static DeleteAccountSuccessStatusMapper? _instance;
  static DeleteAccountSuccessStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = DeleteAccountSuccessStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DeleteAccountSuccessStatus';

  static bool _$isLoading(DeleteAccountSuccessStatus v) => v.isLoading;
  static const Field<DeleteAccountSuccessStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(DeleteAccountSuccessStatus v) => v.errorMessage;
  static const Field<DeleteAccountSuccessStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(DeleteAccountSuccessStatus v) => v.isInitialized;
  static const Field<DeleteAccountSuccessStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: true);

  @override
  final MappableFields<DeleteAccountSuccessStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static DeleteAccountSuccessStatus _instantiate(DecodingData data) {
    return DeleteAccountSuccessStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin DeleteAccountSuccessStatusMappable {
  DeleteAccountSuccessStatusCopyWith<DeleteAccountSuccessStatus,
          DeleteAccountSuccessStatus, DeleteAccountSuccessStatus>
      get copyWith => _DeleteAccountSuccessStatusCopyWithImpl(
          this as DeleteAccountSuccessStatus, $identity, $identity);
  @override
  String toString() {
    return DeleteAccountSuccessStatusMapper.ensureInitialized()
        .stringifyValue(this as DeleteAccountSuccessStatus);
  }

  @override
  bool operator ==(Object other) {
    return DeleteAccountSuccessStatusMapper.ensureInitialized()
        .equalsValue(this as DeleteAccountSuccessStatus, other);
  }

  @override
  int get hashCode {
    return DeleteAccountSuccessStatusMapper.ensureInitialized()
        .hashValue(this as DeleteAccountSuccessStatus);
  }
}

extension DeleteAccountSuccessStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DeleteAccountSuccessStatus, $Out> {
  DeleteAccountSuccessStatusCopyWith<$R, DeleteAccountSuccessStatus, $Out>
      get $asDeleteAccountSuccessStatus => $base
          .as((v, t, t2) => _DeleteAccountSuccessStatusCopyWithImpl(v, t, t2));
}

abstract class DeleteAccountSuccessStatusCopyWith<
    $R,
    $In extends DeleteAccountSuccessStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  DeleteAccountSuccessStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _DeleteAccountSuccessStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DeleteAccountSuccessStatus, $Out>
    implements
        DeleteAccountSuccessStatusCopyWith<$R, DeleteAccountSuccessStatus,
            $Out> {
  _DeleteAccountSuccessStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DeleteAccountSuccessStatus> $mapper =
      DeleteAccountSuccessStatusMapper.ensureInitialized();
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
  DeleteAccountSuccessStatus $make(CopyWithData data) =>
      DeleteAccountSuccessStatus(
          isLoading: data.get(#isLoading, or: $value.isLoading),
          errorMessage: data.get(#errorMessage, or: $value.errorMessage),
          isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  DeleteAccountSuccessStatusCopyWith<$R2, DeleteAccountSuccessStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _DeleteAccountSuccessStatusCopyWithImpl($value, $cast, t);
}
