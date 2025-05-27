// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'person_ser_cred_data_dto.dart';

class PersonSerCredDataDtoMapper extends ClassMapperBase<PersonSerCredDataDto> {
  PersonSerCredDataDtoMapper._();

  static PersonSerCredDataDtoMapper? _instance;
  static PersonSerCredDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PersonSerCredDataDtoMapper._());
      SeriesGenreDtoMapper.ensureInitialized();
      CrewJobDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PersonSerCredDataDto';

  static int? _$id(PersonSerCredDataDto v) => v.id;
  static const Field<PersonSerCredDataDto, int> _f$id = Field(
    'id',
    _$id,
    opt: true,
  );
  static List<SeriesGenreDto>? _$genres(PersonSerCredDataDto v) => v.genres;
  static const Field<PersonSerCredDataDto, List<SeriesGenreDto>> _f$genres =
      Field('genres', _$genres, key: r'genre_ids', opt: true);
  static String? _$posterPath(PersonSerCredDataDto v) => v.posterPath;
  static const Field<PersonSerCredDataDto, String> _f$posterPath = Field(
    'posterPath',
    _$posterPath,
    key: r'poster_path',
    opt: true,
  );
  static DateTime? _$releaseDate(PersonSerCredDataDto v) => v.releaseDate;
  static const Field<PersonSerCredDataDto, DateTime> _f$releaseDate = Field(
    'releaseDate',
    _$releaseDate,
    key: r'first_air_date',
    opt: true,
    hook: DateMapperHook(),
  );
  static String? _$title(PersonSerCredDataDto v) => v.title;
  static const Field<PersonSerCredDataDto, String> _f$title = Field(
    'title',
    _$title,
    key: r'name',
    opt: true,
  );
  static double? _$popularity(PersonSerCredDataDto v) => v.popularity;
  static const Field<PersonSerCredDataDto, double> _f$popularity = Field(
    'popularity',
    _$popularity,
    opt: true,
  );
  static double? _$voteAverage(PersonSerCredDataDto v) => v.voteAverage;
  static const Field<PersonSerCredDataDto, double> _f$voteAverage = Field(
    'voteAverage',
    _$voteAverage,
    key: r'vote_average',
    opt: true,
  );
  static int? _$voteCount(PersonSerCredDataDto v) => v.voteCount;
  static const Field<PersonSerCredDataDto, int> _f$voteCount = Field(
    'voteCount',
    _$voteCount,
    key: r'vote_count',
    opt: true,
  );
  static int? _$userRating(PersonSerCredDataDto v) => v.userRating;
  static const Field<PersonSerCredDataDto, int> _f$userRating = Field(
    'userRating',
    _$userRating,
    key: r'user_rating',
    opt: true,
  );
  static bool? _$isInWatchlist(PersonSerCredDataDto v) => v.isInWatchlist;
  static const Field<PersonSerCredDataDto, bool> _f$isInWatchlist = Field(
    'isInWatchlist',
    _$isInWatchlist,
    key: r'is_in_watchlist',
    opt: true,
  );
  static bool? _$isWatched(PersonSerCredDataDto v) => v.isWatched;
  static const Field<PersonSerCredDataDto, bool> _f$isWatched = Field(
    'isWatched',
    _$isWatched,
    key: r'is_watched',
    opt: true,
  );
  static String? _$actCharacter(PersonSerCredDataDto v) => v.actCharacter;
  static const Field<PersonSerCredDataDto, String> _f$actCharacter = Field(
    'actCharacter',
    _$actCharacter,
    key: r'character',
    opt: true,
  );
  static CrewJobDto? _$crewJob(PersonSerCredDataDto v) => v.crewJob;
  static const Field<PersonSerCredDataDto, CrewJobDto> _f$crewJob = Field(
    'crewJob',
    _$crewJob,
    key: r'job',
    opt: true,
  );

  @override
  final MappableFields<PersonSerCredDataDto> fields = const {
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

  static PersonSerCredDataDto _instantiate(DecodingData data) {
    return PersonSerCredDataDto(
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
      crewJob: data.dec(_f$crewJob),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PersonSerCredDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PersonSerCredDataDto>(map);
  }

  static PersonSerCredDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<PersonSerCredDataDto>(json);
  }
}

mixin PersonSerCredDataDtoMappable {
  String toJsonString() {
    return PersonSerCredDataDtoMapper.ensureInitialized()
        .encodeJson<PersonSerCredDataDto>(this as PersonSerCredDataDto);
  }

  Map<String, dynamic> toJson() {
    return PersonSerCredDataDtoMapper.ensureInitialized()
        .encodeMap<PersonSerCredDataDto>(this as PersonSerCredDataDto);
  }

  PersonSerCredDataDtoCopyWith<
    PersonSerCredDataDto,
    PersonSerCredDataDto,
    PersonSerCredDataDto
  >
  get copyWith =>
      _PersonSerCredDataDtoCopyWithImpl<
        PersonSerCredDataDto,
        PersonSerCredDataDto
      >(this as PersonSerCredDataDto, $identity, $identity);
  @override
  String toString() {
    return PersonSerCredDataDtoMapper.ensureInitialized().stringifyValue(
      this as PersonSerCredDataDto,
    );
  }

  @override
  bool operator ==(Object other) {
    return PersonSerCredDataDtoMapper.ensureInitialized().equalsValue(
      this as PersonSerCredDataDto,
      other,
    );
  }

  @override
  int get hashCode {
    return PersonSerCredDataDtoMapper.ensureInitialized().hashValue(
      this as PersonSerCredDataDto,
    );
  }
}

extension PersonSerCredDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PersonSerCredDataDto, $Out> {
  PersonSerCredDataDtoCopyWith<$R, PersonSerCredDataDto, $Out>
  get $asPersonSerCredDataDto => $base.as(
    (v, t, t2) => _PersonSerCredDataDtoCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class PersonSerCredDataDtoCopyWith<
  $R,
  $In extends PersonSerCredDataDto,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    SeriesGenreDto,
    ObjectCopyWith<$R, SeriesGenreDto, SeriesGenreDto>
  >?
  get genres;
  $R call({
    int? id,
    List<SeriesGenreDto>? genres,
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
    CrewJobDto? crewJob,
  });
  PersonSerCredDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PersonSerCredDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PersonSerCredDataDto, $Out>
    implements PersonSerCredDataDtoCopyWith<$R, PersonSerCredDataDto, $Out> {
  _PersonSerCredDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PersonSerCredDataDto> $mapper =
      PersonSerCredDataDtoMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    SeriesGenreDto,
    ObjectCopyWith<$R, SeriesGenreDto, SeriesGenreDto>
  >?
  get genres => $value.genres != null
      ? ListCopyWith(
          $value.genres!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(genres: v),
        )
      : null;
  @override
  $R call({
    Object? id = $none,
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
    Object? crewJob = $none,
  }) => $apply(
    FieldCopyWithData({
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
      if (crewJob != $none) #crewJob: crewJob,
    }),
  );
  @override
  PersonSerCredDataDto $make(CopyWithData data) => PersonSerCredDataDto(
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
    crewJob: data.get(#crewJob, or: $value.crewJob),
  );

  @override
  PersonSerCredDataDtoCopyWith<$R2, PersonSerCredDataDto, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _PersonSerCredDataDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
