// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'person_mov_cred_data.dart';

class PersonMovCredDataMapper extends ClassMapperBase<PersonMovCredData> {
  PersonMovCredDataMapper._();

  static PersonMovCredDataMapper? _instance;
  static PersonMovCredDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PersonMovCredDataMapper._());
      TMDBRatingMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PersonMovCredData';

  static int _$id(PersonMovCredData v) => v.id;
  static const Field<PersonMovCredData, int> _f$id =
      Field('id', _$id, opt: true, def: -1);
  static String _$posterUrl(PersonMovCredData v) => v.posterUrl;
  static const Field<PersonMovCredData, String> _f$posterUrl =
      Field('posterUrl', _$posterUrl, opt: true, def: '');
  static String _$title(PersonMovCredData v) => v.title;
  static const Field<PersonMovCredData, String> _f$title =
      Field('title', _$title, opt: true, def: '');
  static List<MovieGenre> _$genres(PersonMovCredData v) => v.genres;
  static const Field<PersonMovCredData, List<MovieGenre>> _f$genres =
      Field('genres', _$genres, opt: true, def: const []);
  static DateTime? _$premiereDate(PersonMovCredData v) => v.premiereDate;
  static const Field<PersonMovCredData, DateTime> _f$premiereDate =
      Field('premiereDate', _$premiereDate, opt: true);
  static TMDBRating _$tmdbRating(PersonMovCredData v) => v.tmdbRating;
  static const Field<PersonMovCredData, TMDBRating> _f$tmdbRating =
      Field('tmdbRating', _$tmdbRating, opt: true, def: const TMDBRating());
  static int _$userRating(PersonMovCredData v) => v.userRating;
  static const Field<PersonMovCredData, int> _f$userRating =
      Field('userRating', _$userRating, opt: true, def: 0);
  static bool _$isInWatchlist(PersonMovCredData v) => v.isInWatchlist;
  static const Field<PersonMovCredData, bool> _f$isInWatchlist =
      Field('isInWatchlist', _$isInWatchlist, opt: true, def: false);
  static bool _$isWatched(PersonMovCredData v) => v.isWatched;
  static const Field<PersonMovCredData, bool> _f$isWatched =
      Field('isWatched', _$isWatched, opt: true, def: false);
  static String? _$actCharacter(PersonMovCredData v) => v.actCharacter;
  static const Field<PersonMovCredData, String> _f$actCharacter =
      Field('actCharacter', _$actCharacter, opt: true);
  static CrewJob? _$crewJob(PersonMovCredData v) => v.crewJob;
  static const Field<PersonMovCredData, CrewJob> _f$crewJob =
      Field('crewJob', _$crewJob, opt: true);

  @override
  final MappableFields<PersonMovCredData> fields = const {
    #id: _f$id,
    #posterUrl: _f$posterUrl,
    #title: _f$title,
    #genres: _f$genres,
    #premiereDate: _f$premiereDate,
    #tmdbRating: _f$tmdbRating,
    #userRating: _f$userRating,
    #isInWatchlist: _f$isInWatchlist,
    #isWatched: _f$isWatched,
    #actCharacter: _f$actCharacter,
    #crewJob: _f$crewJob,
  };

  static PersonMovCredData _instantiate(DecodingData data) {
    return PersonMovCredData(
        id: data.dec(_f$id),
        posterUrl: data.dec(_f$posterUrl),
        title: data.dec(_f$title),
        genres: data.dec(_f$genres),
        premiereDate: data.dec(_f$premiereDate),
        tmdbRating: data.dec(_f$tmdbRating),
        userRating: data.dec(_f$userRating),
        isInWatchlist: data.dec(_f$isInWatchlist),
        isWatched: data.dec(_f$isWatched),
        actCharacter: data.dec(_f$actCharacter),
        crewJob: data.dec(_f$crewJob));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin PersonMovCredDataMappable {
  PersonMovCredDataCopyWith<PersonMovCredData, PersonMovCredData,
          PersonMovCredData>
      get copyWith =>
          _PersonMovCredDataCopyWithImpl<PersonMovCredData, PersonMovCredData>(
              this as PersonMovCredData, $identity, $identity);
  @override
  String toString() {
    return PersonMovCredDataMapper.ensureInitialized()
        .stringifyValue(this as PersonMovCredData);
  }

  @override
  bool operator ==(Object other) {
    return PersonMovCredDataMapper.ensureInitialized()
        .equalsValue(this as PersonMovCredData, other);
  }

  @override
  int get hashCode {
    return PersonMovCredDataMapper.ensureInitialized()
        .hashValue(this as PersonMovCredData);
  }
}

extension PersonMovCredDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PersonMovCredData, $Out> {
  PersonMovCredDataCopyWith<$R, PersonMovCredData, $Out>
      get $asPersonMovCredData => $base
          .as((v, t, t2) => _PersonMovCredDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PersonMovCredDataCopyWith<$R, $In extends PersonMovCredData,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, MovieGenre, ObjectCopyWith<$R, MovieGenre, MovieGenre>>
      get genres;
  TMDBRatingCopyWith<$R, TMDBRating, TMDBRating> get tmdbRating;
  $R call(
      {int? id,
      String? posterUrl,
      String? title,
      List<MovieGenre>? genres,
      DateTime? premiereDate,
      TMDBRating? tmdbRating,
      int? userRating,
      bool? isInWatchlist,
      bool? isWatched,
      String? actCharacter,
      CrewJob? crewJob});
  PersonMovCredDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PersonMovCredDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PersonMovCredData, $Out>
    implements PersonMovCredDataCopyWith<$R, PersonMovCredData, $Out> {
  _PersonMovCredDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PersonMovCredData> $mapper =
      PersonMovCredDataMapper.ensureInitialized();
  @override
  ListCopyWith<$R, MovieGenre, ObjectCopyWith<$R, MovieGenre, MovieGenre>>
      get genres => ListCopyWith($value.genres,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(genres: v));
  @override
  TMDBRatingCopyWith<$R, TMDBRating, TMDBRating> get tmdbRating =>
      $value.tmdbRating.copyWith.$chain((v) => call(tmdbRating: v));
  @override
  $R call(
          {int? id,
          String? posterUrl,
          String? title,
          List<MovieGenre>? genres,
          Object? premiereDate = $none,
          TMDBRating? tmdbRating,
          int? userRating,
          bool? isInWatchlist,
          bool? isWatched,
          Object? actCharacter = $none,
          Object? crewJob = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (posterUrl != null) #posterUrl: posterUrl,
        if (title != null) #title: title,
        if (genres != null) #genres: genres,
        if (premiereDate != $none) #premiereDate: premiereDate,
        if (tmdbRating != null) #tmdbRating: tmdbRating,
        if (userRating != null) #userRating: userRating,
        if (isInWatchlist != null) #isInWatchlist: isInWatchlist,
        if (isWatched != null) #isWatched: isWatched,
        if (actCharacter != $none) #actCharacter: actCharacter,
        if (crewJob != $none) #crewJob: crewJob
      }));
  @override
  PersonMovCredData $make(CopyWithData data) => PersonMovCredData(
      id: data.get(#id, or: $value.id),
      posterUrl: data.get(#posterUrl, or: $value.posterUrl),
      title: data.get(#title, or: $value.title),
      genres: data.get(#genres, or: $value.genres),
      premiereDate: data.get(#premiereDate, or: $value.premiereDate),
      tmdbRating: data.get(#tmdbRating, or: $value.tmdbRating),
      userRating: data.get(#userRating, or: $value.userRating),
      isInWatchlist: data.get(#isInWatchlist, or: $value.isInWatchlist),
      isWatched: data.get(#isWatched, or: $value.isWatched),
      actCharacter: data.get(#actCharacter, or: $value.actCharacter),
      crewJob: data.get(#crewJob, or: $value.crewJob));

  @override
  PersonMovCredDataCopyWith<$R2, PersonMovCredData, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PersonMovCredDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
