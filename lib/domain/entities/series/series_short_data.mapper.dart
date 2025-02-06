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
  static const Field<SeriesShortData, int> _f$id = Field('id', _$id);
  static String _$posterUrl(SeriesShortData v) => v.posterUrl;
  static const Field<SeriesShortData, String> _f$posterUrl =
      Field('posterUrl', _$posterUrl);
  static List<SeriesGenre> _$genres(SeriesShortData v) => v.genres;
  static const Field<SeriesShortData, List<SeriesGenre>> _f$genres =
      Field('genres', _$genres);
  static DateTime? _$premiereDate(SeriesShortData v) => v.premiereDate;
  static const Field<SeriesShortData, DateTime> _f$premiereDate =
      Field('premiereDate', _$premiereDate);
  static String? _$title(SeriesShortData v) => v.title;
  static const Field<SeriesShortData, String> _f$title =
      Field('title', _$title);
  static TMDBRating _$tmdbRating(SeriesShortData v) => v.tmdbRating;
  static const Field<SeriesShortData, TMDBRating> _f$tmdbRating =
      Field('tmdbRating', _$tmdbRating);
  static int _$userRating(SeriesShortData v) => v.userRating;
  static const Field<SeriesShortData, int> _f$userRating =
      Field('userRating', _$userRating);
  static bool _$isInWatchlist(SeriesShortData v) => v.isInWatchlist;
  static const Field<SeriesShortData, bool> _f$isInWatchlist =
      Field('isInWatchlist', _$isInWatchlist);
  static bool _$isWatched(SeriesShortData v) => v.isWatched;
  static const Field<SeriesShortData, bool> _f$isWatched =
      Field('isWatched', _$isWatched);

  @override
  final MappableFields<SeriesShortData> fields = const {
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

  static SeriesShortData _instantiate(DecodingData data) {
    return SeriesShortData(
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

mixin SeriesShortDataMappable {
  SeriesShortDataCopyWith<SeriesShortData, SeriesShortData, SeriesShortData>
      get copyWith => _SeriesShortDataCopyWithImpl(
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
      $base.as((v, t, t2) => _SeriesShortDataCopyWithImpl(v, t, t2));
}

abstract class SeriesShortDataCopyWith<$R, $In extends SeriesShortData, $Out>
    implements MediaShortDataCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, SeriesGenre, ObjectCopyWith<$R, SeriesGenre, SeriesGenre>>
      get genres;
  @override
  TMDBRatingCopyWith<$R, TMDBRating, TMDBRating> get tmdbRating;
  @override
  $R call(
      {int? id,
      String? posterUrl,
      List<SeriesGenre>? genres,
      DateTime? premiereDate,
      String? title,
      TMDBRating? tmdbRating,
      int? userRating,
      bool? isInWatchlist,
      bool? isWatched});
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
  TMDBRatingCopyWith<$R, TMDBRating, TMDBRating> get tmdbRating =>
      $value.tmdbRating.copyWith.$chain((v) => call(tmdbRating: v));
  @override
  $R call(
          {int? id,
          String? posterUrl,
          List<SeriesGenre>? genres,
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
  SeriesShortData $make(CopyWithData data) => SeriesShortData(
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
  SeriesShortDataCopyWith<$R2, SeriesShortData, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SeriesShortDataCopyWithImpl($value, $cast, t);
}
