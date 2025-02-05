// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'movie_data.dart';

class MovieDataMapper extends ClassMapperBase<MovieData> {
  MovieDataMapper._();

  static MovieDataMapper? _instance;
  static MovieDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MovieDataMapper._());
      TMDBRatingMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MovieData';

  static int _$id(MovieData v) => v.id;
  static const Field<MovieData, int> _f$id = Field('id', _$id);
  static String _$backdropUrl(MovieData v) => v.backdropUrl;
  static const Field<MovieData, String> _f$backdropUrl =
      Field('backdropUrl', _$backdropUrl);
  static String _$posterUrl(MovieData v) => v.posterUrl;
  static const Field<MovieData, String> _f$posterUrl =
      Field('posterUrl', _$posterUrl);
  static List<MovieGenre> _$genres(MovieData v) => v.genres;
  static const Field<MovieData, List<MovieGenre>> _f$genres =
      Field('genres', _$genres);
  static String _$originalLanguage(MovieData v) => v.originalLanguage;
  static const Field<MovieData, String> _f$originalLanguage =
      Field('originalLanguage', _$originalLanguage);
  static String _$originalTitle(MovieData v) => v.originalTitle;
  static const Field<MovieData, String> _f$originalTitle =
      Field('originalTitle', _$originalTitle);
  static DateTime _$releaseDate(MovieData v) => v.releaseDate;
  static const Field<MovieData, DateTime> _f$releaseDate =
      Field('releaseDate', _$releaseDate);
  static String _$title(MovieData v) => v.title;
  static const Field<MovieData, String> _f$title = Field('title', _$title);
  static String _$overview(MovieData v) => v.overview;
  static const Field<MovieData, String> _f$overview =
      Field('overview', _$overview);
  static TMDBRating _$tmdbRating(MovieData v) => v.tmdbRating;
  static const Field<MovieData, TMDBRating> _f$tmdbRating =
      Field('tmdbRating', _$tmdbRating);
  static int _$userRating(MovieData v) => v.userRating;
  static const Field<MovieData, int> _f$userRating =
      Field('userRating', _$userRating);
  static bool _$isInWatchlist(MovieData v) => v.isInWatchlist;
  static const Field<MovieData, bool> _f$isInWatchlist =
      Field('isInWatchlist', _$isInWatchlist);
  static bool _$isWatched(MovieData v) => v.isWatched;
  static const Field<MovieData, bool> _f$isWatched =
      Field('isWatched', _$isWatched);

  @override
  final MappableFields<MovieData> fields = const {
    #id: _f$id,
    #backdropUrl: _f$backdropUrl,
    #posterUrl: _f$posterUrl,
    #genres: _f$genres,
    #originalLanguage: _f$originalLanguage,
    #originalTitle: _f$originalTitle,
    #releaseDate: _f$releaseDate,
    #title: _f$title,
    #overview: _f$overview,
    #tmdbRating: _f$tmdbRating,
    #userRating: _f$userRating,
    #isInWatchlist: _f$isInWatchlist,
    #isWatched: _f$isWatched,
  };

  static MovieData _instantiate(DecodingData data) {
    return MovieData(
        id: data.dec(_f$id),
        backdropUrl: data.dec(_f$backdropUrl),
        posterUrl: data.dec(_f$posterUrl),
        genres: data.dec(_f$genres),
        originalLanguage: data.dec(_f$originalLanguage),
        originalTitle: data.dec(_f$originalTitle),
        releaseDate: data.dec(_f$releaseDate),
        title: data.dec(_f$title),
        overview: data.dec(_f$overview),
        tmdbRating: data.dec(_f$tmdbRating),
        userRating: data.dec(_f$userRating),
        isInWatchlist: data.dec(_f$isInWatchlist),
        isWatched: data.dec(_f$isWatched));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin MovieDataMappable {
  MovieDataCopyWith<MovieData, MovieData, MovieData> get copyWith =>
      _MovieDataCopyWithImpl(this as MovieData, $identity, $identity);
  @override
  String toString() {
    return MovieDataMapper.ensureInitialized()
        .stringifyValue(this as MovieData);
  }

  @override
  bool operator ==(Object other) {
    return MovieDataMapper.ensureInitialized()
        .equalsValue(this as MovieData, other);
  }

  @override
  int get hashCode {
    return MovieDataMapper.ensureInitialized().hashValue(this as MovieData);
  }
}

extension MovieDataValueCopy<$R, $Out> on ObjectCopyWith<$R, MovieData, $Out> {
  MovieDataCopyWith<$R, MovieData, $Out> get $asMovieData =>
      $base.as((v, t, t2) => _MovieDataCopyWithImpl(v, t, t2));
}

abstract class MovieDataCopyWith<$R, $In extends MovieData, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, MovieGenre, ObjectCopyWith<$R, MovieGenre, MovieGenre>>
      get genres;
  TMDBRatingCopyWith<$R, TMDBRating, TMDBRating> get tmdbRating;
  $R call(
      {int? id,
      String? backdropUrl,
      String? posterUrl,
      List<MovieGenre>? genres,
      String? originalLanguage,
      String? originalTitle,
      DateTime? releaseDate,
      String? title,
      String? overview,
      TMDBRating? tmdbRating,
      int? userRating,
      bool? isInWatchlist,
      bool? isWatched});
  MovieDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MovieDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MovieData, $Out>
    implements MovieDataCopyWith<$R, MovieData, $Out> {
  _MovieDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MovieData> $mapper =
      MovieDataMapper.ensureInitialized();
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
          String? backdropUrl,
          String? posterUrl,
          List<MovieGenre>? genres,
          String? originalLanguage,
          String? originalTitle,
          DateTime? releaseDate,
          String? title,
          String? overview,
          TMDBRating? tmdbRating,
          int? userRating,
          bool? isInWatchlist,
          bool? isWatched}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (backdropUrl != null) #backdropUrl: backdropUrl,
        if (posterUrl != null) #posterUrl: posterUrl,
        if (genres != null) #genres: genres,
        if (originalLanguage != null) #originalLanguage: originalLanguage,
        if (originalTitle != null) #originalTitle: originalTitle,
        if (releaseDate != null) #releaseDate: releaseDate,
        if (title != null) #title: title,
        if (overview != null) #overview: overview,
        if (tmdbRating != null) #tmdbRating: tmdbRating,
        if (userRating != null) #userRating: userRating,
        if (isInWatchlist != null) #isInWatchlist: isInWatchlist,
        if (isWatched != null) #isWatched: isWatched
      }));
  @override
  MovieData $make(CopyWithData data) => MovieData(
      id: data.get(#id, or: $value.id),
      backdropUrl: data.get(#backdropUrl, or: $value.backdropUrl),
      posterUrl: data.get(#posterUrl, or: $value.posterUrl),
      genres: data.get(#genres, or: $value.genres),
      originalLanguage:
          data.get(#originalLanguage, or: $value.originalLanguage),
      originalTitle: data.get(#originalTitle, or: $value.originalTitle),
      releaseDate: data.get(#releaseDate, or: $value.releaseDate),
      title: data.get(#title, or: $value.title),
      overview: data.get(#overview, or: $value.overview),
      tmdbRating: data.get(#tmdbRating, or: $value.tmdbRating),
      userRating: data.get(#userRating, or: $value.userRating),
      isInWatchlist: data.get(#isInWatchlist, or: $value.isInWatchlist),
      isWatched: data.get(#isWatched, or: $value.isWatched));

  @override
  MovieDataCopyWith<$R2, MovieData, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MovieDataCopyWithImpl($value, $cast, t);
}
