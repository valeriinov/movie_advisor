// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'movie_load_info.dart';

class MovieLoadInfoMapper extends ClassMapperBase<MovieLoadInfo> {
  MovieLoadInfoMapper._();

  static MovieLoadInfoMapper? _instance;
  static MovieLoadInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MovieLoadInfoMapper._());
      ListWithPaginationDataMapper.ensureInitialized();
      MovieShortDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MovieLoadInfo';

  static bool _$isInitialized(MovieLoadInfo v) => v.isInitialized;
  static const Field<MovieLoadInfo, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: false);
  static bool _$isNextPageLoading(MovieLoadInfo v) => v.isNextPageLoading;
  static const Field<MovieLoadInfo, bool> _f$isNextPageLoading =
      Field('isNextPageLoading', _$isNextPageLoading, opt: true, def: false);
  static ListWithPaginationData<MovieShortData> _$moviesData(MovieLoadInfo v) =>
      v.moviesData;
  static const Field<MovieLoadInfo, ListWithPaginationData<MovieShortData>>
      _f$moviesData = Field('moviesData', _$moviesData,
          opt: true,
          def: const ListWithPaginationData<MovieShortData>(items: []));

  @override
  final MappableFields<MovieLoadInfo> fields = const {
    #isInitialized: _f$isInitialized,
    #isNextPageLoading: _f$isNextPageLoading,
    #moviesData: _f$moviesData,
  };

  static MovieLoadInfo _instantiate(DecodingData data) {
    return MovieLoadInfo(
        isInitialized: data.dec(_f$isInitialized),
        isNextPageLoading: data.dec(_f$isNextPageLoading),
        moviesData: data.dec(_f$moviesData));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin MovieLoadInfoMappable {
  MovieLoadInfoCopyWith<MovieLoadInfo, MovieLoadInfo, MovieLoadInfo>
      get copyWith => _MovieLoadInfoCopyWithImpl(
          this as MovieLoadInfo, $identity, $identity);
  @override
  String toString() {
    return MovieLoadInfoMapper.ensureInitialized()
        .stringifyValue(this as MovieLoadInfo);
  }

  @override
  bool operator ==(Object other) {
    return MovieLoadInfoMapper.ensureInitialized()
        .equalsValue(this as MovieLoadInfo, other);
  }

  @override
  int get hashCode {
    return MovieLoadInfoMapper.ensureInitialized()
        .hashValue(this as MovieLoadInfo);
  }
}

extension MovieLoadInfoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MovieLoadInfo, $Out> {
  MovieLoadInfoCopyWith<$R, MovieLoadInfo, $Out> get $asMovieLoadInfo =>
      $base.as((v, t, t2) => _MovieLoadInfoCopyWithImpl(v, t, t2));
}

abstract class MovieLoadInfoCopyWith<$R, $In extends MovieLoadInfo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListWithPaginationDataCopyWith<$R, ListWithPaginationData<MovieShortData>,
      ListWithPaginationData<MovieShortData>, MovieShortData> get moviesData;
  $R call(
      {bool? isInitialized,
      bool? isNextPageLoading,
      ListWithPaginationData<MovieShortData>? moviesData});
  MovieLoadInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MovieLoadInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MovieLoadInfo, $Out>
    implements MovieLoadInfoCopyWith<$R, MovieLoadInfo, $Out> {
  _MovieLoadInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MovieLoadInfo> $mapper =
      MovieLoadInfoMapper.ensureInitialized();
  @override
  ListWithPaginationDataCopyWith<$R, ListWithPaginationData<MovieShortData>,
          ListWithPaginationData<MovieShortData>, MovieShortData>
      get moviesData =>
          $value.moviesData.copyWith.$chain((v) => call(moviesData: v));
  @override
  $R call(
          {bool? isInitialized,
          bool? isNextPageLoading,
          ListWithPaginationData<MovieShortData>? moviesData}) =>
      $apply(FieldCopyWithData({
        if (isInitialized != null) #isInitialized: isInitialized,
        if (isNextPageLoading != null) #isNextPageLoading: isNextPageLoading,
        if (moviesData != null) #moviesData: moviesData
      }));
  @override
  MovieLoadInfo $make(CopyWithData data) => MovieLoadInfo(
      isInitialized: data.get(#isInitialized, or: $value.isInitialized),
      isNextPageLoading:
          data.get(#isNextPageLoading, or: $value.isNextPageLoading),
      moviesData: data.get(#moviesData, or: $value.moviesData));

  @override
  MovieLoadInfoCopyWith<$R2, MovieLoadInfo, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MovieLoadInfoCopyWithImpl($value, $cast, t);
}
