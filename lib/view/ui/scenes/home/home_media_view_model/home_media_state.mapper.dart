// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'home_media_state.dart';

class HomeMediaStateMapper extends ClassMapperBase<HomeMediaState> {
  HomeMediaStateMapper._();

  static HomeMediaStateMapper? _instance;
  static HomeMediaStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HomeMediaStateMapper._());
      MediaLoadInfoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'HomeMediaState';
  @override
  Function get typeFactory => <T>(f) => f<HomeMediaState<T>>();

  static MediaTab _$currentTab(HomeMediaState v) => v.currentTab;
  static const Field<HomeMediaState, MediaTab> _f$currentTab =
      Field('currentTab', _$currentTab, opt: true, def: MediaTab.nowPlaying);
  static MediaLoadInfo<dynamic> _$sugCont(HomeMediaState v) => v.sugCont;
  static dynamic _arg$sugCont<T>(f) => f<MediaLoadInfo<T>>();
  static const Field<HomeMediaState, MediaLoadInfo<dynamic>> _f$sugCont =
      Field('sugCont', _$sugCont, opt: true, arg: _arg$sugCont);
  static MediaLoadInfo<dynamic> _$tabCont(HomeMediaState v) => v.tabCont;
  static dynamic _arg$tabCont<T>(f) => f<MediaLoadInfo<T>>();
  static const Field<HomeMediaState, MediaLoadInfo<dynamic>> _f$tabCont =
      Field('tabCont', _$tabCont, opt: true, arg: _arg$tabCont);
  static HomeMediaStatus _$status(HomeMediaState v) => v.status;
  static const Field<HomeMediaState, HomeMediaStatus> _f$status =
      Field('status', _$status, opt: true, def: const HomeMediaBaseStatus());

  @override
  final MappableFields<HomeMediaState> fields = const {
    #currentTab: _f$currentTab,
    #sugCont: _f$sugCont,
    #tabCont: _f$tabCont,
    #status: _f$status,
  };

  static HomeMediaState<T> _instantiate<T>(DecodingData data) {
    return HomeMediaState(
        currentTab: data.dec(_f$currentTab),
        sugCont: data.dec(_f$sugCont),
        tabCont: data.dec(_f$tabCont),
        status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin HomeMediaStateMappable<T> {
  HomeMediaStateCopyWith<HomeMediaState<T>, HomeMediaState<T>,
          HomeMediaState<T>, T>
      get copyWith => _HomeMediaStateCopyWithImpl(
          this as HomeMediaState<T>, $identity, $identity);
  @override
  String toString() {
    return HomeMediaStateMapper.ensureInitialized()
        .stringifyValue(this as HomeMediaState<T>);
  }

  @override
  bool operator ==(Object other) {
    return HomeMediaStateMapper.ensureInitialized()
        .equalsValue(this as HomeMediaState<T>, other);
  }

  @override
  int get hashCode {
    return HomeMediaStateMapper.ensureInitialized()
        .hashValue(this as HomeMediaState<T>);
  }
}

extension HomeMediaStateValueCopy<$R, $Out, T>
    on ObjectCopyWith<$R, HomeMediaState<T>, $Out> {
  HomeMediaStateCopyWith<$R, HomeMediaState<T>, $Out, T>
      get $asHomeMediaState =>
          $base.as((v, t, t2) => _HomeMediaStateCopyWithImpl(v, t, t2));
}

abstract class HomeMediaStateCopyWith<$R, $In extends HomeMediaState<T>, $Out,
    T> implements ClassCopyWith<$R, $In, $Out> {
  MediaLoadInfoCopyWith<$R, MediaLoadInfo<dynamic>, MediaLoadInfo<T>, T>
      get sugCont;
  MediaLoadInfoCopyWith<$R, MediaLoadInfo<dynamic>, MediaLoadInfo<T>, T>
      get tabCont;
  $R call(
      {MediaTab? currentTab,
      MediaLoadInfo<T>? sugCont,
      MediaLoadInfo<T>? tabCont,
      HomeMediaStatus? status});
  HomeMediaStateCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _HomeMediaStateCopyWithImpl<$R, $Out, T>
    extends ClassCopyWithBase<$R, HomeMediaState<T>, $Out>
    implements HomeMediaStateCopyWith<$R, HomeMediaState<T>, $Out, T> {
  _HomeMediaStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<HomeMediaState> $mapper =
      HomeMediaStateMapper.ensureInitialized();
  @override
  MediaLoadInfoCopyWith<$R, MediaLoadInfo<dynamic>, MediaLoadInfo<T>, T>
      get sugCont => ($value.sugCont as MediaLoadInfo<T>)
          .copyWith
          .$chain((v) => call(sugCont: v));
  @override
  MediaLoadInfoCopyWith<$R, MediaLoadInfo<dynamic>, MediaLoadInfo<T>, T>
      get tabCont => ($value.tabCont as MediaLoadInfo<T>)
          .copyWith
          .$chain((v) => call(tabCont: v));
  @override
  $R call(
          {MediaTab? currentTab,
          Object? sugCont = $none,
          Object? tabCont = $none,
          HomeMediaStatus? status}) =>
      $apply(FieldCopyWithData({
        if (currentTab != null) #currentTab: currentTab,
        if (sugCont != $none) #sugCont: sugCont,
        if (tabCont != $none) #tabCont: tabCont,
        if (status != null) #status: status
      }));
  @override
  HomeMediaState<T> $make(CopyWithData data) => HomeMediaState(
      currentTab: data.get(#currentTab, or: $value.currentTab),
      sugCont: data.get(#sugCont, or: $value.sugCont),
      tabCont: data.get(#tabCont, or: $value.tabCont),
      status: data.get(#status, or: $value.status));

  @override
  HomeMediaStateCopyWith<$R2, HomeMediaState<T>, $Out2, T> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _HomeMediaStateCopyWithImpl($value, $cast, t);
}

class HomeMediaBaseStatusMapper extends ClassMapperBase<HomeMediaBaseStatus> {
  HomeMediaBaseStatusMapper._();

  static HomeMediaBaseStatusMapper? _instance;
  static HomeMediaBaseStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HomeMediaBaseStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'HomeMediaBaseStatus';

  static bool _$isLoading(HomeMediaBaseStatus v) => v.isLoading;
  static const Field<HomeMediaBaseStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(HomeMediaBaseStatus v) => v.errorMessage;
  static const Field<HomeMediaBaseStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(HomeMediaBaseStatus v) => v.isInitialized;
  static const Field<HomeMediaBaseStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: false);

  @override
  final MappableFields<HomeMediaBaseStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static HomeMediaBaseStatus _instantiate(DecodingData data) {
    return HomeMediaBaseStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin HomeMediaBaseStatusMappable {
  HomeMediaBaseStatusCopyWith<HomeMediaBaseStatus, HomeMediaBaseStatus,
          HomeMediaBaseStatus>
      get copyWith => _HomeMediaBaseStatusCopyWithImpl(
          this as HomeMediaBaseStatus, $identity, $identity);
  @override
  String toString() {
    return HomeMediaBaseStatusMapper.ensureInitialized()
        .stringifyValue(this as HomeMediaBaseStatus);
  }

  @override
  bool operator ==(Object other) {
    return HomeMediaBaseStatusMapper.ensureInitialized()
        .equalsValue(this as HomeMediaBaseStatus, other);
  }

  @override
  int get hashCode {
    return HomeMediaBaseStatusMapper.ensureInitialized()
        .hashValue(this as HomeMediaBaseStatus);
  }
}

extension HomeMediaBaseStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, HomeMediaBaseStatus, $Out> {
  HomeMediaBaseStatusCopyWith<$R, HomeMediaBaseStatus, $Out>
      get $asHomeMediaBaseStatus =>
          $base.as((v, t, t2) => _HomeMediaBaseStatusCopyWithImpl(v, t, t2));
}

abstract class HomeMediaBaseStatusCopyWith<$R, $In extends HomeMediaBaseStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  HomeMediaBaseStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _HomeMediaBaseStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, HomeMediaBaseStatus, $Out>
    implements HomeMediaBaseStatusCopyWith<$R, HomeMediaBaseStatus, $Out> {
  _HomeMediaBaseStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<HomeMediaBaseStatus> $mapper =
      HomeMediaBaseStatusMapper.ensureInitialized();
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
  HomeMediaBaseStatus $make(CopyWithData data) => HomeMediaBaseStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  HomeMediaBaseStatusCopyWith<$R2, HomeMediaBaseStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _HomeMediaBaseStatusCopyWithImpl($value, $cast, t);
}

class HomeMediaBaseInitStatusMapper
    extends ClassMapperBase<HomeMediaBaseInitStatus> {
  HomeMediaBaseInitStatusMapper._();

  static HomeMediaBaseInitStatusMapper? _instance;
  static HomeMediaBaseInitStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = HomeMediaBaseInitStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'HomeMediaBaseInitStatus';

  static bool _$isLoading(HomeMediaBaseInitStatus v) => v.isLoading;
  static const Field<HomeMediaBaseInitStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(HomeMediaBaseInitStatus v) => v.errorMessage;
  static const Field<HomeMediaBaseInitStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(HomeMediaBaseInitStatus v) => v.isInitialized;
  static const Field<HomeMediaBaseInitStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: true);

  @override
  final MappableFields<HomeMediaBaseInitStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static HomeMediaBaseInitStatus _instantiate(DecodingData data) {
    return HomeMediaBaseInitStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin HomeMediaBaseInitStatusMappable {
  HomeMediaBaseInitStatusCopyWith<HomeMediaBaseInitStatus,
          HomeMediaBaseInitStatus, HomeMediaBaseInitStatus>
      get copyWith => _HomeMediaBaseInitStatusCopyWithImpl(
          this as HomeMediaBaseInitStatus, $identity, $identity);
  @override
  String toString() {
    return HomeMediaBaseInitStatusMapper.ensureInitialized()
        .stringifyValue(this as HomeMediaBaseInitStatus);
  }

  @override
  bool operator ==(Object other) {
    return HomeMediaBaseInitStatusMapper.ensureInitialized()
        .equalsValue(this as HomeMediaBaseInitStatus, other);
  }

  @override
  int get hashCode {
    return HomeMediaBaseInitStatusMapper.ensureInitialized()
        .hashValue(this as HomeMediaBaseInitStatus);
  }
}

extension HomeMediaBaseInitStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, HomeMediaBaseInitStatus, $Out> {
  HomeMediaBaseInitStatusCopyWith<$R, HomeMediaBaseInitStatus, $Out>
      get $asHomeMediaBaseInitStatus => $base
          .as((v, t, t2) => _HomeMediaBaseInitStatusCopyWithImpl(v, t, t2));
}

abstract class HomeMediaBaseInitStatusCopyWith<
    $R,
    $In extends HomeMediaBaseInitStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  HomeMediaBaseInitStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _HomeMediaBaseInitStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, HomeMediaBaseInitStatus, $Out>
    implements
        HomeMediaBaseInitStatusCopyWith<$R, HomeMediaBaseInitStatus, $Out> {
  _HomeMediaBaseInitStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<HomeMediaBaseInitStatus> $mapper =
      HomeMediaBaseInitStatusMapper.ensureInitialized();
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
  HomeMediaBaseInitStatus $make(CopyWithData data) => HomeMediaBaseInitStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  HomeMediaBaseInitStatusCopyWith<$R2, HomeMediaBaseInitStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _HomeMediaBaseInitStatusCopyWithImpl($value, $cast, t);
}
