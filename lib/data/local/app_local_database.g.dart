// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_local_database.dart';

// ignore_for_file: type=lint
class $MoviesTableTable extends MoviesTable
    with TableInfo<$MoviesTableTable, MoviesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MoviesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _tmdbIdMeta = const VerificationMeta('tmdbId');
  @override
  late final GeneratedColumn<int> tmdbId = GeneratedColumn<int>(
      'tmdb_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _genresMeta = const VerificationMeta('genres');
  @override
  late final GeneratedColumnWithTypeConverter<List<MovieGenreDto>?, String>
      genres = GeneratedColumn<String>('genres', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<MovieGenreDto>?>(
              $MoviesTableTable.$convertergenresn);
  static const VerificationMeta _premiereDateMeta =
      const VerificationMeta('premiereDate');
  @override
  late final GeneratedColumn<DateTime> premiereDate = GeneratedColumn<DateTime>(
      'premiere_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _tmdbRatingMeta =
      const VerificationMeta('tmdbRating');
  @override
  late final GeneratedColumnWithTypeConverter<RatingDataDto?, String>
      tmdbRating = GeneratedColumn<String>('tmdb_rating', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<RatingDataDto?>(
              $MoviesTableTable.$convertertmdbRatingn);
  static const VerificationMeta _userRatingMeta =
      const VerificationMeta('userRating');
  @override
  late final GeneratedColumn<int> userRating = GeneratedColumn<int>(
      'user_rating', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _isInWatchlistMeta =
      const VerificationMeta('isInWatchlist');
  @override
  late final GeneratedColumn<bool> isInWatchlist = GeneratedColumn<bool>(
      'is_in_watchlist', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_in_watchlist" IN (0, 1))'));
  static const VerificationMeta _isWatchedMeta =
      const VerificationMeta('isWatched');
  @override
  late final GeneratedColumn<bool> isWatched = GeneratedColumn<bool>(
      'is_watched', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_watched" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        tmdbId,
        genres,
        premiereDate,
        title,
        tmdbRating,
        userRating,
        isInWatchlist,
        isWatched
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'movies_table';
  @override
  VerificationContext validateIntegrity(Insertable<MoviesTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('tmdb_id')) {
      context.handle(_tmdbIdMeta,
          tmdbId.isAcceptableOrUnknown(data['tmdb_id']!, _tmdbIdMeta));
    } else if (isInserting) {
      context.missing(_tmdbIdMeta);
    }
    context.handle(_genresMeta, const VerificationResult.success());
    if (data.containsKey('premiere_date')) {
      context.handle(
          _premiereDateMeta,
          premiereDate.isAcceptableOrUnknown(
              data['premiere_date']!, _premiereDateMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    }
    context.handle(_tmdbRatingMeta, const VerificationResult.success());
    if (data.containsKey('user_rating')) {
      context.handle(
          _userRatingMeta,
          userRating.isAcceptableOrUnknown(
              data['user_rating']!, _userRatingMeta));
    }
    if (data.containsKey('is_in_watchlist')) {
      context.handle(
          _isInWatchlistMeta,
          isInWatchlist.isAcceptableOrUnknown(
              data['is_in_watchlist']!, _isInWatchlistMeta));
    }
    if (data.containsKey('is_watched')) {
      context.handle(_isWatchedMeta,
          isWatched.isAcceptableOrUnknown(data['is_watched']!, _isWatchedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MoviesTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MoviesTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      tmdbId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}tmdb_id'])!,
      genres: $MoviesTableTable.$convertergenresn.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}genres'])),
      premiereDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}premiere_date']),
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title']),
      tmdbRating: $MoviesTableTable.$convertertmdbRatingn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}tmdb_rating'])),
      userRating: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_rating']),
      isInWatchlist: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_in_watchlist']),
      isWatched: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_watched']),
    );
  }

  @override
  $MoviesTableTable createAlias(String alias) {
    return $MoviesTableTable(attachedDatabase, alias);
  }

  static TypeConverter<List<MovieGenreDto>, String> $convertergenres =
      movieGenresConverter;
  static TypeConverter<List<MovieGenreDto>?, String?> $convertergenresn =
      NullAwareTypeConverter.wrap($convertergenres);
  static TypeConverter<RatingDataDto, String> $convertertmdbRating =
      ratingConverter;
  static TypeConverter<RatingDataDto?, String?> $convertertmdbRatingn =
      NullAwareTypeConverter.wrap($convertertmdbRating);
}

class MoviesTableData extends DataClass implements Insertable<MoviesTableData> {
  final int id;
  final int tmdbId;
  final List<MovieGenreDto>? genres;
  final DateTime? premiereDate;
  final String? title;
  final RatingDataDto? tmdbRating;
  final int? userRating;
  final bool? isInWatchlist;
  final bool? isWatched;
  const MoviesTableData(
      {required this.id,
      required this.tmdbId,
      this.genres,
      this.premiereDate,
      this.title,
      this.tmdbRating,
      this.userRating,
      this.isInWatchlist,
      this.isWatched});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['tmdb_id'] = Variable<int>(tmdbId);
    if (!nullToAbsent || genres != null) {
      map['genres'] =
          Variable<String>($MoviesTableTable.$convertergenresn.toSql(genres));
    }
    if (!nullToAbsent || premiereDate != null) {
      map['premiere_date'] = Variable<DateTime>(premiereDate);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || tmdbRating != null) {
      map['tmdb_rating'] = Variable<String>(
          $MoviesTableTable.$convertertmdbRatingn.toSql(tmdbRating));
    }
    if (!nullToAbsent || userRating != null) {
      map['user_rating'] = Variable<int>(userRating);
    }
    if (!nullToAbsent || isInWatchlist != null) {
      map['is_in_watchlist'] = Variable<bool>(isInWatchlist);
    }
    if (!nullToAbsent || isWatched != null) {
      map['is_watched'] = Variable<bool>(isWatched);
    }
    return map;
  }

  MoviesTableCompanion toCompanion(bool nullToAbsent) {
    return MoviesTableCompanion(
      id: Value(id),
      tmdbId: Value(tmdbId),
      genres:
          genres == null && nullToAbsent ? const Value.absent() : Value(genres),
      premiereDate: premiereDate == null && nullToAbsent
          ? const Value.absent()
          : Value(premiereDate),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      tmdbRating: tmdbRating == null && nullToAbsent
          ? const Value.absent()
          : Value(tmdbRating),
      userRating: userRating == null && nullToAbsent
          ? const Value.absent()
          : Value(userRating),
      isInWatchlist: isInWatchlist == null && nullToAbsent
          ? const Value.absent()
          : Value(isInWatchlist),
      isWatched: isWatched == null && nullToAbsent
          ? const Value.absent()
          : Value(isWatched),
    );
  }

  factory MoviesTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MoviesTableData(
      id: serializer.fromJson<int>(json['id']),
      tmdbId: serializer.fromJson<int>(json['tmdbId']),
      genres: serializer.fromJson<List<MovieGenreDto>?>(json['genres']),
      premiereDate: serializer.fromJson<DateTime?>(json['premiereDate']),
      title: serializer.fromJson<String?>(json['title']),
      tmdbRating: serializer.fromJson<RatingDataDto?>(json['tmdbRating']),
      userRating: serializer.fromJson<int?>(json['userRating']),
      isInWatchlist: serializer.fromJson<bool?>(json['isInWatchlist']),
      isWatched: serializer.fromJson<bool?>(json['isWatched']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'tmdbId': serializer.toJson<int>(tmdbId),
      'genres': serializer.toJson<List<MovieGenreDto>?>(genres),
      'premiereDate': serializer.toJson<DateTime?>(premiereDate),
      'title': serializer.toJson<String?>(title),
      'tmdbRating': serializer.toJson<RatingDataDto?>(tmdbRating),
      'userRating': serializer.toJson<int?>(userRating),
      'isInWatchlist': serializer.toJson<bool?>(isInWatchlist),
      'isWatched': serializer.toJson<bool?>(isWatched),
    };
  }

  MoviesTableData copyWith(
          {int? id,
          int? tmdbId,
          Value<List<MovieGenreDto>?> genres = const Value.absent(),
          Value<DateTime?> premiereDate = const Value.absent(),
          Value<String?> title = const Value.absent(),
          Value<RatingDataDto?> tmdbRating = const Value.absent(),
          Value<int?> userRating = const Value.absent(),
          Value<bool?> isInWatchlist = const Value.absent(),
          Value<bool?> isWatched = const Value.absent()}) =>
      MoviesTableData(
        id: id ?? this.id,
        tmdbId: tmdbId ?? this.tmdbId,
        genres: genres.present ? genres.value : this.genres,
        premiereDate:
            premiereDate.present ? premiereDate.value : this.premiereDate,
        title: title.present ? title.value : this.title,
        tmdbRating: tmdbRating.present ? tmdbRating.value : this.tmdbRating,
        userRating: userRating.present ? userRating.value : this.userRating,
        isInWatchlist:
            isInWatchlist.present ? isInWatchlist.value : this.isInWatchlist,
        isWatched: isWatched.present ? isWatched.value : this.isWatched,
      );
  MoviesTableData copyWithCompanion(MoviesTableCompanion data) {
    return MoviesTableData(
      id: data.id.present ? data.id.value : this.id,
      tmdbId: data.tmdbId.present ? data.tmdbId.value : this.tmdbId,
      genres: data.genres.present ? data.genres.value : this.genres,
      premiereDate: data.premiereDate.present
          ? data.premiereDate.value
          : this.premiereDate,
      title: data.title.present ? data.title.value : this.title,
      tmdbRating:
          data.tmdbRating.present ? data.tmdbRating.value : this.tmdbRating,
      userRating:
          data.userRating.present ? data.userRating.value : this.userRating,
      isInWatchlist: data.isInWatchlist.present
          ? data.isInWatchlist.value
          : this.isInWatchlist,
      isWatched: data.isWatched.present ? data.isWatched.value : this.isWatched,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MoviesTableData(')
          ..write('id: $id, ')
          ..write('tmdbId: $tmdbId, ')
          ..write('genres: $genres, ')
          ..write('premiereDate: $premiereDate, ')
          ..write('title: $title, ')
          ..write('tmdbRating: $tmdbRating, ')
          ..write('userRating: $userRating, ')
          ..write('isInWatchlist: $isInWatchlist, ')
          ..write('isWatched: $isWatched')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, tmdbId, genres, premiereDate, title,
      tmdbRating, userRating, isInWatchlist, isWatched);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MoviesTableData &&
          other.id == this.id &&
          other.tmdbId == this.tmdbId &&
          other.genres == this.genres &&
          other.premiereDate == this.premiereDate &&
          other.title == this.title &&
          other.tmdbRating == this.tmdbRating &&
          other.userRating == this.userRating &&
          other.isInWatchlist == this.isInWatchlist &&
          other.isWatched == this.isWatched);
}

class MoviesTableCompanion extends UpdateCompanion<MoviesTableData> {
  final Value<int> id;
  final Value<int> tmdbId;
  final Value<List<MovieGenreDto>?> genres;
  final Value<DateTime?> premiereDate;
  final Value<String?> title;
  final Value<RatingDataDto?> tmdbRating;
  final Value<int?> userRating;
  final Value<bool?> isInWatchlist;
  final Value<bool?> isWatched;
  const MoviesTableCompanion({
    this.id = const Value.absent(),
    this.tmdbId = const Value.absent(),
    this.genres = const Value.absent(),
    this.premiereDate = const Value.absent(),
    this.title = const Value.absent(),
    this.tmdbRating = const Value.absent(),
    this.userRating = const Value.absent(),
    this.isInWatchlist = const Value.absent(),
    this.isWatched = const Value.absent(),
  });
  MoviesTableCompanion.insert({
    this.id = const Value.absent(),
    required int tmdbId,
    this.genres = const Value.absent(),
    this.premiereDate = const Value.absent(),
    this.title = const Value.absent(),
    this.tmdbRating = const Value.absent(),
    this.userRating = const Value.absent(),
    this.isInWatchlist = const Value.absent(),
    this.isWatched = const Value.absent(),
  }) : tmdbId = Value(tmdbId);
  static Insertable<MoviesTableData> custom({
    Expression<int>? id,
    Expression<int>? tmdbId,
    Expression<String>? genres,
    Expression<DateTime>? premiereDate,
    Expression<String>? title,
    Expression<String>? tmdbRating,
    Expression<int>? userRating,
    Expression<bool>? isInWatchlist,
    Expression<bool>? isWatched,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (tmdbId != null) 'tmdb_id': tmdbId,
      if (genres != null) 'genres': genres,
      if (premiereDate != null) 'premiere_date': premiereDate,
      if (title != null) 'title': title,
      if (tmdbRating != null) 'tmdb_rating': tmdbRating,
      if (userRating != null) 'user_rating': userRating,
      if (isInWatchlist != null) 'is_in_watchlist': isInWatchlist,
      if (isWatched != null) 'is_watched': isWatched,
    });
  }

  MoviesTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? tmdbId,
      Value<List<MovieGenreDto>?>? genres,
      Value<DateTime?>? premiereDate,
      Value<String?>? title,
      Value<RatingDataDto?>? tmdbRating,
      Value<int?>? userRating,
      Value<bool?>? isInWatchlist,
      Value<bool?>? isWatched}) {
    return MoviesTableCompanion(
      id: id ?? this.id,
      tmdbId: tmdbId ?? this.tmdbId,
      genres: genres ?? this.genres,
      premiereDate: premiereDate ?? this.premiereDate,
      title: title ?? this.title,
      tmdbRating: tmdbRating ?? this.tmdbRating,
      userRating: userRating ?? this.userRating,
      isInWatchlist: isInWatchlist ?? this.isInWatchlist,
      isWatched: isWatched ?? this.isWatched,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (tmdbId.present) {
      map['tmdb_id'] = Variable<int>(tmdbId.value);
    }
    if (genres.present) {
      map['genres'] = Variable<String>(
          $MoviesTableTable.$convertergenresn.toSql(genres.value));
    }
    if (premiereDate.present) {
      map['premiere_date'] = Variable<DateTime>(premiereDate.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (tmdbRating.present) {
      map['tmdb_rating'] = Variable<String>(
          $MoviesTableTable.$convertertmdbRatingn.toSql(tmdbRating.value));
    }
    if (userRating.present) {
      map['user_rating'] = Variable<int>(userRating.value);
    }
    if (isInWatchlist.present) {
      map['is_in_watchlist'] = Variable<bool>(isInWatchlist.value);
    }
    if (isWatched.present) {
      map['is_watched'] = Variable<bool>(isWatched.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoviesTableCompanion(')
          ..write('id: $id, ')
          ..write('tmdbId: $tmdbId, ')
          ..write('genres: $genres, ')
          ..write('premiereDate: $premiereDate, ')
          ..write('title: $title, ')
          ..write('tmdbRating: $tmdbRating, ')
          ..write('userRating: $userRating, ')
          ..write('isInWatchlist: $isInWatchlist, ')
          ..write('isWatched: $isWatched')
          ..write(')'))
        .toString();
  }
}

class $SeriesTableTable extends SeriesTable
    with TableInfo<$SeriesTableTable, SeriesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SeriesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _tmdbIdMeta = const VerificationMeta('tmdbId');
  @override
  late final GeneratedColumn<int> tmdbId = GeneratedColumn<int>(
      'tmdb_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _genresMeta = const VerificationMeta('genres');
  @override
  late final GeneratedColumnWithTypeConverter<List<SeriesGenreDto>?, String>
      genres = GeneratedColumn<String>('genres', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<SeriesGenreDto>?>(
              $SeriesTableTable.$convertergenresn);
  static const VerificationMeta _premiereDateMeta =
      const VerificationMeta('premiereDate');
  @override
  late final GeneratedColumn<DateTime> premiereDate = GeneratedColumn<DateTime>(
      'premiere_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _tmdbRatingMeta =
      const VerificationMeta('tmdbRating');
  @override
  late final GeneratedColumnWithTypeConverter<RatingDataDto?, String>
      tmdbRating = GeneratedColumn<String>('tmdb_rating', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<RatingDataDto?>(
              $SeriesTableTable.$convertertmdbRatingn);
  static const VerificationMeta _userRatingMeta =
      const VerificationMeta('userRating');
  @override
  late final GeneratedColumn<int> userRating = GeneratedColumn<int>(
      'user_rating', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _isInWatchlistMeta =
      const VerificationMeta('isInWatchlist');
  @override
  late final GeneratedColumn<bool> isInWatchlist = GeneratedColumn<bool>(
      'is_in_watchlist', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_in_watchlist" IN (0, 1))'));
  static const VerificationMeta _isWatchedMeta =
      const VerificationMeta('isWatched');
  @override
  late final GeneratedColumn<bool> isWatched = GeneratedColumn<bool>(
      'is_watched', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_watched" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        tmdbId,
        genres,
        premiereDate,
        title,
        tmdbRating,
        userRating,
        isInWatchlist,
        isWatched
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'series_table';
  @override
  VerificationContext validateIntegrity(Insertable<SeriesTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('tmdb_id')) {
      context.handle(_tmdbIdMeta,
          tmdbId.isAcceptableOrUnknown(data['tmdb_id']!, _tmdbIdMeta));
    } else if (isInserting) {
      context.missing(_tmdbIdMeta);
    }
    context.handle(_genresMeta, const VerificationResult.success());
    if (data.containsKey('premiere_date')) {
      context.handle(
          _premiereDateMeta,
          premiereDate.isAcceptableOrUnknown(
              data['premiere_date']!, _premiereDateMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    }
    context.handle(_tmdbRatingMeta, const VerificationResult.success());
    if (data.containsKey('user_rating')) {
      context.handle(
          _userRatingMeta,
          userRating.isAcceptableOrUnknown(
              data['user_rating']!, _userRatingMeta));
    }
    if (data.containsKey('is_in_watchlist')) {
      context.handle(
          _isInWatchlistMeta,
          isInWatchlist.isAcceptableOrUnknown(
              data['is_in_watchlist']!, _isInWatchlistMeta));
    }
    if (data.containsKey('is_watched')) {
      context.handle(_isWatchedMeta,
          isWatched.isAcceptableOrUnknown(data['is_watched']!, _isWatchedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SeriesTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SeriesTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      tmdbId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}tmdb_id'])!,
      genres: $SeriesTableTable.$convertergenresn.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}genres'])),
      premiereDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}premiere_date']),
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title']),
      tmdbRating: $SeriesTableTable.$convertertmdbRatingn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}tmdb_rating'])),
      userRating: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_rating']),
      isInWatchlist: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_in_watchlist']),
      isWatched: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_watched']),
    );
  }

  @override
  $SeriesTableTable createAlias(String alias) {
    return $SeriesTableTable(attachedDatabase, alias);
  }

  static TypeConverter<List<SeriesGenreDto>, String> $convertergenres =
      seriesGenresConverter;
  static TypeConverter<List<SeriesGenreDto>?, String?> $convertergenresn =
      NullAwareTypeConverter.wrap($convertergenres);
  static TypeConverter<RatingDataDto, String> $convertertmdbRating =
      ratingConverter;
  static TypeConverter<RatingDataDto?, String?> $convertertmdbRatingn =
      NullAwareTypeConverter.wrap($convertertmdbRating);
}

class SeriesTableData extends DataClass implements Insertable<SeriesTableData> {
  final int id;
  final int tmdbId;
  final List<SeriesGenreDto>? genres;
  final DateTime? premiereDate;
  final String? title;
  final RatingDataDto? tmdbRating;
  final int? userRating;
  final bool? isInWatchlist;
  final bool? isWatched;
  const SeriesTableData(
      {required this.id,
      required this.tmdbId,
      this.genres,
      this.premiereDate,
      this.title,
      this.tmdbRating,
      this.userRating,
      this.isInWatchlist,
      this.isWatched});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['tmdb_id'] = Variable<int>(tmdbId);
    if (!nullToAbsent || genres != null) {
      map['genres'] =
          Variable<String>($SeriesTableTable.$convertergenresn.toSql(genres));
    }
    if (!nullToAbsent || premiereDate != null) {
      map['premiere_date'] = Variable<DateTime>(premiereDate);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || tmdbRating != null) {
      map['tmdb_rating'] = Variable<String>(
          $SeriesTableTable.$convertertmdbRatingn.toSql(tmdbRating));
    }
    if (!nullToAbsent || userRating != null) {
      map['user_rating'] = Variable<int>(userRating);
    }
    if (!nullToAbsent || isInWatchlist != null) {
      map['is_in_watchlist'] = Variable<bool>(isInWatchlist);
    }
    if (!nullToAbsent || isWatched != null) {
      map['is_watched'] = Variable<bool>(isWatched);
    }
    return map;
  }

  SeriesTableCompanion toCompanion(bool nullToAbsent) {
    return SeriesTableCompanion(
      id: Value(id),
      tmdbId: Value(tmdbId),
      genres:
          genres == null && nullToAbsent ? const Value.absent() : Value(genres),
      premiereDate: premiereDate == null && nullToAbsent
          ? const Value.absent()
          : Value(premiereDate),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      tmdbRating: tmdbRating == null && nullToAbsent
          ? const Value.absent()
          : Value(tmdbRating),
      userRating: userRating == null && nullToAbsent
          ? const Value.absent()
          : Value(userRating),
      isInWatchlist: isInWatchlist == null && nullToAbsent
          ? const Value.absent()
          : Value(isInWatchlist),
      isWatched: isWatched == null && nullToAbsent
          ? const Value.absent()
          : Value(isWatched),
    );
  }

  factory SeriesTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SeriesTableData(
      id: serializer.fromJson<int>(json['id']),
      tmdbId: serializer.fromJson<int>(json['tmdbId']),
      genres: serializer.fromJson<List<SeriesGenreDto>?>(json['genres']),
      premiereDate: serializer.fromJson<DateTime?>(json['premiereDate']),
      title: serializer.fromJson<String?>(json['title']),
      tmdbRating: serializer.fromJson<RatingDataDto?>(json['tmdbRating']),
      userRating: serializer.fromJson<int?>(json['userRating']),
      isInWatchlist: serializer.fromJson<bool?>(json['isInWatchlist']),
      isWatched: serializer.fromJson<bool?>(json['isWatched']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'tmdbId': serializer.toJson<int>(tmdbId),
      'genres': serializer.toJson<List<SeriesGenreDto>?>(genres),
      'premiereDate': serializer.toJson<DateTime?>(premiereDate),
      'title': serializer.toJson<String?>(title),
      'tmdbRating': serializer.toJson<RatingDataDto?>(tmdbRating),
      'userRating': serializer.toJson<int?>(userRating),
      'isInWatchlist': serializer.toJson<bool?>(isInWatchlist),
      'isWatched': serializer.toJson<bool?>(isWatched),
    };
  }

  SeriesTableData copyWith(
          {int? id,
          int? tmdbId,
          Value<List<SeriesGenreDto>?> genres = const Value.absent(),
          Value<DateTime?> premiereDate = const Value.absent(),
          Value<String?> title = const Value.absent(),
          Value<RatingDataDto?> tmdbRating = const Value.absent(),
          Value<int?> userRating = const Value.absent(),
          Value<bool?> isInWatchlist = const Value.absent(),
          Value<bool?> isWatched = const Value.absent()}) =>
      SeriesTableData(
        id: id ?? this.id,
        tmdbId: tmdbId ?? this.tmdbId,
        genres: genres.present ? genres.value : this.genres,
        premiereDate:
            premiereDate.present ? premiereDate.value : this.premiereDate,
        title: title.present ? title.value : this.title,
        tmdbRating: tmdbRating.present ? tmdbRating.value : this.tmdbRating,
        userRating: userRating.present ? userRating.value : this.userRating,
        isInWatchlist:
            isInWatchlist.present ? isInWatchlist.value : this.isInWatchlist,
        isWatched: isWatched.present ? isWatched.value : this.isWatched,
      );
  SeriesTableData copyWithCompanion(SeriesTableCompanion data) {
    return SeriesTableData(
      id: data.id.present ? data.id.value : this.id,
      tmdbId: data.tmdbId.present ? data.tmdbId.value : this.tmdbId,
      genres: data.genres.present ? data.genres.value : this.genres,
      premiereDate: data.premiereDate.present
          ? data.premiereDate.value
          : this.premiereDate,
      title: data.title.present ? data.title.value : this.title,
      tmdbRating:
          data.tmdbRating.present ? data.tmdbRating.value : this.tmdbRating,
      userRating:
          data.userRating.present ? data.userRating.value : this.userRating,
      isInWatchlist: data.isInWatchlist.present
          ? data.isInWatchlist.value
          : this.isInWatchlist,
      isWatched: data.isWatched.present ? data.isWatched.value : this.isWatched,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SeriesTableData(')
          ..write('id: $id, ')
          ..write('tmdbId: $tmdbId, ')
          ..write('genres: $genres, ')
          ..write('premiereDate: $premiereDate, ')
          ..write('title: $title, ')
          ..write('tmdbRating: $tmdbRating, ')
          ..write('userRating: $userRating, ')
          ..write('isInWatchlist: $isInWatchlist, ')
          ..write('isWatched: $isWatched')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, tmdbId, genres, premiereDate, title,
      tmdbRating, userRating, isInWatchlist, isWatched);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SeriesTableData &&
          other.id == this.id &&
          other.tmdbId == this.tmdbId &&
          other.genres == this.genres &&
          other.premiereDate == this.premiereDate &&
          other.title == this.title &&
          other.tmdbRating == this.tmdbRating &&
          other.userRating == this.userRating &&
          other.isInWatchlist == this.isInWatchlist &&
          other.isWatched == this.isWatched);
}

class SeriesTableCompanion extends UpdateCompanion<SeriesTableData> {
  final Value<int> id;
  final Value<int> tmdbId;
  final Value<List<SeriesGenreDto>?> genres;
  final Value<DateTime?> premiereDate;
  final Value<String?> title;
  final Value<RatingDataDto?> tmdbRating;
  final Value<int?> userRating;
  final Value<bool?> isInWatchlist;
  final Value<bool?> isWatched;
  const SeriesTableCompanion({
    this.id = const Value.absent(),
    this.tmdbId = const Value.absent(),
    this.genres = const Value.absent(),
    this.premiereDate = const Value.absent(),
    this.title = const Value.absent(),
    this.tmdbRating = const Value.absent(),
    this.userRating = const Value.absent(),
    this.isInWatchlist = const Value.absent(),
    this.isWatched = const Value.absent(),
  });
  SeriesTableCompanion.insert({
    this.id = const Value.absent(),
    required int tmdbId,
    this.genres = const Value.absent(),
    this.premiereDate = const Value.absent(),
    this.title = const Value.absent(),
    this.tmdbRating = const Value.absent(),
    this.userRating = const Value.absent(),
    this.isInWatchlist = const Value.absent(),
    this.isWatched = const Value.absent(),
  }) : tmdbId = Value(tmdbId);
  static Insertable<SeriesTableData> custom({
    Expression<int>? id,
    Expression<int>? tmdbId,
    Expression<String>? genres,
    Expression<DateTime>? premiereDate,
    Expression<String>? title,
    Expression<String>? tmdbRating,
    Expression<int>? userRating,
    Expression<bool>? isInWatchlist,
    Expression<bool>? isWatched,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (tmdbId != null) 'tmdb_id': tmdbId,
      if (genres != null) 'genres': genres,
      if (premiereDate != null) 'premiere_date': premiereDate,
      if (title != null) 'title': title,
      if (tmdbRating != null) 'tmdb_rating': tmdbRating,
      if (userRating != null) 'user_rating': userRating,
      if (isInWatchlist != null) 'is_in_watchlist': isInWatchlist,
      if (isWatched != null) 'is_watched': isWatched,
    });
  }

  SeriesTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? tmdbId,
      Value<List<SeriesGenreDto>?>? genres,
      Value<DateTime?>? premiereDate,
      Value<String?>? title,
      Value<RatingDataDto?>? tmdbRating,
      Value<int?>? userRating,
      Value<bool?>? isInWatchlist,
      Value<bool?>? isWatched}) {
    return SeriesTableCompanion(
      id: id ?? this.id,
      tmdbId: tmdbId ?? this.tmdbId,
      genres: genres ?? this.genres,
      premiereDate: premiereDate ?? this.premiereDate,
      title: title ?? this.title,
      tmdbRating: tmdbRating ?? this.tmdbRating,
      userRating: userRating ?? this.userRating,
      isInWatchlist: isInWatchlist ?? this.isInWatchlist,
      isWatched: isWatched ?? this.isWatched,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (tmdbId.present) {
      map['tmdb_id'] = Variable<int>(tmdbId.value);
    }
    if (genres.present) {
      map['genres'] = Variable<String>(
          $SeriesTableTable.$convertergenresn.toSql(genres.value));
    }
    if (premiereDate.present) {
      map['premiere_date'] = Variable<DateTime>(premiereDate.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (tmdbRating.present) {
      map['tmdb_rating'] = Variable<String>(
          $SeriesTableTable.$convertertmdbRatingn.toSql(tmdbRating.value));
    }
    if (userRating.present) {
      map['user_rating'] = Variable<int>(userRating.value);
    }
    if (isInWatchlist.present) {
      map['is_in_watchlist'] = Variable<bool>(isInWatchlist.value);
    }
    if (isWatched.present) {
      map['is_watched'] = Variable<bool>(isWatched.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SeriesTableCompanion(')
          ..write('id: $id, ')
          ..write('tmdbId: $tmdbId, ')
          ..write('genres: $genres, ')
          ..write('premiereDate: $premiereDate, ')
          ..write('title: $title, ')
          ..write('tmdbRating: $tmdbRating, ')
          ..write('userRating: $userRating, ')
          ..write('isInWatchlist: $isInWatchlist, ')
          ..write('isWatched: $isWatched')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppLocalDatabase extends GeneratedDatabase {
  _$AppLocalDatabase(QueryExecutor e) : super(e);
  $AppLocalDatabaseManager get managers => $AppLocalDatabaseManager(this);
  late final $MoviesTableTable moviesTable = $MoviesTableTable(this);
  late final $SeriesTableTable seriesTable = $SeriesTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [moviesTable, seriesTable];
}

typedef $$MoviesTableTableCreateCompanionBuilder = MoviesTableCompanion
    Function({
  Value<int> id,
  required int tmdbId,
  Value<List<MovieGenreDto>?> genres,
  Value<DateTime?> premiereDate,
  Value<String?> title,
  Value<RatingDataDto?> tmdbRating,
  Value<int?> userRating,
  Value<bool?> isInWatchlist,
  Value<bool?> isWatched,
});
typedef $$MoviesTableTableUpdateCompanionBuilder = MoviesTableCompanion
    Function({
  Value<int> id,
  Value<int> tmdbId,
  Value<List<MovieGenreDto>?> genres,
  Value<DateTime?> premiereDate,
  Value<String?> title,
  Value<RatingDataDto?> tmdbRating,
  Value<int?> userRating,
  Value<bool?> isInWatchlist,
  Value<bool?> isWatched,
});

class $$MoviesTableTableFilterComposer
    extends Composer<_$AppLocalDatabase, $MoviesTableTable> {
  $$MoviesTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get tmdbId => $composableBuilder(
      column: $table.tmdbId, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<List<MovieGenreDto>?, List<MovieGenreDto>,
          String>
      get genres => $composableBuilder(
          column: $table.genres,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<DateTime> get premiereDate => $composableBuilder(
      column: $table.premiereDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<RatingDataDto?, RatingDataDto, String>
      get tmdbRating => $composableBuilder(
          column: $table.tmdbRating,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<int> get userRating => $composableBuilder(
      column: $table.userRating, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isInWatchlist => $composableBuilder(
      column: $table.isInWatchlist, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isWatched => $composableBuilder(
      column: $table.isWatched, builder: (column) => ColumnFilters(column));
}

class $$MoviesTableTableOrderingComposer
    extends Composer<_$AppLocalDatabase, $MoviesTableTable> {
  $$MoviesTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get tmdbId => $composableBuilder(
      column: $table.tmdbId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get genres => $composableBuilder(
      column: $table.genres, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get premiereDate => $composableBuilder(
      column: $table.premiereDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tmdbRating => $composableBuilder(
      column: $table.tmdbRating, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get userRating => $composableBuilder(
      column: $table.userRating, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isInWatchlist => $composableBuilder(
      column: $table.isInWatchlist,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isWatched => $composableBuilder(
      column: $table.isWatched, builder: (column) => ColumnOrderings(column));
}

class $$MoviesTableTableAnnotationComposer
    extends Composer<_$AppLocalDatabase, $MoviesTableTable> {
  $$MoviesTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get tmdbId =>
      $composableBuilder(column: $table.tmdbId, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<MovieGenreDto>?, String> get genres =>
      $composableBuilder(column: $table.genres, builder: (column) => column);

  GeneratedColumn<DateTime> get premiereDate => $composableBuilder(
      column: $table.premiereDate, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumnWithTypeConverter<RatingDataDto?, String> get tmdbRating =>
      $composableBuilder(
          column: $table.tmdbRating, builder: (column) => column);

  GeneratedColumn<int> get userRating => $composableBuilder(
      column: $table.userRating, builder: (column) => column);

  GeneratedColumn<bool> get isInWatchlist => $composableBuilder(
      column: $table.isInWatchlist, builder: (column) => column);

  GeneratedColumn<bool> get isWatched =>
      $composableBuilder(column: $table.isWatched, builder: (column) => column);
}

class $$MoviesTableTableTableManager extends RootTableManager<
    _$AppLocalDatabase,
    $MoviesTableTable,
    MoviesTableData,
    $$MoviesTableTableFilterComposer,
    $$MoviesTableTableOrderingComposer,
    $$MoviesTableTableAnnotationComposer,
    $$MoviesTableTableCreateCompanionBuilder,
    $$MoviesTableTableUpdateCompanionBuilder,
    (
      MoviesTableData,
      BaseReferences<_$AppLocalDatabase, $MoviesTableTable, MoviesTableData>
    ),
    MoviesTableData,
    PrefetchHooks Function()> {
  $$MoviesTableTableTableManager(_$AppLocalDatabase db, $MoviesTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MoviesTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MoviesTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MoviesTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> tmdbId = const Value.absent(),
            Value<List<MovieGenreDto>?> genres = const Value.absent(),
            Value<DateTime?> premiereDate = const Value.absent(),
            Value<String?> title = const Value.absent(),
            Value<RatingDataDto?> tmdbRating = const Value.absent(),
            Value<int?> userRating = const Value.absent(),
            Value<bool?> isInWatchlist = const Value.absent(),
            Value<bool?> isWatched = const Value.absent(),
          }) =>
              MoviesTableCompanion(
            id: id,
            tmdbId: tmdbId,
            genres: genres,
            premiereDate: premiereDate,
            title: title,
            tmdbRating: tmdbRating,
            userRating: userRating,
            isInWatchlist: isInWatchlist,
            isWatched: isWatched,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int tmdbId,
            Value<List<MovieGenreDto>?> genres = const Value.absent(),
            Value<DateTime?> premiereDate = const Value.absent(),
            Value<String?> title = const Value.absent(),
            Value<RatingDataDto?> tmdbRating = const Value.absent(),
            Value<int?> userRating = const Value.absent(),
            Value<bool?> isInWatchlist = const Value.absent(),
            Value<bool?> isWatched = const Value.absent(),
          }) =>
              MoviesTableCompanion.insert(
            id: id,
            tmdbId: tmdbId,
            genres: genres,
            premiereDate: premiereDate,
            title: title,
            tmdbRating: tmdbRating,
            userRating: userRating,
            isInWatchlist: isInWatchlist,
            isWatched: isWatched,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MoviesTableTableProcessedTableManager = ProcessedTableManager<
    _$AppLocalDatabase,
    $MoviesTableTable,
    MoviesTableData,
    $$MoviesTableTableFilterComposer,
    $$MoviesTableTableOrderingComposer,
    $$MoviesTableTableAnnotationComposer,
    $$MoviesTableTableCreateCompanionBuilder,
    $$MoviesTableTableUpdateCompanionBuilder,
    (
      MoviesTableData,
      BaseReferences<_$AppLocalDatabase, $MoviesTableTable, MoviesTableData>
    ),
    MoviesTableData,
    PrefetchHooks Function()>;
typedef $$SeriesTableTableCreateCompanionBuilder = SeriesTableCompanion
    Function({
  Value<int> id,
  required int tmdbId,
  Value<List<SeriesGenreDto>?> genres,
  Value<DateTime?> premiereDate,
  Value<String?> title,
  Value<RatingDataDto?> tmdbRating,
  Value<int?> userRating,
  Value<bool?> isInWatchlist,
  Value<bool?> isWatched,
});
typedef $$SeriesTableTableUpdateCompanionBuilder = SeriesTableCompanion
    Function({
  Value<int> id,
  Value<int> tmdbId,
  Value<List<SeriesGenreDto>?> genres,
  Value<DateTime?> premiereDate,
  Value<String?> title,
  Value<RatingDataDto?> tmdbRating,
  Value<int?> userRating,
  Value<bool?> isInWatchlist,
  Value<bool?> isWatched,
});

class $$SeriesTableTableFilterComposer
    extends Composer<_$AppLocalDatabase, $SeriesTableTable> {
  $$SeriesTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get tmdbId => $composableBuilder(
      column: $table.tmdbId, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<List<SeriesGenreDto>?, List<SeriesGenreDto>,
          String>
      get genres => $composableBuilder(
          column: $table.genres,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<DateTime> get premiereDate => $composableBuilder(
      column: $table.premiereDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<RatingDataDto?, RatingDataDto, String>
      get tmdbRating => $composableBuilder(
          column: $table.tmdbRating,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<int> get userRating => $composableBuilder(
      column: $table.userRating, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isInWatchlist => $composableBuilder(
      column: $table.isInWatchlist, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isWatched => $composableBuilder(
      column: $table.isWatched, builder: (column) => ColumnFilters(column));
}

class $$SeriesTableTableOrderingComposer
    extends Composer<_$AppLocalDatabase, $SeriesTableTable> {
  $$SeriesTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get tmdbId => $composableBuilder(
      column: $table.tmdbId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get genres => $composableBuilder(
      column: $table.genres, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get premiereDate => $composableBuilder(
      column: $table.premiereDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tmdbRating => $composableBuilder(
      column: $table.tmdbRating, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get userRating => $composableBuilder(
      column: $table.userRating, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isInWatchlist => $composableBuilder(
      column: $table.isInWatchlist,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isWatched => $composableBuilder(
      column: $table.isWatched, builder: (column) => ColumnOrderings(column));
}

class $$SeriesTableTableAnnotationComposer
    extends Composer<_$AppLocalDatabase, $SeriesTableTable> {
  $$SeriesTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get tmdbId =>
      $composableBuilder(column: $table.tmdbId, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<SeriesGenreDto>?, String> get genres =>
      $composableBuilder(column: $table.genres, builder: (column) => column);

  GeneratedColumn<DateTime> get premiereDate => $composableBuilder(
      column: $table.premiereDate, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumnWithTypeConverter<RatingDataDto?, String> get tmdbRating =>
      $composableBuilder(
          column: $table.tmdbRating, builder: (column) => column);

  GeneratedColumn<int> get userRating => $composableBuilder(
      column: $table.userRating, builder: (column) => column);

  GeneratedColumn<bool> get isInWatchlist => $composableBuilder(
      column: $table.isInWatchlist, builder: (column) => column);

  GeneratedColumn<bool> get isWatched =>
      $composableBuilder(column: $table.isWatched, builder: (column) => column);
}

class $$SeriesTableTableTableManager extends RootTableManager<
    _$AppLocalDatabase,
    $SeriesTableTable,
    SeriesTableData,
    $$SeriesTableTableFilterComposer,
    $$SeriesTableTableOrderingComposer,
    $$SeriesTableTableAnnotationComposer,
    $$SeriesTableTableCreateCompanionBuilder,
    $$SeriesTableTableUpdateCompanionBuilder,
    (
      SeriesTableData,
      BaseReferences<_$AppLocalDatabase, $SeriesTableTable, SeriesTableData>
    ),
    SeriesTableData,
    PrefetchHooks Function()> {
  $$SeriesTableTableTableManager(_$AppLocalDatabase db, $SeriesTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SeriesTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SeriesTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SeriesTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> tmdbId = const Value.absent(),
            Value<List<SeriesGenreDto>?> genres = const Value.absent(),
            Value<DateTime?> premiereDate = const Value.absent(),
            Value<String?> title = const Value.absent(),
            Value<RatingDataDto?> tmdbRating = const Value.absent(),
            Value<int?> userRating = const Value.absent(),
            Value<bool?> isInWatchlist = const Value.absent(),
            Value<bool?> isWatched = const Value.absent(),
          }) =>
              SeriesTableCompanion(
            id: id,
            tmdbId: tmdbId,
            genres: genres,
            premiereDate: premiereDate,
            title: title,
            tmdbRating: tmdbRating,
            userRating: userRating,
            isInWatchlist: isInWatchlist,
            isWatched: isWatched,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int tmdbId,
            Value<List<SeriesGenreDto>?> genres = const Value.absent(),
            Value<DateTime?> premiereDate = const Value.absent(),
            Value<String?> title = const Value.absent(),
            Value<RatingDataDto?> tmdbRating = const Value.absent(),
            Value<int?> userRating = const Value.absent(),
            Value<bool?> isInWatchlist = const Value.absent(),
            Value<bool?> isWatched = const Value.absent(),
          }) =>
              SeriesTableCompanion.insert(
            id: id,
            tmdbId: tmdbId,
            genres: genres,
            premiereDate: premiereDate,
            title: title,
            tmdbRating: tmdbRating,
            userRating: userRating,
            isInWatchlist: isInWatchlist,
            isWatched: isWatched,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SeriesTableTableProcessedTableManager = ProcessedTableManager<
    _$AppLocalDatabase,
    $SeriesTableTable,
    SeriesTableData,
    $$SeriesTableTableFilterComposer,
    $$SeriesTableTableOrderingComposer,
    $$SeriesTableTableAnnotationComposer,
    $$SeriesTableTableCreateCompanionBuilder,
    $$SeriesTableTableUpdateCompanionBuilder,
    (
      SeriesTableData,
      BaseReferences<_$AppLocalDatabase, $SeriesTableTable, SeriesTableData>
    ),
    SeriesTableData,
    PrefetchHooks Function()>;

class $AppLocalDatabaseManager {
  final _$AppLocalDatabase _db;
  $AppLocalDatabaseManager(this._db);
  $$MoviesTableTableTableManager get moviesTable =>
      $$MoviesTableTableTableManager(_db, _db.moviesTable);
  $$SeriesTableTableTableManager get seriesTable =>
      $$SeriesTableTableTableManager(_db, _db.seriesTable);
}
