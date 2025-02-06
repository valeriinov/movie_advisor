// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'series_data.dart';

class SeriesDataMapper extends ClassMapperBase<SeriesData> {
  SeriesDataMapper._();

  static SeriesDataMapper? _instance;
  static SeriesDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SeriesDataMapper._());
      MediaDataMapper.ensureInitialized();
      TMDBRatingMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SeriesData';

  static int _$id(SeriesData v) => v.id;
  static const Field<SeriesData, int> _f$id = Field('id', _$id);
  static String _$backdropUrl(SeriesData v) => v.backdropUrl;
  static const Field<SeriesData, String> _f$backdropUrl =
      Field('backdropUrl', _$backdropUrl);
  static String _$posterUrl(SeriesData v) => v.posterUrl;
  static const Field<SeriesData, String> _f$posterUrl =
      Field('posterUrl', _$posterUrl);
  static List<SeriesGenre> _$genres(SeriesData v) => v.genres;
  static const Field<SeriesData, List<SeriesGenre>> _f$genres =
      Field('genres', _$genres);
  static List<String> _$originCountry(SeriesData v) => v.originCountry;
  static const Field<SeriesData, List<String>> _f$originCountry =
      Field('originCountry', _$originCountry);
  static String _$originalLanguage(SeriesData v) => v.originalLanguage;
  static const Field<SeriesData, String> _f$originalLanguage =
      Field('originalLanguage', _$originalLanguage);
  static String _$originalTitle(SeriesData v) => v.originalTitle;
  static const Field<SeriesData, String> _f$originalTitle =
      Field('originalTitle', _$originalTitle);
  static DateTime _$premiereDate(SeriesData v) => v.premiereDate;
  static const Field<SeriesData, DateTime> _f$premiereDate =
      Field('premiereDate', _$premiereDate);
  static String _$title(SeriesData v) => v.title;
  static const Field<SeriesData, String> _f$title = Field('title', _$title);
  static String _$overview(SeriesData v) => v.overview;
  static const Field<SeriesData, String> _f$overview =
      Field('overview', _$overview);
  static TMDBRating _$tmdbRating(SeriesData v) => v.tmdbRating;
  static const Field<SeriesData, TMDBRating> _f$tmdbRating =
      Field('tmdbRating', _$tmdbRating);
  static int _$userRating(SeriesData v) => v.userRating;
  static const Field<SeriesData, int> _f$userRating =
      Field('userRating', _$userRating);
  static bool _$isInWatchlist(SeriesData v) => v.isInWatchlist;
  static const Field<SeriesData, bool> _f$isInWatchlist =
      Field('isInWatchlist', _$isInWatchlist);
  static bool _$isWatched(SeriesData v) => v.isWatched;
  static const Field<SeriesData, bool> _f$isWatched =
      Field('isWatched', _$isWatched);

  @override
  final MappableFields<SeriesData> fields = const {
    #id: _f$id,
    #backdropUrl: _f$backdropUrl,
    #posterUrl: _f$posterUrl,
    #genres: _f$genres,
    #originCountry: _f$originCountry,
    #originalLanguage: _f$originalLanguage,
    #originalTitle: _f$originalTitle,
    #premiereDate: _f$premiereDate,
    #title: _f$title,
    #overview: _f$overview,
    #tmdbRating: _f$tmdbRating,
    #userRating: _f$userRating,
    #isInWatchlist: _f$isInWatchlist,
    #isWatched: _f$isWatched,
  };

  static SeriesData _instantiate(DecodingData data) {
    return SeriesData(
        id: data.dec(_f$id),
        backdropUrl: data.dec(_f$backdropUrl),
        posterUrl: data.dec(_f$posterUrl),
        genres: data.dec(_f$genres),
        originCountry: data.dec(_f$originCountry),
        originalLanguage: data.dec(_f$originalLanguage),
        originalTitle: data.dec(_f$originalTitle),
        premiereDate: data.dec(_f$premiereDate),
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

mixin SeriesDataMappable {
  SeriesDataCopyWith<SeriesData, SeriesData, SeriesData> get copyWith =>
      _SeriesDataCopyWithImpl(this as SeriesData, $identity, $identity);
  @override
  String toString() {
    return SeriesDataMapper.ensureInitialized()
        .stringifyValue(this as SeriesData);
  }

  @override
  bool operator ==(Object other) {
    return SeriesDataMapper.ensureInitialized()
        .equalsValue(this as SeriesData, other);
  }

  @override
  int get hashCode {
    return SeriesDataMapper.ensureInitialized().hashValue(this as SeriesData);
  }
}

extension SeriesDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SeriesData, $Out> {
  SeriesDataCopyWith<$R, SeriesData, $Out> get $asSeriesData =>
      $base.as((v, t, t2) => _SeriesDataCopyWithImpl(v, t, t2));
}

abstract class SeriesDataCopyWith<$R, $In extends SeriesData, $Out>
    implements MediaDataCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, SeriesGenre, ObjectCopyWith<$R, SeriesGenre, SeriesGenre>>
      get genres;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get originCountry;
  @override
  TMDBRatingCopyWith<$R, TMDBRating, TMDBRating> get tmdbRating;
  @override
  $R call(
      {int? id,
      String? backdropUrl,
      String? posterUrl,
      List<SeriesGenre>? genres,
      List<String>? originCountry,
      String? originalLanguage,
      String? originalTitle,
      DateTime? premiereDate,
      String? title,
      String? overview,
      TMDBRating? tmdbRating,
      int? userRating,
      bool? isInWatchlist,
      bool? isWatched});
  SeriesDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SeriesDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SeriesData, $Out>
    implements SeriesDataCopyWith<$R, SeriesData, $Out> {
  _SeriesDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SeriesData> $mapper =
      SeriesDataMapper.ensureInitialized();
  @override
  ListCopyWith<$R, SeriesGenre, ObjectCopyWith<$R, SeriesGenre, SeriesGenre>>
      get genres => ListCopyWith($value.genres,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(genres: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
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
          String? backdropUrl,
          String? posterUrl,
          List<SeriesGenre>? genres,
          List<String>? originCountry,
          String? originalLanguage,
          String? originalTitle,
          DateTime? premiereDate,
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
        if (originCountry != null) #originCountry: originCountry,
        if (originalLanguage != null) #originalLanguage: originalLanguage,
        if (originalTitle != null) #originalTitle: originalTitle,
        if (premiereDate != null) #premiereDate: premiereDate,
        if (title != null) #title: title,
        if (overview != null) #overview: overview,
        if (tmdbRating != null) #tmdbRating: tmdbRating,
        if (userRating != null) #userRating: userRating,
        if (isInWatchlist != null) #isInWatchlist: isInWatchlist,
        if (isWatched != null) #isWatched: isWatched
      }));
  @override
  SeriesData $make(CopyWithData data) => SeriesData(
      id: data.get(#id, or: $value.id),
      backdropUrl: data.get(#backdropUrl, or: $value.backdropUrl),
      posterUrl: data.get(#posterUrl, or: $value.posterUrl),
      genres: data.get(#genres, or: $value.genres),
      originCountry: data.get(#originCountry, or: $value.originCountry),
      originalLanguage:
          data.get(#originalLanguage, or: $value.originalLanguage),
      originalTitle: data.get(#originalTitle, or: $value.originalTitle),
      premiereDate: data.get(#premiereDate, or: $value.premiereDate),
      title: data.get(#title, or: $value.title),
      overview: data.get(#overview, or: $value.overview),
      tmdbRating: data.get(#tmdbRating, or: $value.tmdbRating),
      userRating: data.get(#userRating, or: $value.userRating),
      isInWatchlist: data.get(#isInWatchlist, or: $value.isInWatchlist),
      isWatched: data.get(#isWatched, or: $value.isWatched));

  @override
  SeriesDataCopyWith<$R2, SeriesData, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SeriesDataCopyWithImpl($value, $cast, t);
}
