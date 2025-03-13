// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'movie_short_data_dto.dart';

class MovieShortDataDtoMapper extends ClassMapperBase<MovieShortDataDto> {
  MovieShortDataDtoMapper._();

  static MovieShortDataDtoMapper? _instance;
  static MovieShortDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MovieShortDataDtoMapper._());
      MovieGenreDtoMapper.ensureInitialized();
      RatingDataDtoMapper.ensureInitialized();
      LocalizedStringMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MovieShortDataDto';

  static int? _$id(MovieShortDataDto v) => v.id;
  static const Field<MovieShortDataDto, int> _f$id =
      Field('id', _$id, opt: true);
  static String? _$posterUrl(MovieShortDataDto v) => v.posterUrl;
  static const Field<MovieShortDataDto, String> _f$posterUrl =
      Field('posterUrl', _$posterUrl, key: r'poster_url', opt: true);
  static List<MovieGenreDto>? _$genres(MovieShortDataDto v) => v.genres;
  static const Field<MovieShortDataDto, List<MovieGenreDto>> _f$genres =
      Field('genres', _$genres, opt: true);
  static List<String>? _$originCountry(MovieShortDataDto v) => v.originCountry;
  static const Field<MovieShortDataDto, List<String>> _f$originCountry = Field(
      'originCountry', _$originCountry,
      key: r'origin_country', opt: true);
  static DateTime? _$premiereDate(MovieShortDataDto v) => v.premiereDate;
  static const Field<MovieShortDataDto, DateTime> _f$premiereDate = Field(
      'premiereDate', _$premiereDate,
      key: r'premiere_date', opt: true, hook: DateMapperHook());
  static String? _$title(MovieShortDataDto v) => v.title;
  static const Field<MovieShortDataDto, String> _f$title =
      Field('title', _$title, opt: true);
  static RatingDataDto? _$tmdbRating(MovieShortDataDto v) => v.tmdbRating;
  static const Field<MovieShortDataDto, RatingDataDto> _f$tmdbRating =
      Field('tmdbRating', _$tmdbRating, key: r'tmdb_rating', opt: true);
  static int? _$userRating(MovieShortDataDto v) => v.userRating;
  static const Field<MovieShortDataDto, int> _f$userRating =
      Field('userRating', _$userRating, key: r'user_rating', opt: true);
  static bool? _$isInWatchlist(MovieShortDataDto v) => v.isInWatchlist;
  static const Field<MovieShortDataDto, bool> _f$isInWatchlist = Field(
      'isInWatchlist', _$isInWatchlist,
      key: r'is_in_watchlist', opt: true);
  static bool? _$isWatched(MovieShortDataDto v) => v.isWatched;
  static const Field<MovieShortDataDto, bool> _f$isWatched =
      Field('isWatched', _$isWatched, key: r'is_watched', opt: true);
  static DateTime? _$updatedAt(MovieShortDataDto v) => v.updatedAt;
  static const Field<MovieShortDataDto, DateTime> _f$updatedAt = Field(
      'updatedAt', _$updatedAt,
      key: r'updated_at', opt: true, hook: DateMapperHook());
  static LocalizedString? _$localizedTitle(MovieShortDataDto v) =>
      v.localizedTitle;
  static const Field<MovieShortDataDto, LocalizedString> _f$localizedTitle =
      Field('localizedTitle', _$localizedTitle,
          key: r'localized_title', opt: true);
  static LocalizedString? _$localizedPosterUrl(MovieShortDataDto v) =>
      v.localizedPosterUrl;
  static const Field<MovieShortDataDto, LocalizedString> _f$localizedPosterUrl =
      Field('localizedPosterUrl', _$localizedPosterUrl,
          key: r'localized_poster_url', opt: true);

  @override
  final MappableFields<MovieShortDataDto> fields = const {
    #id: _f$id,
    #posterUrl: _f$posterUrl,
    #genres: _f$genres,
    #originCountry: _f$originCountry,
    #premiereDate: _f$premiereDate,
    #title: _f$title,
    #tmdbRating: _f$tmdbRating,
    #userRating: _f$userRating,
    #isInWatchlist: _f$isInWatchlist,
    #isWatched: _f$isWatched,
    #updatedAt: _f$updatedAt,
    #localizedTitle: _f$localizedTitle,
    #localizedPosterUrl: _f$localizedPosterUrl,
  };
  @override
  final bool ignoreNull = true;

  static MovieShortDataDto _instantiate(DecodingData data) {
    return MovieShortDataDto(
        id: data.dec(_f$id),
        posterUrl: data.dec(_f$posterUrl),
        genres: data.dec(_f$genres),
        originCountry: data.dec(_f$originCountry),
        premiereDate: data.dec(_f$premiereDate),
        title: data.dec(_f$title),
        tmdbRating: data.dec(_f$tmdbRating),
        userRating: data.dec(_f$userRating),
        isInWatchlist: data.dec(_f$isInWatchlist),
        isWatched: data.dec(_f$isWatched),
        updatedAt: data.dec(_f$updatedAt),
        localizedTitle: data.dec(_f$localizedTitle),
        localizedPosterUrl: data.dec(_f$localizedPosterUrl));
  }

  @override
  final Function instantiate = _instantiate;

  static MovieShortDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MovieShortDataDto>(map);
  }

  static MovieShortDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<MovieShortDataDto>(json);
  }
}

mixin MovieShortDataDtoMappable {
  String toJsonString() {
    return MovieShortDataDtoMapper.ensureInitialized()
        .encodeJson<MovieShortDataDto>(this as MovieShortDataDto);
  }

  Map<String, dynamic> toJson() {
    return MovieShortDataDtoMapper.ensureInitialized()
        .encodeMap<MovieShortDataDto>(this as MovieShortDataDto);
  }

  MovieShortDataDtoCopyWith<MovieShortDataDto, MovieShortDataDto,
          MovieShortDataDto>
      get copyWith => _MovieShortDataDtoCopyWithImpl(
          this as MovieShortDataDto, $identity, $identity);
  @override
  String toString() {
    return MovieShortDataDtoMapper.ensureInitialized()
        .stringifyValue(this as MovieShortDataDto);
  }

  @override
  bool operator ==(Object other) {
    return MovieShortDataDtoMapper.ensureInitialized()
        .equalsValue(this as MovieShortDataDto, other);
  }

  @override
  int get hashCode {
    return MovieShortDataDtoMapper.ensureInitialized()
        .hashValue(this as MovieShortDataDto);
  }
}

extension MovieShortDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MovieShortDataDto, $Out> {
  MovieShortDataDtoCopyWith<$R, MovieShortDataDto, $Out>
      get $asMovieShortDataDto =>
          $base.as((v, t, t2) => _MovieShortDataDtoCopyWithImpl(v, t, t2));
}

abstract class MovieShortDataDtoCopyWith<$R, $In extends MovieShortDataDto,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, MovieGenreDto,
      ObjectCopyWith<$R, MovieGenreDto, MovieGenreDto>>? get genres;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get originCountry;
  RatingDataDtoCopyWith<$R, RatingDataDto, RatingDataDto>? get tmdbRating;
  LocalizedStringCopyWith<$R, LocalizedString, LocalizedString>?
      get localizedTitle;
  LocalizedStringCopyWith<$R, LocalizedString, LocalizedString>?
      get localizedPosterUrl;
  $R call(
      {int? id,
      String? posterUrl,
      List<MovieGenreDto>? genres,
      List<String>? originCountry,
      DateTime? premiereDate,
      String? title,
      RatingDataDto? tmdbRating,
      int? userRating,
      bool? isInWatchlist,
      bool? isWatched,
      DateTime? updatedAt,
      LocalizedString? localizedTitle,
      LocalizedString? localizedPosterUrl});
  MovieShortDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MovieShortDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MovieShortDataDto, $Out>
    implements MovieShortDataDtoCopyWith<$R, MovieShortDataDto, $Out> {
  _MovieShortDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MovieShortDataDto> $mapper =
      MovieShortDataDtoMapper.ensureInitialized();
  @override
  ListCopyWith<$R, MovieGenreDto,
          ObjectCopyWith<$R, MovieGenreDto, MovieGenreDto>>?
      get genres => $value.genres != null
          ? ListCopyWith($value.genres!,
              (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(genres: v))
          : null;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get originCountry => $value.originCountry != null
          ? ListCopyWith(
              $value.originCountry!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(originCountry: v))
          : null;
  @override
  RatingDataDtoCopyWith<$R, RatingDataDto, RatingDataDto>? get tmdbRating =>
      $value.tmdbRating?.copyWith.$chain((v) => call(tmdbRating: v));
  @override
  LocalizedStringCopyWith<$R, LocalizedString, LocalizedString>?
      get localizedTitle => $value.localizedTitle?.copyWith
          .$chain((v) => call(localizedTitle: v));
  @override
  LocalizedStringCopyWith<$R, LocalizedString, LocalizedString>?
      get localizedPosterUrl => $value.localizedPosterUrl?.copyWith
          .$chain((v) => call(localizedPosterUrl: v));
  @override
  $R call(
          {Object? id = $none,
          Object? posterUrl = $none,
          Object? genres = $none,
          Object? originCountry = $none,
          Object? premiereDate = $none,
          Object? title = $none,
          Object? tmdbRating = $none,
          Object? userRating = $none,
          Object? isInWatchlist = $none,
          Object? isWatched = $none,
          Object? updatedAt = $none,
          Object? localizedTitle = $none,
          Object? localizedPosterUrl = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (posterUrl != $none) #posterUrl: posterUrl,
        if (genres != $none) #genres: genres,
        if (originCountry != $none) #originCountry: originCountry,
        if (premiereDate != $none) #premiereDate: premiereDate,
        if (title != $none) #title: title,
        if (tmdbRating != $none) #tmdbRating: tmdbRating,
        if (userRating != $none) #userRating: userRating,
        if (isInWatchlist != $none) #isInWatchlist: isInWatchlist,
        if (isWatched != $none) #isWatched: isWatched,
        if (updatedAt != $none) #updatedAt: updatedAt,
        if (localizedTitle != $none) #localizedTitle: localizedTitle,
        if (localizedPosterUrl != $none) #localizedPosterUrl: localizedPosterUrl
      }));
  @override
  MovieShortDataDto $make(CopyWithData data) => MovieShortDataDto(
      id: data.get(#id, or: $value.id),
      posterUrl: data.get(#posterUrl, or: $value.posterUrl),
      genres: data.get(#genres, or: $value.genres),
      originCountry: data.get(#originCountry, or: $value.originCountry),
      premiereDate: data.get(#premiereDate, or: $value.premiereDate),
      title: data.get(#title, or: $value.title),
      tmdbRating: data.get(#tmdbRating, or: $value.tmdbRating),
      userRating: data.get(#userRating, or: $value.userRating),
      isInWatchlist: data.get(#isInWatchlist, or: $value.isInWatchlist),
      isWatched: data.get(#isWatched, or: $value.isWatched),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      localizedTitle: data.get(#localizedTitle, or: $value.localizedTitle),
      localizedPosterUrl:
          data.get(#localizedPosterUrl, or: $value.localizedPosterUrl));

  @override
  MovieShortDataDtoCopyWith<$R2, MovieShortDataDto, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MovieShortDataDtoCopyWithImpl($value, $cast, t);
}
