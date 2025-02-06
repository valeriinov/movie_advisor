// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'home_series_state.dart';

class HomeSeriesStateMapper extends ClassMapperBase<HomeSeriesState> {
  HomeSeriesStateMapper._();

  static HomeSeriesStateMapper? _instance;
  static HomeSeriesStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HomeSeriesStateMapper._());
      MediaLoadInfoMapper.ensureInitialized();
      SeriesShortDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'HomeSeriesState';

  static MediaTab _$currentTab(HomeSeriesState v) => v.currentTab;
  static const Field<HomeSeriesState, MediaTab> _f$currentTab =
      Field('currentTab', _$currentTab, opt: true, def: MediaTab.nowPlaying);
  static MediaLoadInfo<SeriesShortData> _$suggestedSeries(HomeSeriesState v) =>
      v.suggestedSeries;
  static const Field<HomeSeriesState, MediaLoadInfo<SeriesShortData>>
      _f$suggestedSeries =
      Field('suggestedSeries', _$suggestedSeries, opt: true);
  static MediaLoadInfo<SeriesShortData> _$tabSeries(HomeSeriesState v) =>
      v.tabSeries;
  static const Field<HomeSeriesState, MediaLoadInfo<SeriesShortData>>
      _f$tabSeries = Field('tabSeries', _$tabSeries, opt: true);
  static HomeSeriesStatus _$status(HomeSeriesState v) => v.status;
  static const Field<HomeSeriesState, HomeSeriesStatus> _f$status =
      Field('status', _$status, opt: true, def: const HomeSeriesBaseStatus());

  @override
  final MappableFields<HomeSeriesState> fields = const {
    #currentTab: _f$currentTab,
    #suggestedSeries: _f$suggestedSeries,
    #tabSeries: _f$tabSeries,
    #status: _f$status,
  };

  static HomeSeriesState _instantiate(DecodingData data) {
    return HomeSeriesState(
        currentTab: data.dec(_f$currentTab),
        suggestedSeries: data.dec(_f$suggestedSeries),
        tabSeries: data.dec(_f$tabSeries),
        status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin HomeSeriesStateMappable {
  HomeSeriesStateCopyWith<HomeSeriesState, HomeSeriesState, HomeSeriesState>
      get copyWith => _HomeSeriesStateCopyWithImpl(
          this as HomeSeriesState, $identity, $identity);
  @override
  String toString() {
    return HomeSeriesStateMapper.ensureInitialized()
        .stringifyValue(this as HomeSeriesState);
  }

  @override
  bool operator ==(Object other) {
    return HomeSeriesStateMapper.ensureInitialized()
        .equalsValue(this as HomeSeriesState, other);
  }

  @override
  int get hashCode {
    return HomeSeriesStateMapper.ensureInitialized()
        .hashValue(this as HomeSeriesState);
  }
}

extension HomeSeriesStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, HomeSeriesState, $Out> {
  HomeSeriesStateCopyWith<$R, HomeSeriesState, $Out> get $asHomeSeriesState =>
      $base.as((v, t, t2) => _HomeSeriesStateCopyWithImpl(v, t, t2));
}

abstract class HomeSeriesStateCopyWith<$R, $In extends HomeSeriesState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MediaLoadInfoCopyWith<$R, MediaLoadInfo<SeriesShortData>,
      MediaLoadInfo<SeriesShortData>, SeriesShortData> get suggestedSeries;
  MediaLoadInfoCopyWith<$R, MediaLoadInfo<SeriesShortData>,
      MediaLoadInfo<SeriesShortData>, SeriesShortData> get tabSeries;
  $R call(
      {MediaTab? currentTab,
      MediaLoadInfo<SeriesShortData>? suggestedSeries,
      MediaLoadInfo<SeriesShortData>? tabSeries,
      HomeSeriesStatus? status});
  HomeSeriesStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _HomeSeriesStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, HomeSeriesState, $Out>
    implements HomeSeriesStateCopyWith<$R, HomeSeriesState, $Out> {
  _HomeSeriesStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<HomeSeriesState> $mapper =
      HomeSeriesStateMapper.ensureInitialized();
  @override
  MediaLoadInfoCopyWith<$R, MediaLoadInfo<SeriesShortData>,
          MediaLoadInfo<SeriesShortData>, SeriesShortData>
      get suggestedSeries =>
          ($value.suggestedSeries as MediaLoadInfo<SeriesShortData>)
              .copyWith
              .$chain((v) => call(suggestedSeries: v));
  @override
  MediaLoadInfoCopyWith<$R, MediaLoadInfo<SeriesShortData>,
          MediaLoadInfo<SeriesShortData>, SeriesShortData>
      get tabSeries => ($value.tabSeries as MediaLoadInfo<SeriesShortData>)
          .copyWith
          .$chain((v) => call(tabSeries: v));
  @override
  $R call(
          {MediaTab? currentTab,
          Object? suggestedSeries = $none,
          Object? tabSeries = $none,
          HomeSeriesStatus? status}) =>
      $apply(FieldCopyWithData({
        if (currentTab != null) #currentTab: currentTab,
        if (suggestedSeries != $none) #suggestedSeries: suggestedSeries,
        if (tabSeries != $none) #tabSeries: tabSeries,
        if (status != null) #status: status
      }));
  @override
  HomeSeriesState $make(CopyWithData data) => HomeSeriesState(
      currentTab: data.get(#currentTab, or: $value.currentTab),
      suggestedSeries: data.get(#suggestedSeries, or: $value.suggestedSeries),
      tabSeries: data.get(#tabSeries, or: $value.tabSeries),
      status: data.get(#status, or: $value.status));

  @override
  HomeSeriesStateCopyWith<$R2, HomeSeriesState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _HomeSeriesStateCopyWithImpl($value, $cast, t);
}

class HomeSeriesBaseStatusMapper extends ClassMapperBase<HomeSeriesBaseStatus> {
  HomeSeriesBaseStatusMapper._();

  static HomeSeriesBaseStatusMapper? _instance;
  static HomeSeriesBaseStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HomeSeriesBaseStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'HomeSeriesBaseStatus';

  static bool _$isLoading(HomeSeriesBaseStatus v) => v.isLoading;
  static const Field<HomeSeriesBaseStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(HomeSeriesBaseStatus v) => v.errorMessage;
  static const Field<HomeSeriesBaseStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(HomeSeriesBaseStatus v) => v.isInitialized;
  static const Field<HomeSeriesBaseStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: false);

  @override
  final MappableFields<HomeSeriesBaseStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static HomeSeriesBaseStatus _instantiate(DecodingData data) {
    return HomeSeriesBaseStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin HomeSeriesBaseStatusMappable {
  HomeSeriesBaseStatusCopyWith<HomeSeriesBaseStatus, HomeSeriesBaseStatus,
          HomeSeriesBaseStatus>
      get copyWith => _HomeSeriesBaseStatusCopyWithImpl(
          this as HomeSeriesBaseStatus, $identity, $identity);
  @override
  String toString() {
    return HomeSeriesBaseStatusMapper.ensureInitialized()
        .stringifyValue(this as HomeSeriesBaseStatus);
  }

  @override
  bool operator ==(Object other) {
    return HomeSeriesBaseStatusMapper.ensureInitialized()
        .equalsValue(this as HomeSeriesBaseStatus, other);
  }

  @override
  int get hashCode {
    return HomeSeriesBaseStatusMapper.ensureInitialized()
        .hashValue(this as HomeSeriesBaseStatus);
  }
}

extension HomeSeriesBaseStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, HomeSeriesBaseStatus, $Out> {
  HomeSeriesBaseStatusCopyWith<$R, HomeSeriesBaseStatus, $Out>
      get $asHomeSeriesBaseStatus =>
          $base.as((v, t, t2) => _HomeSeriesBaseStatusCopyWithImpl(v, t, t2));
}

abstract class HomeSeriesBaseStatusCopyWith<
    $R,
    $In extends HomeSeriesBaseStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  HomeSeriesBaseStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _HomeSeriesBaseStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, HomeSeriesBaseStatus, $Out>
    implements HomeSeriesBaseStatusCopyWith<$R, HomeSeriesBaseStatus, $Out> {
  _HomeSeriesBaseStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<HomeSeriesBaseStatus> $mapper =
      HomeSeriesBaseStatusMapper.ensureInitialized();
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
  HomeSeriesBaseStatus $make(CopyWithData data) => HomeSeriesBaseStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  HomeSeriesBaseStatusCopyWith<$R2, HomeSeriesBaseStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _HomeSeriesBaseStatusCopyWithImpl($value, $cast, t);
}

class HomeSeriesBaseInitStatusMapper
    extends ClassMapperBase<HomeSeriesBaseInitStatus> {
  HomeSeriesBaseInitStatusMapper._();

  static HomeSeriesBaseInitStatusMapper? _instance;
  static HomeSeriesBaseInitStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = HomeSeriesBaseInitStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'HomeSeriesBaseInitStatus';

  static bool _$isLoading(HomeSeriesBaseInitStatus v) => v.isLoading;
  static const Field<HomeSeriesBaseInitStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(HomeSeriesBaseInitStatus v) => v.errorMessage;
  static const Field<HomeSeriesBaseInitStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(HomeSeriesBaseInitStatus v) => v.isInitialized;
  static const Field<HomeSeriesBaseInitStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: true);

  @override
  final MappableFields<HomeSeriesBaseInitStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static HomeSeriesBaseInitStatus _instantiate(DecodingData data) {
    return HomeSeriesBaseInitStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin HomeSeriesBaseInitStatusMappable {
  HomeSeriesBaseInitStatusCopyWith<HomeSeriesBaseInitStatus,
          HomeSeriesBaseInitStatus, HomeSeriesBaseInitStatus>
      get copyWith => _HomeSeriesBaseInitStatusCopyWithImpl(
          this as HomeSeriesBaseInitStatus, $identity, $identity);
  @override
  String toString() {
    return HomeSeriesBaseInitStatusMapper.ensureInitialized()
        .stringifyValue(this as HomeSeriesBaseInitStatus);
  }

  @override
  bool operator ==(Object other) {
    return HomeSeriesBaseInitStatusMapper.ensureInitialized()
        .equalsValue(this as HomeSeriesBaseInitStatus, other);
  }

  @override
  int get hashCode {
    return HomeSeriesBaseInitStatusMapper.ensureInitialized()
        .hashValue(this as HomeSeriesBaseInitStatus);
  }
}

extension HomeSeriesBaseInitStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, HomeSeriesBaseInitStatus, $Out> {
  HomeSeriesBaseInitStatusCopyWith<$R, HomeSeriesBaseInitStatus, $Out>
      get $asHomeSeriesBaseInitStatus => $base
          .as((v, t, t2) => _HomeSeriesBaseInitStatusCopyWithImpl(v, t, t2));
}

abstract class HomeSeriesBaseInitStatusCopyWith<
    $R,
    $In extends HomeSeriesBaseInitStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  HomeSeriesBaseInitStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _HomeSeriesBaseInitStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, HomeSeriesBaseInitStatus, $Out>
    implements
        HomeSeriesBaseInitStatusCopyWith<$R, HomeSeriesBaseInitStatus, $Out> {
  _HomeSeriesBaseInitStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<HomeSeriesBaseInitStatus> $mapper =
      HomeSeriesBaseInitStatusMapper.ensureInitialized();
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
  HomeSeriesBaseInitStatus $make(CopyWithData data) => HomeSeriesBaseInitStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  HomeSeriesBaseInitStatusCopyWith<$R2, HomeSeriesBaseInitStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _HomeSeriesBaseInitStatusCopyWithImpl($value, $cast, t);
}
