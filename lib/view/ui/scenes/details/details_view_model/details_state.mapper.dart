// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'details_state.dart';

class DetailsStateMapper extends ClassMapperBase<DetailsState> {
  DetailsStateMapper._();

  static DetailsStateMapper? _instance;
  static DetailsStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DetailsStateMapper._());
      MediaDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DetailsState';
  @override
  Function get typeFactory => <T extends MediaData>(f) => f<DetailsState<T>>();

  static MediaData _$data(DetailsState v) => v.data;
  static dynamic _arg$data<T extends MediaData>(f) => f<T>();
  static const Field<DetailsState, MediaData> _f$data =
      Field('data', _$data, arg: _arg$data);
  static DetailsStatus _$status(DetailsState v) => v.status;
  static const Field<DetailsState, DetailsStatus> _f$status =
      Field('status', _$status, opt: true, def: const DetailsBaseStatus());

  @override
  final MappableFields<DetailsState> fields = const {
    #data: _f$data,
    #status: _f$status,
  };

  static DetailsState<T> _instantiate<T extends MediaData>(DecodingData data) {
    return DetailsState(data: data.dec(_f$data), status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin DetailsStateMappable<T extends MediaData> {
  DetailsStateCopyWith<DetailsState<T>, DetailsState<T>, DetailsState<T>, T>
      get copyWith => _DetailsStateCopyWithImpl(
          this as DetailsState<T>, $identity, $identity);
  @override
  String toString() {
    return DetailsStateMapper.ensureInitialized()
        .stringifyValue(this as DetailsState<T>);
  }

  @override
  bool operator ==(Object other) {
    return DetailsStateMapper.ensureInitialized()
        .equalsValue(this as DetailsState<T>, other);
  }

  @override
  int get hashCode {
    return DetailsStateMapper.ensureInitialized()
        .hashValue(this as DetailsState<T>);
  }
}

extension DetailsStateValueCopy<$R, $Out, T extends MediaData>
    on ObjectCopyWith<$R, DetailsState<T>, $Out> {
  DetailsStateCopyWith<$R, DetailsState<T>, $Out, T> get $asDetailsState =>
      $base.as((v, t, t2) => _DetailsStateCopyWithImpl(v, t, t2));
}

abstract class DetailsStateCopyWith<$R, $In extends DetailsState<T>, $Out,
    T extends MediaData> implements ClassCopyWith<$R, $In, $Out> {
  $R call({T? data, DetailsStatus? status});
  DetailsStateCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _DetailsStateCopyWithImpl<$R, $Out, T extends MediaData>
    extends ClassCopyWithBase<$R, DetailsState<T>, $Out>
    implements DetailsStateCopyWith<$R, DetailsState<T>, $Out, T> {
  _DetailsStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DetailsState> $mapper =
      DetailsStateMapper.ensureInitialized();
  @override
  $R call({T? data, DetailsStatus? status}) => $apply(FieldCopyWithData(
      {if (data != null) #data: data, if (status != null) #status: status}));
  @override
  DetailsState<T> $make(CopyWithData data) => DetailsState(
      data: data.get(#data, or: $value.data),
      status: data.get(#status, or: $value.status));

  @override
  DetailsStateCopyWith<$R2, DetailsState<T>, $Out2, T> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DetailsStateCopyWithImpl($value, $cast, t);
}

class DetailsBaseStatusMapper extends ClassMapperBase<DetailsBaseStatus> {
  DetailsBaseStatusMapper._();

  static DetailsBaseStatusMapper? _instance;
  static DetailsBaseStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DetailsBaseStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DetailsBaseStatus';

  static bool _$isLoading(DetailsBaseStatus v) => v.isLoading;
  static const Field<DetailsBaseStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(DetailsBaseStatus v) => v.errorMessage;
  static const Field<DetailsBaseStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(DetailsBaseStatus v) => v.isInitialized;
  static const Field<DetailsBaseStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: false);

  @override
  final MappableFields<DetailsBaseStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static DetailsBaseStatus _instantiate(DecodingData data) {
    return DetailsBaseStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin DetailsBaseStatusMappable {
  DetailsBaseStatusCopyWith<DetailsBaseStatus, DetailsBaseStatus,
          DetailsBaseStatus>
      get copyWith => _DetailsBaseStatusCopyWithImpl(
          this as DetailsBaseStatus, $identity, $identity);
  @override
  String toString() {
    return DetailsBaseStatusMapper.ensureInitialized()
        .stringifyValue(this as DetailsBaseStatus);
  }

  @override
  bool operator ==(Object other) {
    return DetailsBaseStatusMapper.ensureInitialized()
        .equalsValue(this as DetailsBaseStatus, other);
  }

  @override
  int get hashCode {
    return DetailsBaseStatusMapper.ensureInitialized()
        .hashValue(this as DetailsBaseStatus);
  }
}

extension DetailsBaseStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DetailsBaseStatus, $Out> {
  DetailsBaseStatusCopyWith<$R, DetailsBaseStatus, $Out>
      get $asDetailsBaseStatus =>
          $base.as((v, t, t2) => _DetailsBaseStatusCopyWithImpl(v, t, t2));
}

abstract class DetailsBaseStatusCopyWith<$R, $In extends DetailsBaseStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  DetailsBaseStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _DetailsBaseStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DetailsBaseStatus, $Out>
    implements DetailsBaseStatusCopyWith<$R, DetailsBaseStatus, $Out> {
  _DetailsBaseStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DetailsBaseStatus> $mapper =
      DetailsBaseStatusMapper.ensureInitialized();
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
  DetailsBaseStatus $make(CopyWithData data) => DetailsBaseStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  DetailsBaseStatusCopyWith<$R2, DetailsBaseStatus, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DetailsBaseStatusCopyWithImpl($value, $cast, t);
}

class DetailsBaseInitStatusMapper
    extends ClassMapperBase<DetailsBaseInitStatus> {
  DetailsBaseInitStatusMapper._();

  static DetailsBaseInitStatusMapper? _instance;
  static DetailsBaseInitStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DetailsBaseInitStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DetailsBaseInitStatus';

  static bool _$isLoading(DetailsBaseInitStatus v) => v.isLoading;
  static const Field<DetailsBaseInitStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(DetailsBaseInitStatus v) => v.errorMessage;
  static const Field<DetailsBaseInitStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(DetailsBaseInitStatus v) => v.isInitialized;
  static const Field<DetailsBaseInitStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: true);

  @override
  final MappableFields<DetailsBaseInitStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static DetailsBaseInitStatus _instantiate(DecodingData data) {
    return DetailsBaseInitStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin DetailsBaseInitStatusMappable {
  DetailsBaseInitStatusCopyWith<DetailsBaseInitStatus, DetailsBaseInitStatus,
          DetailsBaseInitStatus>
      get copyWith => _DetailsBaseInitStatusCopyWithImpl(
          this as DetailsBaseInitStatus, $identity, $identity);
  @override
  String toString() {
    return DetailsBaseInitStatusMapper.ensureInitialized()
        .stringifyValue(this as DetailsBaseInitStatus);
  }

  @override
  bool operator ==(Object other) {
    return DetailsBaseInitStatusMapper.ensureInitialized()
        .equalsValue(this as DetailsBaseInitStatus, other);
  }

  @override
  int get hashCode {
    return DetailsBaseInitStatusMapper.ensureInitialized()
        .hashValue(this as DetailsBaseInitStatus);
  }
}

extension DetailsBaseInitStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DetailsBaseInitStatus, $Out> {
  DetailsBaseInitStatusCopyWith<$R, DetailsBaseInitStatus, $Out>
      get $asDetailsBaseInitStatus =>
          $base.as((v, t, t2) => _DetailsBaseInitStatusCopyWithImpl(v, t, t2));
}

abstract class DetailsBaseInitStatusCopyWith<
    $R,
    $In extends DetailsBaseInitStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  DetailsBaseInitStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _DetailsBaseInitStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DetailsBaseInitStatus, $Out>
    implements DetailsBaseInitStatusCopyWith<$R, DetailsBaseInitStatus, $Out> {
  _DetailsBaseInitStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DetailsBaseInitStatus> $mapper =
      DetailsBaseInitStatusMapper.ensureInitialized();
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
  DetailsBaseInitStatus $make(CopyWithData data) => DetailsBaseInitStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  DetailsBaseInitStatusCopyWith<$R2, DetailsBaseInitStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _DetailsBaseInitStatusCopyWithImpl($value, $cast, t);
}
