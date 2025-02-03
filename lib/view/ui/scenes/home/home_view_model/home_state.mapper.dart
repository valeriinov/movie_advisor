// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'home_state.dart';

class HomeStateMapper extends ClassMapperBase<HomeState> {
  HomeStateMapper._();

  static HomeStateMapper? _instance;
  static HomeStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HomeStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'HomeState';

  static HomeStatus _$status(HomeState v) => v.status;
  static const Field<HomeState, HomeStatus> _f$status =
      Field('status', _$status, opt: true, def: const HomeBaseStatus());

  @override
  final MappableFields<HomeState> fields = const {
    #status: _f$status,
  };

  static HomeState _instantiate(DecodingData data) {
    return HomeState(status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin HomeStateMappable {
  HomeStateCopyWith<HomeState, HomeState, HomeState> get copyWith =>
      _HomeStateCopyWithImpl(this as HomeState, $identity, $identity);
  @override
  String toString() {
    return HomeStateMapper.ensureInitialized()
        .stringifyValue(this as HomeState);
  }

  @override
  bool operator ==(Object other) {
    return HomeStateMapper.ensureInitialized()
        .equalsValue(this as HomeState, other);
  }

  @override
  int get hashCode {
    return HomeStateMapper.ensureInitialized().hashValue(this as HomeState);
  }
}

extension HomeStateValueCopy<$R, $Out> on ObjectCopyWith<$R, HomeState, $Out> {
  HomeStateCopyWith<$R, HomeState, $Out> get $asHomeState =>
      $base.as((v, t, t2) => _HomeStateCopyWithImpl(v, t, t2));
}

abstract class HomeStateCopyWith<$R, $In extends HomeState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({HomeStatus? status});
  HomeStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _HomeStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, HomeState, $Out>
    implements HomeStateCopyWith<$R, HomeState, $Out> {
  _HomeStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<HomeState> $mapper =
      HomeStateMapper.ensureInitialized();
  @override
  $R call({HomeStatus? status}) =>
      $apply(FieldCopyWithData({if (status != null) #status: status}));
  @override
  HomeState $make(CopyWithData data) =>
      HomeState(status: data.get(#status, or: $value.status));

  @override
  HomeStateCopyWith<$R2, HomeState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _HomeStateCopyWithImpl($value, $cast, t);
}

class HomeBaseStatusMapper extends ClassMapperBase<HomeBaseStatus> {
  HomeBaseStatusMapper._();

  static HomeBaseStatusMapper? _instance;
  static HomeBaseStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HomeBaseStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'HomeBaseStatus';

  static bool _$isLoading(HomeBaseStatus v) => v.isLoading;
  static const Field<HomeBaseStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(HomeBaseStatus v) => v.errorMessage;
  static const Field<HomeBaseStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(HomeBaseStatus v) => v.isInitialized;
  static const Field<HomeBaseStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: false);

  @override
  final MappableFields<HomeBaseStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static HomeBaseStatus _instantiate(DecodingData data) {
    return HomeBaseStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin HomeBaseStatusMappable {
  HomeBaseStatusCopyWith<HomeBaseStatus, HomeBaseStatus, HomeBaseStatus>
      get copyWith => _HomeBaseStatusCopyWithImpl(
          this as HomeBaseStatus, $identity, $identity);
  @override
  String toString() {
    return HomeBaseStatusMapper.ensureInitialized()
        .stringifyValue(this as HomeBaseStatus);
  }

  @override
  bool operator ==(Object other) {
    return HomeBaseStatusMapper.ensureInitialized()
        .equalsValue(this as HomeBaseStatus, other);
  }

  @override
  int get hashCode {
    return HomeBaseStatusMapper.ensureInitialized()
        .hashValue(this as HomeBaseStatus);
  }
}

extension HomeBaseStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, HomeBaseStatus, $Out> {
  HomeBaseStatusCopyWith<$R, HomeBaseStatus, $Out> get $asHomeBaseStatus =>
      $base.as((v, t, t2) => _HomeBaseStatusCopyWithImpl(v, t, t2));
}

abstract class HomeBaseStatusCopyWith<$R, $In extends HomeBaseStatus, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  HomeBaseStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _HomeBaseStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, HomeBaseStatus, $Out>
    implements HomeBaseStatusCopyWith<$R, HomeBaseStatus, $Out> {
  _HomeBaseStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<HomeBaseStatus> $mapper =
      HomeBaseStatusMapper.ensureInitialized();
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
  HomeBaseStatus $make(CopyWithData data) => HomeBaseStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  HomeBaseStatusCopyWith<$R2, HomeBaseStatus, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _HomeBaseStatusCopyWithImpl($value, $cast, t);
}

class HomeBaseInitStatusMapper extends ClassMapperBase<HomeBaseInitStatus> {
  HomeBaseInitStatusMapper._();

  static HomeBaseInitStatusMapper? _instance;
  static HomeBaseInitStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HomeBaseInitStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'HomeBaseInitStatus';

  static bool _$isLoading(HomeBaseInitStatus v) => v.isLoading;
  static const Field<HomeBaseInitStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(HomeBaseInitStatus v) => v.errorMessage;
  static const Field<HomeBaseInitStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(HomeBaseInitStatus v) => v.isInitialized;
  static const Field<HomeBaseInitStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: true);

  @override
  final MappableFields<HomeBaseInitStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static HomeBaseInitStatus _instantiate(DecodingData data) {
    return HomeBaseInitStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin HomeBaseInitStatusMappable {
  HomeBaseInitStatusCopyWith<HomeBaseInitStatus, HomeBaseInitStatus,
          HomeBaseInitStatus>
      get copyWith => _HomeBaseInitStatusCopyWithImpl(
          this as HomeBaseInitStatus, $identity, $identity);
  @override
  String toString() {
    return HomeBaseInitStatusMapper.ensureInitialized()
        .stringifyValue(this as HomeBaseInitStatus);
  }

  @override
  bool operator ==(Object other) {
    return HomeBaseInitStatusMapper.ensureInitialized()
        .equalsValue(this as HomeBaseInitStatus, other);
  }

  @override
  int get hashCode {
    return HomeBaseInitStatusMapper.ensureInitialized()
        .hashValue(this as HomeBaseInitStatus);
  }
}

extension HomeBaseInitStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, HomeBaseInitStatus, $Out> {
  HomeBaseInitStatusCopyWith<$R, HomeBaseInitStatus, $Out>
      get $asHomeBaseInitStatus =>
          $base.as((v, t, t2) => _HomeBaseInitStatusCopyWithImpl(v, t, t2));
}

abstract class HomeBaseInitStatusCopyWith<$R, $In extends HomeBaseInitStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  HomeBaseInitStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _HomeBaseInitStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, HomeBaseInitStatus, $Out>
    implements HomeBaseInitStatusCopyWith<$R, HomeBaseInitStatus, $Out> {
  _HomeBaseInitStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<HomeBaseInitStatus> $mapper =
      HomeBaseInitStatusMapper.ensureInitialized();
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
  HomeBaseInitStatus $make(CopyWithData data) => HomeBaseInitStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  HomeBaseInitStatusCopyWith<$R2, HomeBaseInitStatus, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _HomeBaseInitStatusCopyWithImpl($value, $cast, t);
}
