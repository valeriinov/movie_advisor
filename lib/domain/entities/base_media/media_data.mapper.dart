// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'media_data.dart';

class MediaDataMapper extends ClassMapperBase<MediaData> {
  MediaDataMapper._();

  static MediaDataMapper? _instance;
  static MediaDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MediaDataMapper._());
      TMDBRatingMapper.ensureInitialized();
      CastDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MediaData';

  static int _$id(MediaData v) => v.id;
  static const Field<MediaData, int> _f$id = Field('id', _$id);
  static String _$backdropUrl(MediaData v) => v.backdropUrl;
  static const Field<MediaData, String> _f$backdropUrl =
      Field('backdropUrl', _$backdropUrl);
  static String _$posterUrl(MediaData v) => v.posterUrl;
  static const Field<MediaData, String> _f$posterUrl =
      Field('posterUrl', _$posterUrl);
  static List<String> _$originCountry(MediaData v) => v.originCountry;
  static const Field<MediaData, List<String>> _f$originCountry =
      Field('originCountry', _$originCountry);
  static String _$originalLanguage(MediaData v) => v.originalLanguage;
  static const Field<MediaData, String> _f$originalLanguage =
      Field('originalLanguage', _$originalLanguage);
  static String _$originalTitle(MediaData v) => v.originalTitle;
  static const Field<MediaData, String> _f$originalTitle =
      Field('originalTitle', _$originalTitle);
  static DateTime? _$premiereDate(MediaData v) => v.premiereDate;
  static const Field<MediaData, DateTime> _f$premiereDate =
      Field('premiereDate', _$premiereDate, opt: true);
  static String _$title(MediaData v) => v.title;
  static const Field<MediaData, String> _f$title = Field('title', _$title);
  static String _$overview(MediaData v) => v.overview;
  static const Field<MediaData, String> _f$overview =
      Field('overview', _$overview);
  static TMDBRating _$tmdbRating(MediaData v) => v.tmdbRating;
  static const Field<MediaData, TMDBRating> _f$tmdbRating =
      Field('tmdbRating', _$tmdbRating);
  static List<CastData> _$cast(MediaData v) => v.cast;
  static const Field<MediaData, List<CastData>> _f$cast = Field('cast', _$cast);
  static int _$userRating(MediaData v) => v.userRating;
  static const Field<MediaData, int> _f$userRating =
      Field('userRating', _$userRating);
  static bool _$isInWatchlist(MediaData v) => v.isInWatchlist;
  static const Field<MediaData, bool> _f$isInWatchlist =
      Field('isInWatchlist', _$isInWatchlist);
  static bool _$isWatched(MediaData v) => v.isWatched;
  static const Field<MediaData, bool> _f$isWatched =
      Field('isWatched', _$isWatched);

  @override
  final MappableFields<MediaData> fields = const {
    #id: _f$id,
    #backdropUrl: _f$backdropUrl,
    #posterUrl: _f$posterUrl,
    #originCountry: _f$originCountry,
    #originalLanguage: _f$originalLanguage,
    #originalTitle: _f$originalTitle,
    #premiereDate: _f$premiereDate,
    #title: _f$title,
    #overview: _f$overview,
    #tmdbRating: _f$tmdbRating,
    #cast: _f$cast,
    #userRating: _f$userRating,
    #isInWatchlist: _f$isInWatchlist,
    #isWatched: _f$isWatched,
  };

  static MediaData _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('MediaData');
  }

  @override
  final Function instantiate = _instantiate;
}

mixin MediaDataMappable {
  MediaDataCopyWith<MediaData, MediaData, MediaData> get copyWith;
}

abstract class MediaDataCopyWith<$R, $In extends MediaData, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get originCountry;
  TMDBRatingCopyWith<$R, TMDBRating, TMDBRating> get tmdbRating;
  ListCopyWith<$R, CastData, CastDataCopyWith<$R, CastData, CastData>> get cast;
  $R call(
      {int? id,
      String? backdropUrl,
      String? posterUrl,
      List<String>? originCountry,
      String? originalLanguage,
      String? originalTitle,
      DateTime? premiereDate,
      String? title,
      String? overview,
      TMDBRating? tmdbRating,
      List<CastData>? cast,
      int? userRating,
      bool? isInWatchlist,
      bool? isWatched});
  MediaDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}
