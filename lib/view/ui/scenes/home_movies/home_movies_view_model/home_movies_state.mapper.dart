// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'home_movies_state.dart';

class HomeMoviesStateMapper extends ClassMapperBase<HomeMoviesState> {
  HomeMoviesStateMapper._();

  static HomeMoviesStateMapper? _instance;
  static HomeMoviesStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HomeMoviesStateMapper._());
      MediaLoadInfoMapper.ensureInitialized();
      MovieShortDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'HomeMoviesState';

  static MediaTab _$currentTab(HomeMoviesState v) => v.currentTab;
  static const Field<HomeMoviesState, MediaTab> _f$currentTab =
      Field('currentTab', _$currentTab, opt: true, def: MediaTab.nowPlaying);
  static MediaLoadInfo<MovieShortData> _$suggestedMovies(HomeMoviesState v) =>
      v.suggestedMovies;
  static const Field<HomeMoviesState, MediaLoadInfo<MovieShortData>>
      _f$suggestedMovies =
      Field('suggestedMovies', _$suggestedMovies, opt: true);
  static MediaLoadInfo<MovieShortData> _$tabMovies(HomeMoviesState v) =>
      v.tabMovies;
  static const Field<HomeMoviesState, MediaLoadInfo<MovieShortData>>
      _f$tabMovies = Field('tabMovies', _$tabMovies, opt: true);
  static HomeMoviesStatus _$status(HomeMoviesState v) => v.status;
  static const Field<HomeMoviesState, HomeMoviesStatus> _f$status =
      Field('status', _$status, opt: true, def: const HomeMoviesBaseStatus());

  @override
  final MappableFields<HomeMoviesState> fields = const {
    #currentTab: _f$currentTab,
    #suggestedMovies: _f$suggestedMovies,
    #tabMovies: _f$tabMovies,
    #status: _f$status,
  };

  static HomeMoviesState _instantiate(DecodingData data) {
    return HomeMoviesState(
        currentTab: data.dec(_f$currentTab),
        suggestedMovies: data.dec(_f$suggestedMovies),
        tabMovies: data.dec(_f$tabMovies),
        status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin HomeMoviesStateMappable {
  HomeMoviesStateCopyWith<HomeMoviesState, HomeMoviesState, HomeMoviesState>
      get copyWith => _HomeMoviesStateCopyWithImpl(
          this as HomeMoviesState, $identity, $identity);
  @override
  String toString() {
    return HomeMoviesStateMapper.ensureInitialized()
        .stringifyValue(this as HomeMoviesState);
  }

  @override
  bool operator ==(Object other) {
    return HomeMoviesStateMapper.ensureInitialized()
        .equalsValue(this as HomeMoviesState, other);
  }

  @override
  int get hashCode {
    return HomeMoviesStateMapper.ensureInitialized()
        .hashValue(this as HomeMoviesState);
  }
}

extension HomeMoviesStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, HomeMoviesState, $Out> {
  HomeMoviesStateCopyWith<$R, HomeMoviesState, $Out> get $asHomeMoviesState =>
      $base.as((v, t, t2) => _HomeMoviesStateCopyWithImpl(v, t, t2));
}

abstract class HomeMoviesStateCopyWith<$R, $In extends HomeMoviesState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MediaLoadInfoCopyWith<$R, MediaLoadInfo<MovieShortData>,
      MediaLoadInfo<MovieShortData>, MovieShortData> get suggestedMovies;
  MediaLoadInfoCopyWith<$R, MediaLoadInfo<MovieShortData>,
      MediaLoadInfo<MovieShortData>, MovieShortData> get tabMovies;
  $R call(
      {MediaTab? currentTab,
      MediaLoadInfo<MovieShortData>? suggestedMovies,
      MediaLoadInfo<MovieShortData>? tabMovies,
      HomeMoviesStatus? status});
  HomeMoviesStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _HomeMoviesStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, HomeMoviesState, $Out>
    implements HomeMoviesStateCopyWith<$R, HomeMoviesState, $Out> {
  _HomeMoviesStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<HomeMoviesState> $mapper =
      HomeMoviesStateMapper.ensureInitialized();
  @override
  MediaLoadInfoCopyWith<$R, MediaLoadInfo<MovieShortData>,
          MediaLoadInfo<MovieShortData>, MovieShortData>
      get suggestedMovies =>
          ($value.suggestedMovies as MediaLoadInfo<MovieShortData>)
              .copyWith
              .$chain((v) => call(suggestedMovies: v));
  @override
  MediaLoadInfoCopyWith<$R, MediaLoadInfo<MovieShortData>,
          MediaLoadInfo<MovieShortData>, MovieShortData>
      get tabMovies => ($value.tabMovies as MediaLoadInfo<MovieShortData>)
          .copyWith
          .$chain((v) => call(tabMovies: v));
  @override
  $R call(
          {MediaTab? currentTab,
          Object? suggestedMovies = $none,
          Object? tabMovies = $none,
          HomeMoviesStatus? status}) =>
      $apply(FieldCopyWithData({
        if (currentTab != null) #currentTab: currentTab,
        if (suggestedMovies != $none) #suggestedMovies: suggestedMovies,
        if (tabMovies != $none) #tabMovies: tabMovies,
        if (status != null) #status: status
      }));
  @override
  HomeMoviesState $make(CopyWithData data) => HomeMoviesState(
      currentTab: data.get(#currentTab, or: $value.currentTab),
      suggestedMovies: data.get(#suggestedMovies, or: $value.suggestedMovies),
      tabMovies: data.get(#tabMovies, or: $value.tabMovies),
      status: data.get(#status, or: $value.status));

  @override
  HomeMoviesStateCopyWith<$R2, HomeMoviesState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _HomeMoviesStateCopyWithImpl($value, $cast, t);
}

class HomeMoviesBaseStatusMapper extends ClassMapperBase<HomeMoviesBaseStatus> {
  HomeMoviesBaseStatusMapper._();

  static HomeMoviesBaseStatusMapper? _instance;
  static HomeMoviesBaseStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HomeMoviesBaseStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'HomeMoviesBaseStatus';

  static bool _$isLoading(HomeMoviesBaseStatus v) => v.isLoading;
  static const Field<HomeMoviesBaseStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(HomeMoviesBaseStatus v) => v.errorMessage;
  static const Field<HomeMoviesBaseStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(HomeMoviesBaseStatus v) => v.isInitialized;
  static const Field<HomeMoviesBaseStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: false);

  @override
  final MappableFields<HomeMoviesBaseStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static HomeMoviesBaseStatus _instantiate(DecodingData data) {
    return HomeMoviesBaseStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin HomeMoviesBaseStatusMappable {
  HomeMoviesBaseStatusCopyWith<HomeMoviesBaseStatus, HomeMoviesBaseStatus,
          HomeMoviesBaseStatus>
      get copyWith => _HomeMoviesBaseStatusCopyWithImpl(
          this as HomeMoviesBaseStatus, $identity, $identity);
  @override
  String toString() {
    return HomeMoviesBaseStatusMapper.ensureInitialized()
        .stringifyValue(this as HomeMoviesBaseStatus);
  }

  @override
  bool operator ==(Object other) {
    return HomeMoviesBaseStatusMapper.ensureInitialized()
        .equalsValue(this as HomeMoviesBaseStatus, other);
  }

  @override
  int get hashCode {
    return HomeMoviesBaseStatusMapper.ensureInitialized()
        .hashValue(this as HomeMoviesBaseStatus);
  }
}

extension HomeMoviesBaseStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, HomeMoviesBaseStatus, $Out> {
  HomeMoviesBaseStatusCopyWith<$R, HomeMoviesBaseStatus, $Out>
      get $asHomeMoviesBaseStatus =>
          $base.as((v, t, t2) => _HomeMoviesBaseStatusCopyWithImpl(v, t, t2));
}

abstract class HomeMoviesBaseStatusCopyWith<
    $R,
    $In extends HomeMoviesBaseStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  HomeMoviesBaseStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _HomeMoviesBaseStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, HomeMoviesBaseStatus, $Out>
    implements HomeMoviesBaseStatusCopyWith<$R, HomeMoviesBaseStatus, $Out> {
  _HomeMoviesBaseStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<HomeMoviesBaseStatus> $mapper =
      HomeMoviesBaseStatusMapper.ensureInitialized();
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
  HomeMoviesBaseStatus $make(CopyWithData data) => HomeMoviesBaseStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  HomeMoviesBaseStatusCopyWith<$R2, HomeMoviesBaseStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _HomeMoviesBaseStatusCopyWithImpl($value, $cast, t);
}

class HomeMoviesBaseInitStatusMapper
    extends ClassMapperBase<HomeMoviesBaseInitStatus> {
  HomeMoviesBaseInitStatusMapper._();

  static HomeMoviesBaseInitStatusMapper? _instance;
  static HomeMoviesBaseInitStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = HomeMoviesBaseInitStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'HomeMoviesBaseInitStatus';

  static bool _$isLoading(HomeMoviesBaseInitStatus v) => v.isLoading;
  static const Field<HomeMoviesBaseInitStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(HomeMoviesBaseInitStatus v) => v.errorMessage;
  static const Field<HomeMoviesBaseInitStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(HomeMoviesBaseInitStatus v) => v.isInitialized;
  static const Field<HomeMoviesBaseInitStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: true);

  @override
  final MappableFields<HomeMoviesBaseInitStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static HomeMoviesBaseInitStatus _instantiate(DecodingData data) {
    return HomeMoviesBaseInitStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin HomeMoviesBaseInitStatusMappable {
  HomeMoviesBaseInitStatusCopyWith<HomeMoviesBaseInitStatus,
          HomeMoviesBaseInitStatus, HomeMoviesBaseInitStatus>
      get copyWith => _HomeMoviesBaseInitStatusCopyWithImpl(
          this as HomeMoviesBaseInitStatus, $identity, $identity);
  @override
  String toString() {
    return HomeMoviesBaseInitStatusMapper.ensureInitialized()
        .stringifyValue(this as HomeMoviesBaseInitStatus);
  }

  @override
  bool operator ==(Object other) {
    return HomeMoviesBaseInitStatusMapper.ensureInitialized()
        .equalsValue(this as HomeMoviesBaseInitStatus, other);
  }

  @override
  int get hashCode {
    return HomeMoviesBaseInitStatusMapper.ensureInitialized()
        .hashValue(this as HomeMoviesBaseInitStatus);
  }
}

extension HomeMoviesBaseInitStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, HomeMoviesBaseInitStatus, $Out> {
  HomeMoviesBaseInitStatusCopyWith<$R, HomeMoviesBaseInitStatus, $Out>
      get $asHomeMoviesBaseInitStatus => $base
          .as((v, t, t2) => _HomeMoviesBaseInitStatusCopyWithImpl(v, t, t2));
}

abstract class HomeMoviesBaseInitStatusCopyWith<
    $R,
    $In extends HomeMoviesBaseInitStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  HomeMoviesBaseInitStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _HomeMoviesBaseInitStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, HomeMoviesBaseInitStatus, $Out>
    implements
        HomeMoviesBaseInitStatusCopyWith<$R, HomeMoviesBaseInitStatus, $Out> {
  _HomeMoviesBaseInitStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<HomeMoviesBaseInitStatus> $mapper =
      HomeMoviesBaseInitStatusMapper.ensureInitialized();
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
  HomeMoviesBaseInitStatus $make(CopyWithData data) => HomeMoviesBaseInitStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  HomeMoviesBaseInitStatusCopyWith<$R2, HomeMoviesBaseInitStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _HomeMoviesBaseInitStatusCopyWithImpl($value, $cast, t);
}
