// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'movie_watch_event_data_dto.dart';

class MovieWatchEventDataDtoMapper
    extends ClassMapperBase<MovieWatchEventDataDto> {
  MovieWatchEventDataDtoMapper._();

  static MovieWatchEventDataDtoMapper? _instance;
  static MovieWatchEventDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MovieWatchEventDataDtoMapper._());
      WatchEventTypeDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MovieWatchEventDataDto';

  static int? _$id(MovieWatchEventDataDto v) => v.id;
  static const Field<MovieWatchEventDataDto, int> _f$id =
      Field('id', _$id, opt: true);
  static int? _$movieId(MovieWatchEventDataDto v) => v.movieId;
  static const Field<MovieWatchEventDataDto, int> _f$movieId =
      Field('movieId', _$movieId, key: r'movie_id', opt: true);
  static WatchEventTypeDto? _$type(MovieWatchEventDataDto v) => v.type;
  static const Field<MovieWatchEventDataDto, WatchEventTypeDto> _f$type =
      Field('type', _$type, opt: true);
  static int? _$userRating(MovieWatchEventDataDto v) => v.userRating;
  static const Field<MovieWatchEventDataDto, int> _f$userRating =
      Field('userRating', _$userRating, key: r'user_rating', opt: true);
  static DateTime? _$at(MovieWatchEventDataDto v) => v.at;
  static const Field<MovieWatchEventDataDto, DateTime> _f$at =
      Field('at', _$at, opt: true, hook: DateMapperHook());

  @override
  final MappableFields<MovieWatchEventDataDto> fields = const {
    #id: _f$id,
    #movieId: _f$movieId,
    #type: _f$type,
    #userRating: _f$userRating,
    #at: _f$at,
  };
  @override
  final bool ignoreNull = true;

  static MovieWatchEventDataDto _instantiate(DecodingData data) {
    return MovieWatchEventDataDto(
        id: data.dec(_f$id),
        movieId: data.dec(_f$movieId),
        type: data.dec(_f$type),
        userRating: data.dec(_f$userRating),
        at: data.dec(_f$at));
  }

  @override
  final Function instantiate = _instantiate;

  static MovieWatchEventDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MovieWatchEventDataDto>(map);
  }

  static MovieWatchEventDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<MovieWatchEventDataDto>(json);
  }
}

mixin MovieWatchEventDataDtoMappable {
  String toJsonString() {
    return MovieWatchEventDataDtoMapper.ensureInitialized()
        .encodeJson<MovieWatchEventDataDto>(this as MovieWatchEventDataDto);
  }

  Map<String, dynamic> toJson() {
    return MovieWatchEventDataDtoMapper.ensureInitialized()
        .encodeMap<MovieWatchEventDataDto>(this as MovieWatchEventDataDto);
  }

  MovieWatchEventDataDtoCopyWith<MovieWatchEventDataDto, MovieWatchEventDataDto,
          MovieWatchEventDataDto>
      get copyWith => _MovieWatchEventDataDtoCopyWithImpl<
              MovieWatchEventDataDto, MovieWatchEventDataDto>(
          this as MovieWatchEventDataDto, $identity, $identity);
  @override
  String toString() {
    return MovieWatchEventDataDtoMapper.ensureInitialized()
        .stringifyValue(this as MovieWatchEventDataDto);
  }

  @override
  bool operator ==(Object other) {
    return MovieWatchEventDataDtoMapper.ensureInitialized()
        .equalsValue(this as MovieWatchEventDataDto, other);
  }

  @override
  int get hashCode {
    return MovieWatchEventDataDtoMapper.ensureInitialized()
        .hashValue(this as MovieWatchEventDataDto);
  }
}

extension MovieWatchEventDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MovieWatchEventDataDto, $Out> {
  MovieWatchEventDataDtoCopyWith<$R, MovieWatchEventDataDto, $Out>
      get $asMovieWatchEventDataDto => $base.as((v, t, t2) =>
          _MovieWatchEventDataDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MovieWatchEventDataDtoCopyWith<
    $R,
    $In extends MovieWatchEventDataDto,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? id,
      int? movieId,
      WatchEventTypeDto? type,
      int? userRating,
      DateTime? at});
  MovieWatchEventDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MovieWatchEventDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MovieWatchEventDataDto, $Out>
    implements
        MovieWatchEventDataDtoCopyWith<$R, MovieWatchEventDataDto, $Out> {
  _MovieWatchEventDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MovieWatchEventDataDto> $mapper =
      MovieWatchEventDataDtoMapper.ensureInitialized();
  @override
  $R call(
          {Object? id = $none,
          Object? movieId = $none,
          Object? type = $none,
          Object? userRating = $none,
          Object? at = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (movieId != $none) #movieId: movieId,
        if (type != $none) #type: type,
        if (userRating != $none) #userRating: userRating,
        if (at != $none) #at: at
      }));
  @override
  MovieWatchEventDataDto $make(CopyWithData data) => MovieWatchEventDataDto(
      id: data.get(#id, or: $value.id),
      movieId: data.get(#movieId, or: $value.movieId),
      type: data.get(#type, or: $value.type),
      userRating: data.get(#userRating, or: $value.userRating),
      at: data.get(#at, or: $value.at));

  @override
  MovieWatchEventDataDtoCopyWith<$R2, MovieWatchEventDataDto, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _MovieWatchEventDataDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
