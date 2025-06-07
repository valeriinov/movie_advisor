// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'series_short_data_dto.dart';

class SeriesShortDataDtoMapper extends ClassMapperBase<SeriesShortDataDto> {
  SeriesShortDataDtoMapper._();

  static SeriesShortDataDtoMapper? _instance;
  static SeriesShortDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SeriesShortDataDtoMapper._());
      SeriesGenreDtoMapper.ensureInitialized();
      CountryDtoMapper.ensureInitialized();
      RatingDataDtoMapper.ensureInitialized();
      LocalizedStringMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SeriesShortDataDto';

  static int? _$id(SeriesShortDataDto v) => v.id;
  static const Field<SeriesShortDataDto, int> _f$id =
      Field('id', _$id, opt: true);
  static String? _$posterUrl(SeriesShortDataDto v) => v.posterUrl;
  static const Field<SeriesShortDataDto, String> _f$posterUrl =
      Field('posterUrl', _$posterUrl, key: r'poster_url', opt: true);
  static List<SeriesGenreDto>? _$genres(SeriesShortDataDto v) => v.genres;
  static const Field<SeriesShortDataDto, List<SeriesGenreDto>> _f$genres =
      Field('genres', _$genres, opt: true);
  static List<CountryDto>? _$originCountry(SeriesShortDataDto v) =>
      v.originCountry;
  static const Field<SeriesShortDataDto, List<CountryDto>> _f$originCountry =
      Field('originCountry', _$originCountry,
          key: r'origin_country', opt: true);
  static DateTime? _$premiereDate(SeriesShortDataDto v) => v.premiereDate;
  static const Field<SeriesShortDataDto, DateTime> _f$premiereDate = Field(
      'premiereDate', _$premiereDate,
      key: r'premiere_date', opt: true, hook: DateMapperHook());
  static String? _$title(SeriesShortDataDto v) => v.title;
  static const Field<SeriesShortDataDto, String> _f$title =
      Field('title', _$title, opt: true);
  static RatingDataDto? _$tmdbRating(SeriesShortDataDto v) => v.tmdbRating;
  static const Field<SeriesShortDataDto, RatingDataDto> _f$tmdbRating =
      Field('tmdbRating', _$tmdbRating, key: r'tmdb_rating', opt: true);
  static int? _$userRating(SeriesShortDataDto v) => v.userRating;
  static const Field<SeriesShortDataDto, int> _f$userRating =
      Field('userRating', _$userRating, key: r'user_rating', opt: true);
  static bool? _$isInWatchlist(SeriesShortDataDto v) => v.isInWatchlist;
  static const Field<SeriesShortDataDto, bool> _f$isInWatchlist = Field(
      'isInWatchlist', _$isInWatchlist,
      key: r'is_in_watchlist', opt: true);
  static bool? _$isWatched(SeriesShortDataDto v) => v.isWatched;
  static const Field<SeriesShortDataDto, bool> _f$isWatched =
      Field('isWatched', _$isWatched, key: r'is_watched', opt: true);
  static DateTime? _$updatedAt(SeriesShortDataDto v) => v.updatedAt;
  static const Field<SeriesShortDataDto, DateTime> _f$updatedAt = Field(
      'updatedAt', _$updatedAt,
      key: r'updated_at', opt: true, hook: DateMapperHook());
  static LocalizedString? _$localizedTitle(SeriesShortDataDto v) =>
      v.localizedTitle;
  static const Field<SeriesShortDataDto, LocalizedString> _f$localizedTitle =
      Field('localizedTitle', _$localizedTitle,
          key: r'localized_title', opt: true);
  static LocalizedString? _$localizedPosterUrl(SeriesShortDataDto v) =>
      v.localizedPosterUrl;
  static const Field<SeriesShortDataDto, LocalizedString>
      _f$localizedPosterUrl = Field('localizedPosterUrl', _$localizedPosterUrl,
          key: r'localized_poster_url', opt: true);
  static DateTime? _$watchlistAddedAt(SeriesShortDataDto v) =>
      v.watchlistAddedAt;
  static const Field<SeriesShortDataDto, DateTime> _f$watchlistAddedAt = Field(
      'watchlistAddedAt', _$watchlistAddedAt,
      key: r'watchlist_added_at', opt: true, hook: DateMapperHook());
  static DateTime? _$lastWatchedAt(SeriesShortDataDto v) => v.lastWatchedAt;
  static const Field<SeriesShortDataDto, DateTime> _f$lastWatchedAt = Field(
      'lastWatchedAt', _$lastWatchedAt,
      key: r'last_watched_at', opt: true, hook: DateMapperHook());

  @override
  final MappableFields<SeriesShortDataDto> fields = const {
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
    #watchlistAddedAt: _f$watchlistAddedAt,
    #lastWatchedAt: _f$lastWatchedAt,
  };
  @override
  final bool ignoreNull = true;

  static SeriesShortDataDto _instantiate(DecodingData data) {
    return SeriesShortDataDto(
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
        localizedPosterUrl: data.dec(_f$localizedPosterUrl),
        watchlistAddedAt: data.dec(_f$watchlistAddedAt),
        lastWatchedAt: data.dec(_f$lastWatchedAt));
  }

  @override
  final Function instantiate = _instantiate;

  static SeriesShortDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SeriesShortDataDto>(map);
  }

  static SeriesShortDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<SeriesShortDataDto>(json);
  }
}

mixin SeriesShortDataDtoMappable {
  String toJsonString() {
    return SeriesShortDataDtoMapper.ensureInitialized()
        .encodeJson<SeriesShortDataDto>(this as SeriesShortDataDto);
  }

  Map<String, dynamic> toJson() {
    return SeriesShortDataDtoMapper.ensureInitialized()
        .encodeMap<SeriesShortDataDto>(this as SeriesShortDataDto);
  }

  SeriesShortDataDtoCopyWith<SeriesShortDataDto, SeriesShortDataDto,
          SeriesShortDataDto>
      get copyWith => _SeriesShortDataDtoCopyWithImpl<SeriesShortDataDto,
          SeriesShortDataDto>(this as SeriesShortDataDto, $identity, $identity);
  @override
  String toString() {
    return SeriesShortDataDtoMapper.ensureInitialized()
        .stringifyValue(this as SeriesShortDataDto);
  }

  @override
  bool operator ==(Object other) {
    return SeriesShortDataDtoMapper.ensureInitialized()
        .equalsValue(this as SeriesShortDataDto, other);
  }

  @override
  int get hashCode {
    return SeriesShortDataDtoMapper.ensureInitialized()
        .hashValue(this as SeriesShortDataDto);
  }
}

extension SeriesShortDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SeriesShortDataDto, $Out> {
  SeriesShortDataDtoCopyWith<$R, SeriesShortDataDto, $Out>
      get $asSeriesShortDataDto => $base.as(
          (v, t, t2) => _SeriesShortDataDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SeriesShortDataDtoCopyWith<$R, $In extends SeriesShortDataDto,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, SeriesGenreDto,
      ObjectCopyWith<$R, SeriesGenreDto, SeriesGenreDto>>? get genres;
  ListCopyWith<$R, CountryDto, ObjectCopyWith<$R, CountryDto, CountryDto>>?
      get originCountry;
  RatingDataDtoCopyWith<$R, RatingDataDto, RatingDataDto>? get tmdbRating;
  LocalizedStringCopyWith<$R, LocalizedString, LocalizedString>?
      get localizedTitle;
  LocalizedStringCopyWith<$R, LocalizedString, LocalizedString>?
      get localizedPosterUrl;
  $R call(
      {int? id,
      String? posterUrl,
      List<SeriesGenreDto>? genres,
      List<CountryDto>? originCountry,
      DateTime? premiereDate,
      String? title,
      RatingDataDto? tmdbRating,
      int? userRating,
      bool? isInWatchlist,
      bool? isWatched,
      DateTime? updatedAt,
      LocalizedString? localizedTitle,
      LocalizedString? localizedPosterUrl,
      DateTime? watchlistAddedAt,
      DateTime? lastWatchedAt});
  SeriesShortDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SeriesShortDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SeriesShortDataDto, $Out>
    implements SeriesShortDataDtoCopyWith<$R, SeriesShortDataDto, $Out> {
  _SeriesShortDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SeriesShortDataDto> $mapper =
      SeriesShortDataDtoMapper.ensureInitialized();
  @override
  ListCopyWith<$R, SeriesGenreDto,
          ObjectCopyWith<$R, SeriesGenreDto, SeriesGenreDto>>?
      get genres => $value.genres != null
          ? ListCopyWith($value.genres!,
              (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(genres: v))
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
          Object? localizedPosterUrl = $none,
          Object? watchlistAddedAt = $none,
          Object? lastWatchedAt = $none}) =>
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
        if (localizedPosterUrl != $none)
          #localizedPosterUrl: localizedPosterUrl,
        if (watchlistAddedAt != $none) #watchlistAddedAt: watchlistAddedAt,
        if (lastWatchedAt != $none) #lastWatchedAt: lastWatchedAt
      }));
  @override
  SeriesShortDataDto $make(CopyWithData data) => SeriesShortDataDto(
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
          data.get(#localizedPosterUrl, or: $value.localizedPosterUrl),
      watchlistAddedAt:
          data.get(#watchlistAddedAt, or: $value.watchlistAddedAt),
      lastWatchedAt: data.get(#lastWatchedAt, or: $value.lastWatchedAt));

  @override
  SeriesShortDataDtoCopyWith<$R2, SeriesShortDataDto, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SeriesShortDataDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
