// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'media_short_data.dart';

class MediaShortDataMapper extends ClassMapperBase<MediaShortData> {
  MediaShortDataMapper._();

  static MediaShortDataMapper? _instance;
  static MediaShortDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MediaShortDataMapper._());
      TMDBRatingMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MediaShortData';

  static int _$id(MediaShortData v) => v.id;
  static const Field<MediaShortData, int> _f$id = Field('id', _$id);
  static String _$posterUrl(MediaShortData v) => v.posterUrl;
  static const Field<MediaShortData, String> _f$posterUrl =
      Field('posterUrl', _$posterUrl);
  static List<String> _$originCountry(MediaShortData v) => v.originCountry;
  static const Field<MediaShortData, List<String>> _f$originCountry =
      Field('originCountry', _$originCountry);
  static DateTime? _$premiereDate(MediaShortData v) => v.premiereDate;
  static const Field<MediaShortData, DateTime> _f$premiereDate =
      Field('premiereDate', _$premiereDate, opt: true);
  static String _$title(MediaShortData v) => v.title;
  static const Field<MediaShortData, String> _f$title = Field('title', _$title);
  static TMDBRating _$tmdbRating(MediaShortData v) => v.tmdbRating;
  static const Field<MediaShortData, TMDBRating> _f$tmdbRating =
      Field('tmdbRating', _$tmdbRating);
  static int _$userRating(MediaShortData v) => v.userRating;
  static const Field<MediaShortData, int> _f$userRating =
      Field('userRating', _$userRating);
  static bool _$isInWatchlist(MediaShortData v) => v.isInWatchlist;
  static const Field<MediaShortData, bool> _f$isInWatchlist =
      Field('isInWatchlist', _$isInWatchlist);
  static bool _$isWatched(MediaShortData v) => v.isWatched;
  static const Field<MediaShortData, bool> _f$isWatched =
      Field('isWatched', _$isWatched);

  @override
  final MappableFields<MediaShortData> fields = const {
    #id: _f$id,
    #posterUrl: _f$posterUrl,
    #originCountry: _f$originCountry,
    #premiereDate: _f$premiereDate,
    #title: _f$title,
    #tmdbRating: _f$tmdbRating,
    #userRating: _f$userRating,
    #isInWatchlist: _f$isInWatchlist,
    #isWatched: _f$isWatched,
  };

  static MediaShortData _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('MediaShortData');
  }

  @override
  final Function instantiate = _instantiate;
}

mixin MediaShortDataMappable {
  MediaShortDataCopyWith<MediaShortData, MediaShortData, MediaShortData>
      get copyWith;
}

abstract class MediaShortDataCopyWith<$R, $In extends MediaShortData, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get originCountry;
  TMDBRatingCopyWith<$R, TMDBRating, TMDBRating> get tmdbRating;
  $R call(
      {int? id,
      String? posterUrl,
      List<String>? originCountry,
      DateTime? premiereDate,
      String? title,
      TMDBRating? tmdbRating,
      int? userRating,
      bool? isInWatchlist,
      bool? isWatched});
  MediaShortDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}
