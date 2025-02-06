// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'movie_short_data.dart';

class MovieShortDataMapper extends ClassMapperBase<MovieShortData> {
  MovieShortDataMapper._();

  static MovieShortDataMapper? _instance;
  static MovieShortDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MovieShortDataMapper._());
      MediaShortDataMapper.ensureInitialized();
      TMDBRatingMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MovieShortData';

  static int _$id(MovieShortData v) => v.id;
  static const Field<MovieShortData, int> _f$id = Field('id', _$id);
  static String _$posterUrl(MovieShortData v) => v.posterUrl;
  static const Field<MovieShortData, String> _f$posterUrl =
      Field('posterUrl', _$posterUrl);
  static List<MovieGenre> _$genres(MovieShortData v) => v.genres;
  static const Field<MovieShortData, List<MovieGenre>> _f$genres =
      Field('genres', _$genres);
  static DateTime? _$premiereDate(MovieShortData v) => v.premiereDate;
  static const Field<MovieShortData, DateTime> _f$premiereDate =
      Field('premiereDate', _$premiereDate);
  static String? _$title(MovieShortData v) => v.title;
  static const Field<MovieShortData, String> _f$title = Field('title', _$title);
  static TMDBRating _$tmdbRating(MovieShortData v) => v.tmdbRating;
  static const Field<MovieShortData, TMDBRating> _f$tmdbRating =
      Field('tmdbRating', _$tmdbRating);
  static int _$userRating(MovieShortData v) => v.userRating;
  static const Field<MovieShortData, int> _f$userRating =
      Field('userRating', _$userRating);
  static bool _$isInWatchlist(MovieShortData v) => v.isInWatchlist;
  static const Field<MovieShortData, bool> _f$isInWatchlist =
      Field('isInWatchlist', _$isInWatchlist);
  static bool _$isWatched(MovieShortData v) => v.isWatched;
  static const Field<MovieShortData, bool> _f$isWatched =
      Field('isWatched', _$isWatched);

  @override
  final MappableFields<MovieShortData> fields = const {
    #id: _f$id,
    #posterUrl: _f$posterUrl,
    #genres: _f$genres,
    #premiereDate: _f$premiereDate,
    #title: _f$title,
    #tmdbRating: _f$tmdbRating,
    #userRating: _f$userRating,
    #isInWatchlist: _f$isInWatchlist,
    #isWatched: _f$isWatched,
  };

  static MovieShortData _instantiate(DecodingData data) {
    return MovieShortData(
        id: data.dec(_f$id),
        posterUrl: data.dec(_f$posterUrl),
        genres: data.dec(_f$genres),
        premiereDate: data.dec(_f$premiereDate),
        title: data.dec(_f$title),
        tmdbRating: data.dec(_f$tmdbRating),
        userRating: data.dec(_f$userRating),
        isInWatchlist: data.dec(_f$isInWatchlist),
        isWatched: data.dec(_f$isWatched));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin MovieShortDataMappable {
  MovieShortDataCopyWith<MovieShortData, MovieShortData, MovieShortData>
      get copyWith => _MovieShortDataCopyWithImpl(
          this as MovieShortData, $identity, $identity);
  @override
  String toString() {
    return MovieShortDataMapper.ensureInitialized()
        .stringifyValue(this as MovieShortData);
  }

  @override
  bool operator ==(Object other) {
    return MovieShortDataMapper.ensureInitialized()
        .equalsValue(this as MovieShortData, other);
  }

  @override
  int get hashCode {
    return MovieShortDataMapper.ensureInitialized()
        .hashValue(this as MovieShortData);
  }
}

extension MovieShortDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MovieShortData, $Out> {
  MovieShortDataCopyWith<$R, MovieShortData, $Out> get $asMovieShortData =>
      $base.as((v, t, t2) => _MovieShortDataCopyWithImpl(v, t, t2));
}

abstract class MovieShortDataCopyWith<$R, $In extends MovieShortData, $Out>
    implements MediaShortDataCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, MovieGenre, ObjectCopyWith<$R, MovieGenre, MovieGenre>>
      get genres;
  @override
  TMDBRatingCopyWith<$R, TMDBRating, TMDBRating> get tmdbRating;
  @override
  $R call(
      {int? id,
      String? posterUrl,
      List<MovieGenre>? genres,
      DateTime? premiereDate,
      String? title,
      TMDBRating? tmdbRating,
      int? userRating,
      bool? isInWatchlist,
      bool? isWatched});
  MovieShortDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MovieShortDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MovieShortData, $Out>
    implements MovieShortDataCopyWith<$R, MovieShortData, $Out> {
  _MovieShortDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MovieShortData> $mapper =
      MovieShortDataMapper.ensureInitialized();
  @override
  ListCopyWith<$R, MovieGenre, ObjectCopyWith<$R, MovieGenre, MovieGenre>>
      get genres => ListCopyWith($value.genres,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(genres: v));
  @override
  TMDBRatingCopyWith<$R, TMDBRating, TMDBRating> get tmdbRating =>
      $value.tmdbRating.copyWith.$chain((v) => call(tmdbRating: v));
  @override
  $R call(
          {int? id,
          String? posterUrl,
          List<MovieGenre>? genres,
          Object? premiereDate = $none,
          Object? title = $none,
          TMDBRating? tmdbRating,
          int? userRating,
          bool? isInWatchlist,
          bool? isWatched}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (posterUrl != null) #posterUrl: posterUrl,
        if (genres != null) #genres: genres,
        if (premiereDate != $none) #premiereDate: premiereDate,
        if (title != $none) #title: title,
        if (tmdbRating != null) #tmdbRating: tmdbRating,
        if (userRating != null) #userRating: userRating,
        if (isInWatchlist != null) #isInWatchlist: isInWatchlist,
        if (isWatched != null) #isWatched: isWatched
      }));
  @override
  MovieShortData $make(CopyWithData data) => MovieShortData(
      id: data.get(#id, or: $value.id),
      posterUrl: data.get(#posterUrl, or: $value.posterUrl),
      genres: data.get(#genres, or: $value.genres),
      premiereDate: data.get(#premiereDate, or: $value.premiereDate),
      title: data.get(#title, or: $value.title),
      tmdbRating: data.get(#tmdbRating, or: $value.tmdbRating),
      userRating: data.get(#userRating, or: $value.userRating),
      isInWatchlist: data.get(#isInWatchlist, or: $value.isInWatchlist),
      isWatched: data.get(#isWatched, or: $value.isWatched));

  @override
  MovieShortDataCopyWith<$R2, MovieShortData, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MovieShortDataCopyWithImpl($value, $cast, t);
}
