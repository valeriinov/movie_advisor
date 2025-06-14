// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'series_data_dto.dart';

class SeriesDataDtoMapper extends ClassMapperBase<SeriesDataDto> {
  SeriesDataDtoMapper._();

  static SeriesDataDtoMapper? _instance;
  static SeriesDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SeriesDataDtoMapper._());
      SeriesGenreDtoMapper.ensureInitialized();
      CountryDtoMapper.ensureInitialized();
      CreditsDataDtoMapper.ensureInitialized();
      VideosDataDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SeriesDataDto';

  static int? _$id(SeriesDataDto v) => v.id;
  static const Field<SeriesDataDto, int> _f$id = Field('id', _$id, opt: true);
  static String? _$backdropPath(SeriesDataDto v) => v.backdropPath;
  static const Field<SeriesDataDto, String> _f$backdropPath =
      Field('backdropPath', _$backdropPath, key: r'backdrop_path', opt: true);
  static List<SeriesGenreDto>? _$genres(SeriesDataDto v) => v.genres;
  static const Field<SeriesDataDto, List<SeriesGenreDto>> _f$genres =
      Field('genres', _$genres, key: r'genre_ids', opt: true);
  static List<SeriesGenreDto>? _$genresAlt(SeriesDataDto v) => v.genresAlt;
  static const Field<SeriesDataDto, List<SeriesGenreDto>> _f$genresAlt = Field(
      'genresAlt', _$genresAlt,
      key: r'genres', opt: true, hook: SeriesGenreHook());
  static List<CountryDto>? _$originCountry(SeriesDataDto v) => v.originCountry;
  static const Field<SeriesDataDto, List<CountryDto>> _f$originCountry = Field(
      'originCountry', _$originCountry,
      key: r'origin_country', opt: true);
  static String? _$originalLanguage(SeriesDataDto v) => v.originalLanguage;
  static const Field<SeriesDataDto, String> _f$originalLanguage = Field(
      'originalLanguage', _$originalLanguage,
      key: r'original_language', opt: true);
  static String? _$originalName(SeriesDataDto v) => v.originalName;
  static const Field<SeriesDataDto, String> _f$originalName =
      Field('originalName', _$originalName, key: r'original_name', opt: true);
  static String? _$overview(SeriesDataDto v) => v.overview;
  static const Field<SeriesDataDto, String> _f$overview =
      Field('overview', _$overview, opt: true);
  static double? _$popularity(SeriesDataDto v) => v.popularity;
  static const Field<SeriesDataDto, double> _f$popularity =
      Field('popularity', _$popularity, opt: true);
  static String? _$posterPath(SeriesDataDto v) => v.posterPath;
  static const Field<SeriesDataDto, String> _f$posterPath =
      Field('posterPath', _$posterPath, key: r'poster_path', opt: true);
  static DateTime? _$firstAirDate(SeriesDataDto v) => v.firstAirDate;
  static const Field<SeriesDataDto, DateTime> _f$firstAirDate = Field(
      'firstAirDate', _$firstAirDate,
      key: r'first_air_date', opt: true, hook: DateMapperHook());
  static String? _$name(SeriesDataDto v) => v.name;
  static const Field<SeriesDataDto, String> _f$name =
      Field('name', _$name, opt: true);
  static double? _$voteAverage(SeriesDataDto v) => v.voteAverage;
  static const Field<SeriesDataDto, double> _f$voteAverage =
      Field('voteAverage', _$voteAverage, key: r'vote_average', opt: true);
  static int? _$voteCount(SeriesDataDto v) => v.voteCount;
  static const Field<SeriesDataDto, int> _f$voteCount =
      Field('voteCount', _$voteCount, key: r'vote_count', opt: true);
  static CreditsDataDto? _$credits(SeriesDataDto v) => v.credits;
  static const Field<SeriesDataDto, CreditsDataDto> _f$credits =
      Field('credits', _$credits, opt: true);
  static VideosDataDto? _$videos(SeriesDataDto v) => v.videos;
  static const Field<SeriesDataDto, VideosDataDto> _f$videos =
      Field('videos', _$videos, opt: true);
  static int? _$userRating(SeriesDataDto v) => v.userRating;
  static const Field<SeriesDataDto, int> _f$userRating =
      Field('userRating', _$userRating, key: r'user_rating', opt: true);
  static bool? _$isInWatchlist(SeriesDataDto v) => v.isInWatchlist;
  static const Field<SeriesDataDto, bool> _f$isInWatchlist = Field(
      'isInWatchlist', _$isInWatchlist,
      key: r'is_in_watchlist', opt: true);
  static bool? _$isWatched(SeriesDataDto v) => v.isWatched;
  static const Field<SeriesDataDto, bool> _f$isWatched =
      Field('isWatched', _$isWatched, key: r'is_watched', opt: true);
  static DateTime? _$watchlistAddedAt(SeriesDataDto v) => v.watchlistAddedAt;
  static const Field<SeriesDataDto, DateTime> _f$watchlistAddedAt = Field(
      'watchlistAddedAt', _$watchlistAddedAt,
      key: r'watchlist_added_at', opt: true, hook: DateMapperHook());
  static DateTime? _$lastWatchedAt(SeriesDataDto v) => v.lastWatchedAt;
  static const Field<SeriesDataDto, DateTime> _f$lastWatchedAt = Field(
      'lastWatchedAt', _$lastWatchedAt,
      key: r'last_watched_at', opt: true, hook: DateMapperHook());

  @override
  final MappableFields<SeriesDataDto> fields = const {
    #id: _f$id,
    #backdropPath: _f$backdropPath,
    #genres: _f$genres,
    #genresAlt: _f$genresAlt,
    #originCountry: _f$originCountry,
    #originalLanguage: _f$originalLanguage,
    #originalName: _f$originalName,
    #overview: _f$overview,
    #popularity: _f$popularity,
    #posterPath: _f$posterPath,
    #firstAirDate: _f$firstAirDate,
    #name: _f$name,
    #voteAverage: _f$voteAverage,
    #voteCount: _f$voteCount,
    #credits: _f$credits,
    #videos: _f$videos,
    #userRating: _f$userRating,
    #isInWatchlist: _f$isInWatchlist,
    #isWatched: _f$isWatched,
    #watchlistAddedAt: _f$watchlistAddedAt,
    #lastWatchedAt: _f$lastWatchedAt,
  };
  @override
  final bool ignoreNull = true;

  static SeriesDataDto _instantiate(DecodingData data) {
    return SeriesDataDto(
        id: data.dec(_f$id),
        backdropPath: data.dec(_f$backdropPath),
        genres: data.dec(_f$genres),
        genresAlt: data.dec(_f$genresAlt),
        originCountry: data.dec(_f$originCountry),
        originalLanguage: data.dec(_f$originalLanguage),
        originalName: data.dec(_f$originalName),
        overview: data.dec(_f$overview),
        popularity: data.dec(_f$popularity),
        posterPath: data.dec(_f$posterPath),
        firstAirDate: data.dec(_f$firstAirDate),
        name: data.dec(_f$name),
        voteAverage: data.dec(_f$voteAverage),
        voteCount: data.dec(_f$voteCount),
        credits: data.dec(_f$credits),
        videos: data.dec(_f$videos),
        userRating: data.dec(_f$userRating),
        isInWatchlist: data.dec(_f$isInWatchlist),
        isWatched: data.dec(_f$isWatched),
        watchlistAddedAt: data.dec(_f$watchlistAddedAt),
        lastWatchedAt: data.dec(_f$lastWatchedAt));
  }

  @override
  final Function instantiate = _instantiate;

  static SeriesDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SeriesDataDto>(map);
  }

  static SeriesDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<SeriesDataDto>(json);
  }
}

mixin SeriesDataDtoMappable {
  String toJsonString() {
    return SeriesDataDtoMapper.ensureInitialized()
        .encodeJson<SeriesDataDto>(this as SeriesDataDto);
  }

  Map<String, dynamic> toJson() {
    return SeriesDataDtoMapper.ensureInitialized()
        .encodeMap<SeriesDataDto>(this as SeriesDataDto);
  }

  SeriesDataDtoCopyWith<SeriesDataDto, SeriesDataDto, SeriesDataDto>
      get copyWith => _SeriesDataDtoCopyWithImpl<SeriesDataDto, SeriesDataDto>(
          this as SeriesDataDto, $identity, $identity);
  @override
  String toString() {
    return SeriesDataDtoMapper.ensureInitialized()
        .stringifyValue(this as SeriesDataDto);
  }

  @override
  bool operator ==(Object other) {
    return SeriesDataDtoMapper.ensureInitialized()
        .equalsValue(this as SeriesDataDto, other);
  }

  @override
  int get hashCode {
    return SeriesDataDtoMapper.ensureInitialized()
        .hashValue(this as SeriesDataDto);
  }
}

extension SeriesDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SeriesDataDto, $Out> {
  SeriesDataDtoCopyWith<$R, SeriesDataDto, $Out> get $asSeriesDataDto =>
      $base.as((v, t, t2) => _SeriesDataDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SeriesDataDtoCopyWith<$R, $In extends SeriesDataDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, SeriesGenreDto,
      ObjectCopyWith<$R, SeriesGenreDto, SeriesGenreDto>>? get genres;
  ListCopyWith<$R, SeriesGenreDto,
      ObjectCopyWith<$R, SeriesGenreDto, SeriesGenreDto>>? get genresAlt;
  ListCopyWith<$R, CountryDto, ObjectCopyWith<$R, CountryDto, CountryDto>>?
      get originCountry;
  CreditsDataDtoCopyWith<$R, CreditsDataDto, CreditsDataDto>? get credits;
  VideosDataDtoCopyWith<$R, VideosDataDto, VideosDataDto>? get videos;
  $R call(
      {int? id,
      String? backdropPath,
      List<SeriesGenreDto>? genres,
      List<SeriesGenreDto>? genresAlt,
      List<CountryDto>? originCountry,
      String? originalLanguage,
      String? originalName,
      String? overview,
      double? popularity,
      String? posterPath,
      DateTime? firstAirDate,
      String? name,
      double? voteAverage,
      int? voteCount,
      CreditsDataDto? credits,
      VideosDataDto? videos,
      int? userRating,
      bool? isInWatchlist,
      bool? isWatched,
      DateTime? watchlistAddedAt,
      DateTime? lastWatchedAt});
  SeriesDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SeriesDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SeriesDataDto, $Out>
    implements SeriesDataDtoCopyWith<$R, SeriesDataDto, $Out> {
  _SeriesDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SeriesDataDto> $mapper =
      SeriesDataDtoMapper.ensureInitialized();
  @override
  ListCopyWith<$R, SeriesGenreDto,
          ObjectCopyWith<$R, SeriesGenreDto, SeriesGenreDto>>?
      get genres => $value.genres != null
          ? ListCopyWith($value.genres!,
              (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(genres: v))
          : null;
  @override
  ListCopyWith<$R, SeriesGenreDto,
          ObjectCopyWith<$R, SeriesGenreDto, SeriesGenreDto>>?
      get genresAlt => $value.genresAlt != null
          ? ListCopyWith(
              $value.genresAlt!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(genresAlt: v))
          : null;
  @override
  ListCopyWith<$R, CountryDto, ObjectCopyWith<$R, CountryDto, CountryDto>>?
      get originCountry => $value.originCountry != null
          ? ListCopyWith(
              $value.originCountry!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(originCountry: v))
          : null;
  @override
  CreditsDataDtoCopyWith<$R, CreditsDataDto, CreditsDataDto>? get credits =>
      $value.credits?.copyWith.$chain((v) => call(credits: v));
  @override
  VideosDataDtoCopyWith<$R, VideosDataDto, VideosDataDto>? get videos =>
      $value.videos?.copyWith.$chain((v) => call(videos: v));
  @override
  $R call(
          {Object? id = $none,
          Object? backdropPath = $none,
          Object? genres = $none,
          Object? genresAlt = $none,
          Object? originCountry = $none,
          Object? originalLanguage = $none,
          Object? originalName = $none,
          Object? overview = $none,
          Object? popularity = $none,
          Object? posterPath = $none,
          Object? firstAirDate = $none,
          Object? name = $none,
          Object? voteAverage = $none,
          Object? voteCount = $none,
          Object? credits = $none,
          Object? videos = $none,
          Object? userRating = $none,
          Object? isInWatchlist = $none,
          Object? isWatched = $none,
          Object? watchlistAddedAt = $none,
          Object? lastWatchedAt = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (backdropPath != $none) #backdropPath: backdropPath,
        if (genres != $none) #genres: genres,
        if (genresAlt != $none) #genresAlt: genresAlt,
        if (originCountry != $none) #originCountry: originCountry,
        if (originalLanguage != $none) #originalLanguage: originalLanguage,
        if (originalName != $none) #originalName: originalName,
        if (overview != $none) #overview: overview,
        if (popularity != $none) #popularity: popularity,
        if (posterPath != $none) #posterPath: posterPath,
        if (firstAirDate != $none) #firstAirDate: firstAirDate,
        if (name != $none) #name: name,
        if (voteAverage != $none) #voteAverage: voteAverage,
        if (voteCount != $none) #voteCount: voteCount,
        if (credits != $none) #credits: credits,
        if (videos != $none) #videos: videos,
        if (userRating != $none) #userRating: userRating,
        if (isInWatchlist != $none) #isInWatchlist: isInWatchlist,
        if (isWatched != $none) #isWatched: isWatched,
        if (watchlistAddedAt != $none) #watchlistAddedAt: watchlistAddedAt,
        if (lastWatchedAt != $none) #lastWatchedAt: lastWatchedAt
      }));
  @override
  SeriesDataDto $make(CopyWithData data) => SeriesDataDto(
      id: data.get(#id, or: $value.id),
      backdropPath: data.get(#backdropPath, or: $value.backdropPath),
      genres: data.get(#genres, or: $value.genres),
      genresAlt: data.get(#genresAlt, or: $value.genresAlt),
      originCountry: data.get(#originCountry, or: $value.originCountry),
      originalLanguage:
          data.get(#originalLanguage, or: $value.originalLanguage),
      originalName: data.get(#originalName, or: $value.originalName),
      overview: data.get(#overview, or: $value.overview),
      popularity: data.get(#popularity, or: $value.popularity),
      posterPath: data.get(#posterPath, or: $value.posterPath),
      firstAirDate: data.get(#firstAirDate, or: $value.firstAirDate),
      name: data.get(#name, or: $value.name),
      voteAverage: data.get(#voteAverage, or: $value.voteAverage),
      voteCount: data.get(#voteCount, or: $value.voteCount),
      credits: data.get(#credits, or: $value.credits),
      videos: data.get(#videos, or: $value.videos),
      userRating: data.get(#userRating, or: $value.userRating),
      isInWatchlist: data.get(#isInWatchlist, or: $value.isInWatchlist),
      isWatched: data.get(#isWatched, or: $value.isWatched),
      watchlistAddedAt:
          data.get(#watchlistAddedAt, or: $value.watchlistAddedAt),
      lastWatchedAt: data.get(#lastWatchedAt, or: $value.lastWatchedAt));

  @override
  SeriesDataDtoCopyWith<$R2, SeriesDataDto, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SeriesDataDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
