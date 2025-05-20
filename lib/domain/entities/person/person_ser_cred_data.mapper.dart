// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'person_ser_cred_data.dart';

class PersonSerCredDataMapper extends ClassMapperBase<PersonSerCredData> {
  PersonSerCredDataMapper._();

  static PersonSerCredDataMapper? _instance;
  static PersonSerCredDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PersonSerCredDataMapper._());
      TMDBRatingMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PersonSerCredData';

  static int _$id(PersonSerCredData v) => v.id;
  static const Field<PersonSerCredData, int> _f$id =
      Field('id', _$id, opt: true, def: -1);
  static String _$posterUrl(PersonSerCredData v) => v.posterUrl;
  static const Field<PersonSerCredData, String> _f$posterUrl =
      Field('posterUrl', _$posterUrl, opt: true, def: '');
  static String _$title(PersonSerCredData v) => v.title;
  static const Field<PersonSerCredData, String> _f$title =
      Field('title', _$title, opt: true, def: '');
  static List<SeriesGenre> _$genres(PersonSerCredData v) => v.genres;
  static const Field<PersonSerCredData, List<SeriesGenre>> _f$genres =
      Field('genres', _$genres, opt: true, def: const []);
  static DateTime? _$premiereDate(PersonSerCredData v) => v.premiereDate;
  static const Field<PersonSerCredData, DateTime> _f$premiereDate =
      Field('premiereDate', _$premiereDate, opt: true);
  static TMDBRating _$tmdbRating(PersonSerCredData v) => v.tmdbRating;
  static const Field<PersonSerCredData, TMDBRating> _f$tmdbRating =
      Field('tmdbRating', _$tmdbRating, opt: true, def: const TMDBRating());
  static int _$userRating(PersonSerCredData v) => v.userRating;
  static const Field<PersonSerCredData, int> _f$userRating =
      Field('userRating', _$userRating, opt: true, def: 0);
  static bool _$isInWatchlist(PersonSerCredData v) => v.isInWatchlist;
  static const Field<PersonSerCredData, bool> _f$isInWatchlist =
      Field('isInWatchlist', _$isInWatchlist, opt: true, def: false);
  static bool _$isWatched(PersonSerCredData v) => v.isWatched;
  static const Field<PersonSerCredData, bool> _f$isWatched =
      Field('isWatched', _$isWatched, opt: true, def: false);
  static String? _$actCharacter(PersonSerCredData v) => v.actCharacter;
  static const Field<PersonSerCredData, String> _f$actCharacter =
      Field('actCharacter', _$actCharacter, opt: true);
  static CrewJob? _$crewJob(PersonSerCredData v) => v.crewJob;
  static const Field<PersonSerCredData, CrewJob> _f$crewJob =
      Field('crewJob', _$crewJob, opt: true);

  @override
  final MappableFields<PersonSerCredData> fields = const {
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

  static PersonSerCredData _instantiate(DecodingData data) {
    return PersonSerCredData(
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

mixin PersonSerCredDataMappable {
  PersonSerCredDataCopyWith<PersonSerCredData, PersonSerCredData,
          PersonSerCredData>
      get copyWith =>
          _PersonSerCredDataCopyWithImpl<PersonSerCredData, PersonSerCredData>(
              this as PersonSerCredData, $identity, $identity);
  @override
  String toString() {
    return PersonSerCredDataMapper.ensureInitialized()
        .stringifyValue(this as PersonSerCredData);
  }

  @override
  bool operator ==(Object other) {
    return PersonSerCredDataMapper.ensureInitialized()
        .equalsValue(this as PersonSerCredData, other);
  }

  @override
  int get hashCode {
    return PersonSerCredDataMapper.ensureInitialized()
        .hashValue(this as PersonSerCredData);
  }
}

extension PersonSerCredDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PersonSerCredData, $Out> {
  PersonSerCredDataCopyWith<$R, PersonSerCredData, $Out>
      get $asPersonSerCredData => $base
          .as((v, t, t2) => _PersonSerCredDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PersonSerCredDataCopyWith<$R, $In extends PersonSerCredData,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, SeriesGenre, ObjectCopyWith<$R, SeriesGenre, SeriesGenre>>
      get genres;
  TMDBRatingCopyWith<$R, TMDBRating, TMDBRating> get tmdbRating;
  $R call(
      {int? id,
      String? posterUrl,
      String? title,
      List<SeriesGenre>? genres,
      DateTime? premiereDate,
      TMDBRating? tmdbRating,
      int? userRating,
      bool? isInWatchlist,
      bool? isWatched,
      String? actCharacter,
      CrewJob? crewJob});
  PersonSerCredDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PersonSerCredDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PersonSerCredData, $Out>
    implements PersonSerCredDataCopyWith<$R, PersonSerCredData, $Out> {
  _PersonSerCredDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PersonSerCredData> $mapper =
      PersonSerCredDataMapper.ensureInitialized();
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
          String? title,
          List<SeriesGenre>? genres,
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
  PersonSerCredData $make(CopyWithData data) => PersonSerCredData(
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
  PersonSerCredDataCopyWith<$R2, PersonSerCredData, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PersonSerCredDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
