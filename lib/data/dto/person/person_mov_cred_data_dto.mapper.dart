// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'person_mov_cred_data_dto.dart';

class PersonMovCredDataDtoMapper extends ClassMapperBase<PersonMovCredDataDto> {
  PersonMovCredDataDtoMapper._();

  static PersonMovCredDataDtoMapper? _instance;
  static PersonMovCredDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PersonMovCredDataDtoMapper._());
      MovieGenreDtoMapper.ensureInitialized();
      CrewJobDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PersonMovCredDataDto';

  static int? _$id(PersonMovCredDataDto v) => v.id;
  static const Field<PersonMovCredDataDto, int> _f$id =
      Field('id', _$id, opt: true);
  static List<MovieGenreDto>? _$genres(PersonMovCredDataDto v) => v.genres;
  static const Field<PersonMovCredDataDto, List<MovieGenreDto>> _f$genres =
      Field('genres', _$genres, key: r'genre_ids', opt: true);
  static String? _$posterPath(PersonMovCredDataDto v) => v.posterPath;
  static const Field<PersonMovCredDataDto, String> _f$posterPath =
      Field('posterPath', _$posterPath, key: r'poster_path', opt: true);
  static DateTime? _$releaseDate(PersonMovCredDataDto v) => v.releaseDate;
  static const Field<PersonMovCredDataDto, DateTime> _f$releaseDate = Field(
      'releaseDate', _$releaseDate,
      key: r'release_date', opt: true, hook: DateMapperHook());
  static String? _$title(PersonMovCredDataDto v) => v.title;
  static const Field<PersonMovCredDataDto, String> _f$title =
      Field('title', _$title, opt: true);
  static double? _$popularity(PersonMovCredDataDto v) => v.popularity;
  static const Field<PersonMovCredDataDto, double> _f$popularity =
      Field('popularity', _$popularity, opt: true);
  static double? _$voteAverage(PersonMovCredDataDto v) => v.voteAverage;
  static const Field<PersonMovCredDataDto, double> _f$voteAverage =
      Field('voteAverage', _$voteAverage, key: r'vote_average', opt: true);
  static int? _$voteCount(PersonMovCredDataDto v) => v.voteCount;
  static const Field<PersonMovCredDataDto, int> _f$voteCount =
      Field('voteCount', _$voteCount, key: r'vote_count', opt: true);
  static int? _$userRating(PersonMovCredDataDto v) => v.userRating;
  static const Field<PersonMovCredDataDto, int> _f$userRating =
      Field('userRating', _$userRating, key: r'user_rating', opt: true);
  static bool? _$isInWatchlist(PersonMovCredDataDto v) => v.isInWatchlist;
  static const Field<PersonMovCredDataDto, bool> _f$isInWatchlist = Field(
      'isInWatchlist', _$isInWatchlist,
      key: r'is_in_watchlist', opt: true);
  static bool? _$isWatched(PersonMovCredDataDto v) => v.isWatched;
  static const Field<PersonMovCredDataDto, bool> _f$isWatched =
      Field('isWatched', _$isWatched, key: r'is_watched', opt: true);
  static String? _$actCharacter(PersonMovCredDataDto v) => v.actCharacter;
  static const Field<PersonMovCredDataDto, String> _f$actCharacter =
      Field('actCharacter', _$actCharacter, key: r'character', opt: true);
  static CrewJobDto? _$crewJob(PersonMovCredDataDto v) => v.crewJob;
  static const Field<PersonMovCredDataDto, CrewJobDto> _f$crewJob =
      Field('crewJob', _$crewJob, key: r'job', opt: true);

  @override
  final MappableFields<PersonMovCredDataDto> fields = const {
    #id: _f$id,
    #genres: _f$genres,
    #posterPath: _f$posterPath,
    #releaseDate: _f$releaseDate,
    #title: _f$title,
    #popularity: _f$popularity,
    #voteAverage: _f$voteAverage,
    #voteCount: _f$voteCount,
    #userRating: _f$userRating,
    #isInWatchlist: _f$isInWatchlist,
    #isWatched: _f$isWatched,
    #actCharacter: _f$actCharacter,
    #crewJob: _f$crewJob,
  };
  @override
  final bool ignoreNull = true;

  static PersonMovCredDataDto _instantiate(DecodingData data) {
    return PersonMovCredDataDto(
        id: data.dec(_f$id),
        genres: data.dec(_f$genres),
        posterPath: data.dec(_f$posterPath),
        releaseDate: data.dec(_f$releaseDate),
        title: data.dec(_f$title),
        popularity: data.dec(_f$popularity),
        voteAverage: data.dec(_f$voteAverage),
        voteCount: data.dec(_f$voteCount),
        userRating: data.dec(_f$userRating),
        isInWatchlist: data.dec(_f$isInWatchlist),
        isWatched: data.dec(_f$isWatched),
        actCharacter: data.dec(_f$actCharacter),
        crewJob: data.dec(_f$crewJob));
  }

  @override
  final Function instantiate = _instantiate;

  static PersonMovCredDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PersonMovCredDataDto>(map);
  }

  static PersonMovCredDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<PersonMovCredDataDto>(json);
  }
}

mixin PersonMovCredDataDtoMappable {
  String toJsonString() {
    return PersonMovCredDataDtoMapper.ensureInitialized()
        .encodeJson<PersonMovCredDataDto>(this as PersonMovCredDataDto);
  }

  Map<String, dynamic> toJson() {
    return PersonMovCredDataDtoMapper.ensureInitialized()
        .encodeMap<PersonMovCredDataDto>(this as PersonMovCredDataDto);
  }

  PersonMovCredDataDtoCopyWith<PersonMovCredDataDto, PersonMovCredDataDto,
      PersonMovCredDataDto> get copyWith => _PersonMovCredDataDtoCopyWithImpl<
          PersonMovCredDataDto, PersonMovCredDataDto>(
      this as PersonMovCredDataDto, $identity, $identity);
  @override
  String toString() {
    return PersonMovCredDataDtoMapper.ensureInitialized()
        .stringifyValue(this as PersonMovCredDataDto);
  }

  @override
  bool operator ==(Object other) {
    return PersonMovCredDataDtoMapper.ensureInitialized()
        .equalsValue(this as PersonMovCredDataDto, other);
  }

  @override
  int get hashCode {
    return PersonMovCredDataDtoMapper.ensureInitialized()
        .hashValue(this as PersonMovCredDataDto);
  }
}

extension PersonMovCredDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PersonMovCredDataDto, $Out> {
  PersonMovCredDataDtoCopyWith<$R, PersonMovCredDataDto, $Out>
      get $asPersonMovCredDataDto => $base.as(
          (v, t, t2) => _PersonMovCredDataDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PersonMovCredDataDtoCopyWith<
    $R,
    $In extends PersonMovCredDataDto,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, MovieGenreDto,
      ObjectCopyWith<$R, MovieGenreDto, MovieGenreDto>>? get genres;
  $R call(
      {int? id,
      List<MovieGenreDto>? genres,
      String? posterPath,
      DateTime? releaseDate,
      String? title,
      double? popularity,
      double? voteAverage,
      int? voteCount,
      int? userRating,
      bool? isInWatchlist,
      bool? isWatched,
      String? actCharacter,
      CrewJobDto? crewJob});
  PersonMovCredDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PersonMovCredDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PersonMovCredDataDto, $Out>
    implements PersonMovCredDataDtoCopyWith<$R, PersonMovCredDataDto, $Out> {
  _PersonMovCredDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PersonMovCredDataDto> $mapper =
      PersonMovCredDataDtoMapper.ensureInitialized();
  @override
  ListCopyWith<$R, MovieGenreDto,
          ObjectCopyWith<$R, MovieGenreDto, MovieGenreDto>>?
      get genres => $value.genres != null
          ? ListCopyWith($value.genres!,
              (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(genres: v))
          : null;
  @override
  $R call(
          {Object? id = $none,
          Object? genres = $none,
          Object? posterPath = $none,
          Object? releaseDate = $none,
          Object? title = $none,
          Object? popularity = $none,
          Object? voteAverage = $none,
          Object? voteCount = $none,
          Object? userRating = $none,
          Object? isInWatchlist = $none,
          Object? isWatched = $none,
          Object? actCharacter = $none,
          Object? crewJob = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (genres != $none) #genres: genres,
        if (posterPath != $none) #posterPath: posterPath,
        if (releaseDate != $none) #releaseDate: releaseDate,
        if (title != $none) #title: title,
        if (popularity != $none) #popularity: popularity,
        if (voteAverage != $none) #voteAverage: voteAverage,
        if (voteCount != $none) #voteCount: voteCount,
        if (userRating != $none) #userRating: userRating,
        if (isInWatchlist != $none) #isInWatchlist: isInWatchlist,
        if (isWatched != $none) #isWatched: isWatched,
        if (actCharacter != $none) #actCharacter: actCharacter,
        if (crewJob != $none) #crewJob: crewJob
      }));
  @override
  PersonMovCredDataDto $make(CopyWithData data) => PersonMovCredDataDto(
      id: data.get(#id, or: $value.id),
      genres: data.get(#genres, or: $value.genres),
      posterPath: data.get(#posterPath, or: $value.posterPath),
      releaseDate: data.get(#releaseDate, or: $value.releaseDate),
      title: data.get(#title, or: $value.title),
      popularity: data.get(#popularity, or: $value.popularity),
      voteAverage: data.get(#voteAverage, or: $value.voteAverage),
      voteCount: data.get(#voteCount, or: $value.voteCount),
      userRating: data.get(#userRating, or: $value.userRating),
      isInWatchlist: data.get(#isInWatchlist, or: $value.isInWatchlist),
      isWatched: data.get(#isWatched, or: $value.isWatched),
      actCharacter: data.get(#actCharacter, or: $value.actCharacter),
      crewJob: data.get(#crewJob, or: $value.crewJob));

  @override
  PersonMovCredDataDtoCopyWith<$R2, PersonMovCredDataDto, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _PersonMovCredDataDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
