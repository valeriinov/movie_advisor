// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'series_short_data.dart';

class SeriesShortDataMapper extends ClassMapperBase<SeriesShortData> {
  SeriesShortDataMapper._();

  static SeriesShortDataMapper? _instance;
  static SeriesShortDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SeriesShortDataMapper._());
      MediaShortDataMapper.ensureInitialized();
      TMDBRatingMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SeriesShortData';

  static int _$id(SeriesShortData v) => v.id;
  static const Field<SeriesShortData, int> _f$id =
      Field('id', _$id, opt: true, def: -1);
  static String _$posterUrl(SeriesShortData v) => v.posterUrl;
  static const Field<SeriesShortData, String> _f$posterUrl =
      Field('posterUrl', _$posterUrl, opt: true, def: '');
  static List<SeriesGenre> _$genres(SeriesShortData v) => v.genres;
  static const Field<SeriesShortData, List<SeriesGenre>> _f$genres =
      Field('genres', _$genres, opt: true, def: const []);
  static List<Country> _$originCountry(SeriesShortData v) => v.originCountry;
  static const Field<SeriesShortData, List<Country>> _f$originCountry =
      Field('originCountry', _$originCountry, opt: true, def: const []);
  static DateTime? _$premiereDate(SeriesShortData v) => v.premiereDate;
  static const Field<SeriesShortData, DateTime> _f$premiereDate =
      Field('premiereDate', _$premiereDate, opt: true);
  static String _$title(SeriesShortData v) => v.title;
  static const Field<SeriesShortData, String> _f$title =
      Field('title', _$title, opt: true, def: '');
  static TMDBRating _$tmdbRating(SeriesShortData v) => v.tmdbRating;
  static const Field<SeriesShortData, TMDBRating> _f$tmdbRating =
      Field('tmdbRating', _$tmdbRating, opt: true, def: const TMDBRating());
  static int _$userRating(SeriesShortData v) => v.userRating;
  static const Field<SeriesShortData, int> _f$userRating =
      Field('userRating', _$userRating, opt: true, def: 0);
  static bool _$isInWatchlist(SeriesShortData v) => v.isInWatchlist;
  static const Field<SeriesShortData, bool> _f$isInWatchlist =
      Field('isInWatchlist', _$isInWatchlist, opt: true, def: false);
  static bool _$isWatched(SeriesShortData v) => v.isWatched;
  static const Field<SeriesShortData, bool> _f$isWatched =
      Field('isWatched', _$isWatched, opt: true, def: false);
  static DateTime? _$watchlistAddedAt(SeriesShortData v) => v.watchlistAddedAt;
  static const Field<SeriesShortData, DateTime> _f$watchlistAddedAt =
      Field('watchlistAddedAt', _$watchlistAddedAt, opt: true);
  static DateTime? _$lastWatchedAt(SeriesShortData v) => v.lastWatchedAt;
  static const Field<SeriesShortData, DateTime> _f$lastWatchedAt =
      Field('lastWatchedAt', _$lastWatchedAt, opt: true);

  @override
  final MappableFields<SeriesShortData> fields = const {
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
    #watchlistAddedAt: _f$watchlistAddedAt,
    #lastWatchedAt: _f$lastWatchedAt,
  };

  static SeriesShortData _instantiate(DecodingData data) {
    return SeriesShortData(
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
        watchlistAddedAt: data.dec(_f$watchlistAddedAt),
        lastWatchedAt: data.dec(_f$lastWatchedAt));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin SeriesShortDataMappable {
  SeriesShortDataCopyWith<SeriesShortData, SeriesShortData, SeriesShortData>
      get copyWith =>
          _SeriesShortDataCopyWithImpl<SeriesShortData, SeriesShortData>(
              this as SeriesShortData, $identity, $identity);
  @override
  String toString() {
    return SeriesShortDataMapper.ensureInitialized()
        .stringifyValue(this as SeriesShortData);
  }

  @override
  bool operator ==(Object other) {
    return SeriesShortDataMapper.ensureInitialized()
        .equalsValue(this as SeriesShortData, other);
  }

  @override
  int get hashCode {
    return SeriesShortDataMapper.ensureInitialized()
        .hashValue(this as SeriesShortData);
  }
}

extension SeriesShortDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SeriesShortData, $Out> {
  SeriesShortDataCopyWith<$R, SeriesShortData, $Out> get $asSeriesShortData =>
      $base.as((v, t, t2) => _SeriesShortDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SeriesShortDataCopyWith<$R, $In extends SeriesShortData, $Out>
    implements MediaShortDataCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, SeriesGenre, ObjectCopyWith<$R, SeriesGenre, SeriesGenre>>
      get genres;
  @override
  ListCopyWith<$R, Country, ObjectCopyWith<$R, Country, Country>>
      get originCountry;
  @override
  TMDBRatingCopyWith<$R, TMDBRating, TMDBRating> get tmdbRating;
  @override
  $R call(
      {int? id,
      String? posterUrl,
      List<SeriesGenre>? genres,
      List<Country>? originCountry,
      DateTime? premiereDate,
      String? title,
      TMDBRating? tmdbRating,
      int? userRating,
      bool? isInWatchlist,
      bool? isWatched,
      DateTime? watchlistAddedAt,
      DateTime? lastWatchedAt});
  SeriesShortDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SeriesShortDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SeriesShortData, $Out>
    implements SeriesShortDataCopyWith<$R, SeriesShortData, $Out> {
  _SeriesShortDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SeriesShortData> $mapper =
      SeriesShortDataMapper.ensureInitialized();
  @override
  ListCopyWith<$R, SeriesGenre, ObjectCopyWith<$R, SeriesGenre, SeriesGenre>>
      get genres => ListCopyWith($value.genres,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(genres: v));
  @override
  ListCopyWith<$R, Country, ObjectCopyWith<$R, Country, Country>>
      get originCountry => ListCopyWith(
          $value.originCountry,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(originCountry: v));
  @override
  TMDBRatingCopyWith<$R, TMDBRating, TMDBRating> get tmdbRating =>
      $value.tmdbRating.copyWith.$chain((v) => call(tmdbRating: v));
  @override
  $R call(
          {int? id,
          String? posterUrl,
          List<SeriesGenre>? genres,
          List<Country>? originCountry,
          Object? premiereDate = $none,
          String? title,
          TMDBRating? tmdbRating,
          int? userRating,
          bool? isInWatchlist,
          bool? isWatched,
          Object? watchlistAddedAt = $none,
          Object? lastWatchedAt = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (posterUrl != null) #posterUrl: posterUrl,
        if (genres != null) #genres: genres,
        if (originCountry != null) #originCountry: originCountry,
        if (premiereDate != $none) #premiereDate: premiereDate,
        if (title != null) #title: title,
        if (tmdbRating != null) #tmdbRating: tmdbRating,
        if (userRating != null) #userRating: userRating,
        if (isInWatchlist != null) #isInWatchlist: isInWatchlist,
        if (isWatched != null) #isWatched: isWatched,
        if (watchlistAddedAt != $none) #watchlistAddedAt: watchlistAddedAt,
        if (lastWatchedAt != $none) #lastWatchedAt: lastWatchedAt
      }));
  @override
  SeriesShortData $make(CopyWithData data) => SeriesShortData(
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
      watchlistAddedAt:
          data.get(#watchlistAddedAt, or: $value.watchlistAddedAt),
      lastWatchedAt: data.get(#lastWatchedAt, or: $value.lastWatchedAt));

  @override
  SeriesShortDataCopyWith<$R2, SeriesShortData, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SeriesShortDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
