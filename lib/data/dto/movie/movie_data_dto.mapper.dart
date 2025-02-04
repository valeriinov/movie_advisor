// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'movie_data_dto.dart';

class MovieDataDtoMapper extends ClassMapperBase<MovieDataDto> {
  MovieDataDtoMapper._();

  static MovieDataDtoMapper? _instance;
  static MovieDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MovieDataDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MovieDataDto';

  static int? _$id(MovieDataDto v) => v.id;
  static const Field<MovieDataDto, int> _f$id = Field('id', _$id, opt: true);
  static String? _$backdropPath(MovieDataDto v) => v.backdropPath;
  static const Field<MovieDataDto, String> _f$backdropPath =
      Field('backdropPath', _$backdropPath, key: 'backdrop_path', opt: true);
  static List<int>? _$genreIds(MovieDataDto v) => v.genreIds;
  static const Field<MovieDataDto, List<int>> _f$genreIds =
      Field('genreIds', _$genreIds, key: 'genre_ids', opt: true);
  static String? _$originalLanguage(MovieDataDto v) => v.originalLanguage;
  static const Field<MovieDataDto, String> _f$originalLanguage = Field(
      'originalLanguage', _$originalLanguage,
      key: 'original_language', opt: true);
  static String? _$originalTitle(MovieDataDto v) => v.originalTitle;
  static const Field<MovieDataDto, String> _f$originalTitle =
      Field('originalTitle', _$originalTitle, key: 'original_title', opt: true);
  static String? _$overview(MovieDataDto v) => v.overview;
  static const Field<MovieDataDto, String> _f$overview =
      Field('overview', _$overview, opt: true);
  static double? _$popularity(MovieDataDto v) => v.popularity;
  static const Field<MovieDataDto, double> _f$popularity =
      Field('popularity', _$popularity, opt: true);
  static String? _$posterPath(MovieDataDto v) => v.posterPath;
  static const Field<MovieDataDto, String> _f$posterPath =
      Field('posterPath', _$posterPath, key: 'poster_path', opt: true);
  static DateTime? _$releaseDate(MovieDataDto v) => v.releaseDate;
  static const Field<MovieDataDto, DateTime> _f$releaseDate =
      Field('releaseDate', _$releaseDate, key: 'release_date', opt: true);
  static String? _$title(MovieDataDto v) => v.title;
  static const Field<MovieDataDto, String> _f$title =
      Field('title', _$title, opt: true);
  static double? _$voteAverage(MovieDataDto v) => v.voteAverage;
  static const Field<MovieDataDto, double> _f$voteAverage =
      Field('voteAverage', _$voteAverage, key: 'vote_average', opt: true);
  static int? _$voteCount(MovieDataDto v) => v.voteCount;
  static const Field<MovieDataDto, int> _f$voteCount =
      Field('voteCount', _$voteCount, key: 'vote_count', opt: true);

  @override
  final MappableFields<MovieDataDto> fields = const {
    #id: _f$id,
    #backdropPath: _f$backdropPath,
    #genreIds: _f$genreIds,
    #originalLanguage: _f$originalLanguage,
    #originalTitle: _f$originalTitle,
    #overview: _f$overview,
    #popularity: _f$popularity,
    #posterPath: _f$posterPath,
    #releaseDate: _f$releaseDate,
    #title: _f$title,
    #voteAverage: _f$voteAverage,
    #voteCount: _f$voteCount,
  };
  @override
  final bool ignoreNull = true;

  static MovieDataDto _instantiate(DecodingData data) {
    return MovieDataDto(
        id: data.dec(_f$id),
        backdropPath: data.dec(_f$backdropPath),
        genreIds: data.dec(_f$genreIds),
        originalLanguage: data.dec(_f$originalLanguage),
        originalTitle: data.dec(_f$originalTitle),
        overview: data.dec(_f$overview),
        popularity: data.dec(_f$popularity),
        posterPath: data.dec(_f$posterPath),
        releaseDate: data.dec(_f$releaseDate),
        title: data.dec(_f$title),
        voteAverage: data.dec(_f$voteAverage),
        voteCount: data.dec(_f$voteCount));
  }

  @override
  final Function instantiate = _instantiate;

  static MovieDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MovieDataDto>(map);
  }

  static MovieDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<MovieDataDto>(json);
  }
}

mixin MovieDataDtoMappable {
  String toJsonString() {
    return MovieDataDtoMapper.ensureInitialized()
        .encodeJson<MovieDataDto>(this as MovieDataDto);
  }

  Map<String, dynamic> toJson() {
    return MovieDataDtoMapper.ensureInitialized()
        .encodeMap<MovieDataDto>(this as MovieDataDto);
  }

  MovieDataDtoCopyWith<MovieDataDto, MovieDataDto, MovieDataDto> get copyWith =>
      _MovieDataDtoCopyWithImpl(this as MovieDataDto, $identity, $identity);
  @override
  String toString() {
    return MovieDataDtoMapper.ensureInitialized()
        .stringifyValue(this as MovieDataDto);
  }

  @override
  bool operator ==(Object other) {
    return MovieDataDtoMapper.ensureInitialized()
        .equalsValue(this as MovieDataDto, other);
  }

  @override
  int get hashCode {
    return MovieDataDtoMapper.ensureInitialized()
        .hashValue(this as MovieDataDto);
  }
}

extension MovieDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MovieDataDto, $Out> {
  MovieDataDtoCopyWith<$R, MovieDataDto, $Out> get $asMovieDataDto =>
      $base.as((v, t, t2) => _MovieDataDtoCopyWithImpl(v, t, t2));
}

abstract class MovieDataDtoCopyWith<$R, $In extends MovieDataDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get genreIds;
  $R call(
      {int? id,
      String? backdropPath,
      List<int>? genreIds,
      String? originalLanguage,
      String? originalTitle,
      String? overview,
      double? popularity,
      String? posterPath,
      DateTime? releaseDate,
      String? title,
      double? voteAverage,
      int? voteCount});
  MovieDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MovieDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MovieDataDto, $Out>
    implements MovieDataDtoCopyWith<$R, MovieDataDto, $Out> {
  _MovieDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MovieDataDto> $mapper =
      MovieDataDtoMapper.ensureInitialized();
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get genreIds =>
      $value.genreIds != null
          ? ListCopyWith(
              $value.genreIds!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(genreIds: v))
          : null;
  @override
  $R call(
          {Object? id = $none,
          Object? backdropPath = $none,
          Object? genreIds = $none,
          Object? originalLanguage = $none,
          Object? originalTitle = $none,
          Object? overview = $none,
          Object? popularity = $none,
          Object? posterPath = $none,
          Object? releaseDate = $none,
          Object? title = $none,
          Object? voteAverage = $none,
          Object? voteCount = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (backdropPath != $none) #backdropPath: backdropPath,
        if (genreIds != $none) #genreIds: genreIds,
        if (originalLanguage != $none) #originalLanguage: originalLanguage,
        if (originalTitle != $none) #originalTitle: originalTitle,
        if (overview != $none) #overview: overview,
        if (popularity != $none) #popularity: popularity,
        if (posterPath != $none) #posterPath: posterPath,
        if (releaseDate != $none) #releaseDate: releaseDate,
        if (title != $none) #title: title,
        if (voteAverage != $none) #voteAverage: voteAverage,
        if (voteCount != $none) #voteCount: voteCount
      }));
  @override
  MovieDataDto $make(CopyWithData data) => MovieDataDto(
      id: data.get(#id, or: $value.id),
      backdropPath: data.get(#backdropPath, or: $value.backdropPath),
      genreIds: data.get(#genreIds, or: $value.genreIds),
      originalLanguage:
          data.get(#originalLanguage, or: $value.originalLanguage),
      originalTitle: data.get(#originalTitle, or: $value.originalTitle),
      overview: data.get(#overview, or: $value.overview),
      popularity: data.get(#popularity, or: $value.popularity),
      posterPath: data.get(#posterPath, or: $value.posterPath),
      releaseDate: data.get(#releaseDate, or: $value.releaseDate),
      title: data.get(#title, or: $value.title),
      voteAverage: data.get(#voteAverage, or: $value.voteAverage),
      voteCount: data.get(#voteCount, or: $value.voteCount));

  @override
  MovieDataDtoCopyWith<$R2, MovieDataDto, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MovieDataDtoCopyWithImpl($value, $cast, t);
}
