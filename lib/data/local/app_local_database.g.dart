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
  static const VerificationMeta _posterUrlMeta =
      const VerificationMeta('posterUrl');
  @override
  late final GeneratedColumn<String> posterUrl = GeneratedColumn<String>(
      'poster_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _genresMeta = const VerificationMeta('genres');
  @override
  late final GeneratedColumnWithTypeConverter<List<MovieGenreDto>?, String>
      genres = GeneratedColumn<String>('genres', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<MovieGenreDto>?>(
              $MoviesTableTable.$convertergenresn);
  static const VerificationMeta _originCountryMeta =
      const VerificationMeta('originCountry');
  @override
  late final GeneratedColumnWithTypeConverter<List<String>?, String>
      originCountry = GeneratedColumn<String>(
              'origin_country', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<String>?>(
              $MoviesTableTable.$converteroriginCountryn);
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
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        tmdbId,
        posterUrl,
        genres,
        originCountry,
        premiereDate,
        title,
        tmdbRating,
        userRating,
        isInWatchlist,
        isWatched,
        createdAt,
        updatedAt
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
    if (data.containsKey('poster_url')) {
      context.handle(_posterUrlMeta,
          posterUrl.isAcceptableOrUnknown(data['poster_url']!, _posterUrlMeta));
    }
    context.handle(_genresMeta, const VerificationResult.success());
    context.handle(_originCountryMeta, const VerificationResult.success());
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
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
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
      posterUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}poster_url']),
      genres: $MoviesTableTable.$convertergenresn.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}genres'])),
      originCountry: $MoviesTableTable.$converteroriginCountryn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}origin_country'])),
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
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
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
  static TypeConverter<List<String>, String> $converteroriginCountry =
      countryConverter;
  static TypeConverter<List<String>?, String?> $converteroriginCountryn =
      NullAwareTypeConverter.wrap($converteroriginCountry);
  static TypeConverter<RatingDataDto, String> $convertertmdbRating =
      ratingConverter;
  static TypeConverter<RatingDataDto?, String?> $convertertmdbRatingn =
      NullAwareTypeConverter.wrap($convertertmdbRating);
}

class MoviesTableData extends DataClass implements Insertable<MoviesTableData> {
  final int id;
  final int tmdbId;
  final String? posterUrl;
  final List<MovieGenreDto>? genres;
  final List<String>? originCountry;
  final DateTime? premiereDate;
  final String? title;
  final RatingDataDto? tmdbRating;
  final int? userRating;
  final bool? isInWatchlist;
  final bool? isWatched;
  final DateTime createdAt;
  final DateTime updatedAt;
  const MoviesTableData(
      {required this.id,
      required this.tmdbId,
      this.posterUrl,
      this.genres,
      this.originCountry,
      this.premiereDate,
      this.title,
      this.tmdbRating,
      this.userRating,
      this.isInWatchlist,
      this.isWatched,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['tmdb_id'] = Variable<int>(tmdbId);
    if (!nullToAbsent || posterUrl != null) {
      map['poster_url'] = Variable<String>(posterUrl);
    }
    if (!nullToAbsent || genres != null) {
      map['genres'] =
          Variable<String>($MoviesTableTable.$convertergenresn.toSql(genres));
    }
    if (!nullToAbsent || originCountry != null) {
      map['origin_country'] = Variable<String>(
          $MoviesTableTable.$converteroriginCountryn.toSql(originCountry));
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
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  MoviesTableCompanion toCompanion(bool nullToAbsent) {
    return MoviesTableCompanion(
      id: Value(id),
      tmdbId: Value(tmdbId),
      posterUrl: posterUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(posterUrl),
      genres:
          genres == null && nullToAbsent ? const Value.absent() : Value(genres),
      originCountry: originCountry == null && nullToAbsent
          ? const Value.absent()
          : Value(originCountry),
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
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory MoviesTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MoviesTableData(
      id: serializer.fromJson<int>(json['id']),
      tmdbId: serializer.fromJson<int>(json['tmdbId']),
      posterUrl: serializer.fromJson<String?>(json['posterUrl']),
      genres: serializer.fromJson<List<MovieGenreDto>?>(json['genres']),
      originCountry: serializer.fromJson<List<String>?>(json['originCountry']),
      premiereDate: serializer.fromJson<DateTime?>(json['premiereDate']),
      title: serializer.fromJson<String?>(json['title']),
      tmdbRating: serializer.fromJson<RatingDataDto?>(json['tmdbRating']),
      userRating: serializer.fromJson<int?>(json['userRating']),
      isInWatchlist: serializer.fromJson<bool?>(json['isInWatchlist']),
      isWatched: serializer.fromJson<bool?>(json['isWatched']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'tmdbId': serializer.toJson<int>(tmdbId),
      'posterUrl': serializer.toJson<String?>(posterUrl),
      'genres': serializer.toJson<List<MovieGenreDto>?>(genres),
      'originCountry': serializer.toJson<List<String>?>(originCountry),
      'premiereDate': serializer.toJson<DateTime?>(premiereDate),
      'title': serializer.toJson<String?>(title),
      'tmdbRating': serializer.toJson<RatingDataDto?>(tmdbRating),
      'userRating': serializer.toJson<int?>(userRating),
      'isInWatchlist': serializer.toJson<bool?>(isInWatchlist),
      'isWatched': serializer.toJson<bool?>(isWatched),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  MoviesTableData copyWith(
          {int? id,
          int? tmdbId,
          Value<String?> posterUrl = const Value.absent(),
          Value<List<MovieGenreDto>?> genres = const Value.absent(),
          Value<List<String>?> originCountry = const Value.absent(),
          Value<DateTime?> premiereDate = const Value.absent(),
          Value<String?> title = const Value.absent(),
          Value<RatingDataDto?> tmdbRating = const Value.absent(),
          Value<int?> userRating = const Value.absent(),
          Value<bool?> isInWatchlist = const Value.absent(),
          Value<bool?> isWatched = const Value.absent(),
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      MoviesTableData(
        id: id ?? this.id,
        tmdbId: tmdbId ?? this.tmdbId,
        posterUrl: posterUrl.present ? posterUrl.value : this.posterUrl,
        genres: genres.present ? genres.value : this.genres,
        originCountry:
            originCountry.present ? originCountry.value : this.originCountry,
        premiereDate:
            premiereDate.present ? premiereDate.value : this.premiereDate,
        title: title.present ? title.value : this.title,
        tmdbRating: tmdbRating.present ? tmdbRating.value : this.tmdbRating,
        userRating: userRating.present ? userRating.value : this.userRating,
        isInWatchlist:
            isInWatchlist.present ? isInWatchlist.value : this.isInWatchlist,
        isWatched: isWatched.present ? isWatched.value : this.isWatched,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  MoviesTableData copyWithCompanion(MoviesTableCompanion data) {
    return MoviesTableData(
      id: data.id.present ? data.id.value : this.id,
      tmdbId: data.tmdbId.present ? data.tmdbId.value : this.tmdbId,
      posterUrl: data.posterUrl.present ? data.posterUrl.value : this.posterUrl,
      genres: data.genres.present ? data.genres.value : this.genres,
      originCountry: data.originCountry.present
          ? data.originCountry.value
          : this.originCountry,
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
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MoviesTableData(')
          ..write('id: $id, ')
          ..write('tmdbId: $tmdbId, ')
          ..write('posterUrl: $posterUrl, ')
          ..write('genres: $genres, ')
          ..write('originCountry: $originCountry, ')
          ..write('premiereDate: $premiereDate, ')
          ..write('title: $title, ')
          ..write('tmdbRating: $tmdbRating, ')
          ..write('userRating: $userRating, ')
          ..write('isInWatchlist: $isInWatchlist, ')
          ..write('isWatched: $isWatched, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      tmdbId,
      posterUrl,
      genres,
      originCountry,
      premiereDate,
      title,
      tmdbRating,
      userRating,
      isInWatchlist,
      isWatched,
      createdAt,
      updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MoviesTableData &&
          other.id == this.id &&
          other.tmdbId == this.tmdbId &&
          other.posterUrl == this.posterUrl &&
          other.genres == this.genres &&
          other.originCountry == this.originCountry &&
          other.premiereDate == this.premiereDate &&
          other.title == this.title &&
          other.tmdbRating == this.tmdbRating &&
          other.userRating == this.userRating &&
          other.isInWatchlist == this.isInWatchlist &&
          other.isWatched == this.isWatched &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class MoviesTableCompanion extends UpdateCompanion<MoviesTableData> {
  final Value<int> id;
  final Value<int> tmdbId;
  final Value<String?> posterUrl;
  final Value<List<MovieGenreDto>?> genres;
  final Value<List<String>?> originCountry;
  final Value<DateTime?> premiereDate;
  final Value<String?> title;
  final Value<RatingDataDto?> tmdbRating;
  final Value<int?> userRating;
  final Value<bool?> isInWatchlist;
  final Value<bool?> isWatched;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const MoviesTableCompanion({
    this.id = const Value.absent(),
    this.tmdbId = const Value.absent(),
    this.posterUrl = const Value.absent(),
    this.genres = const Value.absent(),
    this.originCountry = const Value.absent(),
    this.premiereDate = const Value.absent(),
    this.title = const Value.absent(),
    this.tmdbRating = const Value.absent(),
    this.userRating = const Value.absent(),
    this.isInWatchlist = const Value.absent(),
    this.isWatched = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  MoviesTableCompanion.insert({
    this.id = const Value.absent(),
    required int tmdbId,
    this.posterUrl = const Value.absent(),
    this.genres = const Value.absent(),
    this.originCountry = const Value.absent(),
    this.premiereDate = const Value.absent(),
    this.title = const Value.absent(),
    this.tmdbRating = const Value.absent(),
    this.userRating = const Value.absent(),
    this.isInWatchlist = const Value.absent(),
    this.isWatched = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  }) : tmdbId = Value(tmdbId);
  static Insertable<MoviesTableData> custom({
    Expression<int>? id,
    Expression<int>? tmdbId,
    Expression<String>? posterUrl,
    Expression<String>? genres,
    Expression<String>? originCountry,
    Expression<DateTime>? premiereDate,
    Expression<String>? title,
    Expression<String>? tmdbRating,
    Expression<int>? userRating,
    Expression<bool>? isInWatchlist,
    Expression<bool>? isWatched,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (tmdbId != null) 'tmdb_id': tmdbId,
      if (posterUrl != null) 'poster_url': posterUrl,
      if (genres != null) 'genres': genres,
      if (originCountry != null) 'origin_country': originCountry,
      if (premiereDate != null) 'premiere_date': premiereDate,
      if (title != null) 'title': title,
      if (tmdbRating != null) 'tmdb_rating': tmdbRating,
      if (userRating != null) 'user_rating': userRating,
      if (isInWatchlist != null) 'is_in_watchlist': isInWatchlist,
      if (isWatched != null) 'is_watched': isWatched,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  MoviesTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? tmdbId,
      Value<String?>? posterUrl,
      Value<List<MovieGenreDto>?>? genres,
      Value<List<String>?>? originCountry,
      Value<DateTime?>? premiereDate,
      Value<String?>? title,
      Value<RatingDataDto?>? tmdbRating,
      Value<int?>? userRating,
      Value<bool?>? isInWatchlist,
      Value<bool?>? isWatched,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt}) {
    return MoviesTableCompanion(
      id: id ?? this.id,
      tmdbId: tmdbId ?? this.tmdbId,
      posterUrl: posterUrl ?? this.posterUrl,
      genres: genres ?? this.genres,
      originCountry: originCountry ?? this.originCountry,
      premiereDate: premiereDate ?? this.premiereDate,
      title: title ?? this.title,
      tmdbRating: tmdbRating ?? this.tmdbRating,
      userRating: userRating ?? this.userRating,
      isInWatchlist: isInWatchlist ?? this.isInWatchlist,
      isWatched: isWatched ?? this.isWatched,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
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
    if (posterUrl.present) {
      map['poster_url'] = Variable<String>(posterUrl.value);
    }
    if (genres.present) {
      map['genres'] = Variable<String>(
          $MoviesTableTable.$convertergenresn.toSql(genres.value));
    }
    if (originCountry.present) {
      map['origin_country'] = Variable<String>($MoviesTableTable
          .$converteroriginCountryn
          .toSql(originCountry.value));
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
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoviesTableCompanion(')
          ..write('id: $id, ')
          ..write('tmdbId: $tmdbId, ')
          ..write('posterUrl: $posterUrl, ')
          ..write('genres: $genres, ')
          ..write('originCountry: $originCountry, ')
          ..write('premiereDate: $premiereDate, ')
          ..write('title: $title, ')
          ..write('tmdbRating: $tmdbRating, ')
          ..write('userRating: $userRating, ')
          ..write('isInWatchlist: $isInWatchlist, ')
          ..write('isWatched: $isWatched, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
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
  static const VerificationMeta _posterUrlMeta =
      const VerificationMeta('posterUrl');
  @override
  late final GeneratedColumn<String> posterUrl = GeneratedColumn<String>(
      'poster_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _genresMeta = const VerificationMeta('genres');
  @override
  late final GeneratedColumnWithTypeConverter<List<SeriesGenreDto>?, String>
      genres = GeneratedColumn<String>('genres', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<SeriesGenreDto>?>(
              $SeriesTableTable.$convertergenresn);
  static const VerificationMeta _originCountryMeta =
      const VerificationMeta('originCountry');
  @override
  late final GeneratedColumnWithTypeConverter<List<String>?, String>
      originCountry = GeneratedColumn<String>(
              'origin_country', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<String>?>(
              $SeriesTableTable.$converteroriginCountryn);
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
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        tmdbId,
        posterUrl,
        genres,
        originCountry,
        premiereDate,
        title,
        tmdbRating,
        userRating,
        isInWatchlist,
        isWatched,
        createdAt,
        updatedAt
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
    if (data.containsKey('poster_url')) {
      context.handle(_posterUrlMeta,
          posterUrl.isAcceptableOrUnknown(data['poster_url']!, _posterUrlMeta));
    }
    context.handle(_genresMeta, const VerificationResult.success());
    context.handle(_originCountryMeta, const VerificationResult.success());
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
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
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
      posterUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}poster_url']),
      genres: $SeriesTableTable.$convertergenresn.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}genres'])),
      originCountry: $SeriesTableTable.$converteroriginCountryn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}origin_country'])),
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
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
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
  static TypeConverter<List<String>, String> $converteroriginCountry =
      countryConverter;
  static TypeConverter<List<String>?, String?> $converteroriginCountryn =
      NullAwareTypeConverter.wrap($converteroriginCountry);
  static TypeConverter<RatingDataDto, String> $convertertmdbRating =
      ratingConverter;
  static TypeConverter<RatingDataDto?, String?> $convertertmdbRatingn =
      NullAwareTypeConverter.wrap($convertertmdbRating);
}

class SeriesTableData extends DataClass implements Insertable<SeriesTableData> {
  final int id;
  final int tmdbId;
  final String? posterUrl;
  final List<SeriesGenreDto>? genres;
  final List<String>? originCountry;
  final DateTime? premiereDate;
  final String? title;
  final RatingDataDto? tmdbRating;
  final int? userRating;
  final bool? isInWatchlist;
  final bool? isWatched;
  final DateTime createdAt;
  final DateTime updatedAt;
  const SeriesTableData(
      {required this.id,
      required this.tmdbId,
      this.posterUrl,
      this.genres,
      this.originCountry,
      this.premiereDate,
      this.title,
      this.tmdbRating,
      this.userRating,
      this.isInWatchlist,
      this.isWatched,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['tmdb_id'] = Variable<int>(tmdbId);
    if (!nullToAbsent || posterUrl != null) {
      map['poster_url'] = Variable<String>(posterUrl);
    }
    if (!nullToAbsent || genres != null) {
      map['genres'] =
          Variable<String>($SeriesTableTable.$convertergenresn.toSql(genres));
    }
    if (!nullToAbsent || originCountry != null) {
      map['origin_country'] = Variable<String>(
          $SeriesTableTable.$converteroriginCountryn.toSql(originCountry));
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
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  SeriesTableCompanion toCompanion(bool nullToAbsent) {
    return SeriesTableCompanion(
      id: Value(id),
      tmdbId: Value(tmdbId),
      posterUrl: posterUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(posterUrl),
      genres:
          genres == null && nullToAbsent ? const Value.absent() : Value(genres),
      originCountry: originCountry == null && nullToAbsent
          ? const Value.absent()
          : Value(originCountry),
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
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory SeriesTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SeriesTableData(
      id: serializer.fromJson<int>(json['id']),
      tmdbId: serializer.fromJson<int>(json['tmdbId']),
      posterUrl: serializer.fromJson<String?>(json['posterUrl']),
      genres: serializer.fromJson<List<SeriesGenreDto>?>(json['genres']),
      originCountry: serializer.fromJson<List<String>?>(json['originCountry']),
      premiereDate: serializer.fromJson<DateTime?>(json['premiereDate']),
      title: serializer.fromJson<String?>(json['title']),
      tmdbRating: serializer.fromJson<RatingDataDto?>(json['tmdbRating']),
      userRating: serializer.fromJson<int?>(json['userRating']),
      isInWatchlist: serializer.fromJson<bool?>(json['isInWatchlist']),
      isWatched: serializer.fromJson<bool?>(json['isWatched']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'tmdbId': serializer.toJson<int>(tmdbId),
      'posterUrl': serializer.toJson<String?>(posterUrl),
      'genres': serializer.toJson<List<SeriesGenreDto>?>(genres),
      'originCountry': serializer.toJson<List<String>?>(originCountry),
      'premiereDate': serializer.toJson<DateTime?>(premiereDate),
      'title': serializer.toJson<String?>(title),
      'tmdbRating': serializer.toJson<RatingDataDto?>(tmdbRating),
      'userRating': serializer.toJson<int?>(userRating),
      'isInWatchlist': serializer.toJson<bool?>(isInWatchlist),
      'isWatched': serializer.toJson<bool?>(isWatched),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  SeriesTableData copyWith(
          {int? id,
          int? tmdbId,
          Value<String?> posterUrl = const Value.absent(),
          Value<List<SeriesGenreDto>?> genres = const Value.absent(),
          Value<List<String>?> originCountry = const Value.absent(),
          Value<DateTime?> premiereDate = const Value.absent(),
          Value<String?> title = const Value.absent(),
          Value<RatingDataDto?> tmdbRating = const Value.absent(),
          Value<int?> userRating = const Value.absent(),
          Value<bool?> isInWatchlist = const Value.absent(),
          Value<bool?> isWatched = const Value.absent(),
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      SeriesTableData(
        id: id ?? this.id,
        tmdbId: tmdbId ?? this.tmdbId,
        posterUrl: posterUrl.present ? posterUrl.value : this.posterUrl,
        genres: genres.present ? genres.value : this.genres,
        originCountry:
            originCountry.present ? originCountry.value : this.originCountry,
        premiereDate:
            premiereDate.present ? premiereDate.value : this.premiereDate,
        title: title.present ? title.value : this.title,
        tmdbRating: tmdbRating.present ? tmdbRating.value : this.tmdbRating,
        userRating: userRating.present ? userRating.value : this.userRating,
        isInWatchlist:
            isInWatchlist.present ? isInWatchlist.value : this.isInWatchlist,
        isWatched: isWatched.present ? isWatched.value : this.isWatched,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  SeriesTableData copyWithCompanion(SeriesTableCompanion data) {
    return SeriesTableData(
      id: data.id.present ? data.id.value : this.id,
      tmdbId: data.tmdbId.present ? data.tmdbId.value : this.tmdbId,
      posterUrl: data.posterUrl.present ? data.posterUrl.value : this.posterUrl,
      genres: data.genres.present ? data.genres.value : this.genres,
      originCountry: data.originCountry.present
          ? data.originCountry.value
          : this.originCountry,
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
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SeriesTableData(')
          ..write('id: $id, ')
          ..write('tmdbId: $tmdbId, ')
          ..write('posterUrl: $posterUrl, ')
          ..write('genres: $genres, ')
          ..write('originCountry: $originCountry, ')
          ..write('premiereDate: $premiereDate, ')
          ..write('title: $title, ')
          ..write('tmdbRating: $tmdbRating, ')
          ..write('userRating: $userRating, ')
          ..write('isInWatchlist: $isInWatchlist, ')
          ..write('isWatched: $isWatched, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      tmdbId,
      posterUrl,
      genres,
      originCountry,
      premiereDate,
      title,
      tmdbRating,
      userRating,
      isInWatchlist,
      isWatched,
      createdAt,
      updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SeriesTableData &&
          other.id == this.id &&
          other.tmdbId == this.tmdbId &&
          other.posterUrl == this.posterUrl &&
          other.genres == this.genres &&
          other.originCountry == this.originCountry &&
          other.premiereDate == this.premiereDate &&
          other.title == this.title &&
          other.tmdbRating == this.tmdbRating &&
          other.userRating == this.userRating &&
          other.isInWatchlist == this.isInWatchlist &&
          other.isWatched == this.isWatched &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class SeriesTableCompanion extends UpdateCompanion<SeriesTableData> {
  final Value<int> id;
  final Value<int> tmdbId;
  final Value<String?> posterUrl;
  final Value<List<SeriesGenreDto>?> genres;
  final Value<List<String>?> originCountry;
  final Value<DateTime?> premiereDate;
  final Value<String?> title;
  final Value<RatingDataDto?> tmdbRating;
  final Value<int?> userRating;
  final Value<bool?> isInWatchlist;
  final Value<bool?> isWatched;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const SeriesTableCompanion({
    this.id = const Value.absent(),
    this.tmdbId = const Value.absent(),
    this.posterUrl = const Value.absent(),
    this.genres = const Value.absent(),
    this.originCountry = const Value.absent(),
    this.premiereDate = const Value.absent(),
    this.title = const Value.absent(),
    this.tmdbRating = const Value.absent(),
    this.userRating = const Value.absent(),
    this.isInWatchlist = const Value.absent(),
    this.isWatched = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  SeriesTableCompanion.insert({
    this.id = const Value.absent(),
    required int tmdbId,
    this.posterUrl = const Value.absent(),
    this.genres = const Value.absent(),
    this.originCountry = const Value.absent(),
    this.premiereDate = const Value.absent(),
    this.title = const Value.absent(),
    this.tmdbRating = const Value.absent(),
    this.userRating = const Value.absent(),
    this.isInWatchlist = const Value.absent(),
    this.isWatched = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  }) : tmdbId = Value(tmdbId);
  static Insertable<SeriesTableData> custom({
    Expression<int>? id,
    Expression<int>? tmdbId,
    Expression<String>? posterUrl,
    Expression<String>? genres,
    Expression<String>? originCountry,
    Expression<DateTime>? premiereDate,
    Expression<String>? title,
    Expression<String>? tmdbRating,
    Expression<int>? userRating,
    Expression<bool>? isInWatchlist,
    Expression<bool>? isWatched,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (tmdbId != null) 'tmdb_id': tmdbId,
      if (posterUrl != null) 'poster_url': posterUrl,
      if (genres != null) 'genres': genres,
      if (originCountry != null) 'origin_country': originCountry,
      if (premiereDate != null) 'premiere_date': premiereDate,
      if (title != null) 'title': title,
      if (tmdbRating != null) 'tmdb_rating': tmdbRating,
      if (userRating != null) 'user_rating': userRating,
      if (isInWatchlist != null) 'is_in_watchlist': isInWatchlist,
      if (isWatched != null) 'is_watched': isWatched,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  SeriesTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? tmdbId,
      Value<String?>? posterUrl,
      Value<List<SeriesGenreDto>?>? genres,
      Value<List<String>?>? originCountry,
      Value<DateTime?>? premiereDate,
      Value<String?>? title,
      Value<RatingDataDto?>? tmdbRating,
      Value<int?>? userRating,
      Value<bool?>? isInWatchlist,
      Value<bool?>? isWatched,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt}) {
    return SeriesTableCompanion(
      id: id ?? this.id,
      tmdbId: tmdbId ?? this.tmdbId,
      posterUrl: posterUrl ?? this.posterUrl,
      genres: genres ?? this.genres,
      originCountry: originCountry ?? this.originCountry,
      premiereDate: premiereDate ?? this.premiereDate,
      title: title ?? this.title,
      tmdbRating: tmdbRating ?? this.tmdbRating,
      userRating: userRating ?? this.userRating,
      isInWatchlist: isInWatchlist ?? this.isInWatchlist,
      isWatched: isWatched ?? this.isWatched,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
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
    if (posterUrl.present) {
      map['poster_url'] = Variable<String>(posterUrl.value);
    }
    if (genres.present) {
      map['genres'] = Variable<String>(
          $SeriesTableTable.$convertergenresn.toSql(genres.value));
    }
    if (originCountry.present) {
      map['origin_country'] = Variable<String>($SeriesTableTable
          .$converteroriginCountryn
          .toSql(originCountry.value));
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
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SeriesTableCompanion(')
          ..write('id: $id, ')
          ..write('tmdbId: $tmdbId, ')
          ..write('posterUrl: $posterUrl, ')
          ..write('genres: $genres, ')
          ..write('originCountry: $originCountry, ')
          ..write('premiereDate: $premiereDate, ')
          ..write('title: $title, ')
          ..write('tmdbRating: $tmdbRating, ')
          ..write('userRating: $userRating, ')
          ..write('isInWatchlist: $isInWatchlist, ')
          ..write('isWatched: $isWatched, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $SyncUserTableTable extends SyncUserTable
    with TableInfo<$SyncUserTableTable, SyncUserTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SyncUserTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _uidMeta = const VerificationMeta('uid');
  @override
  late final GeneratedColumn<String> uid = GeneratedColumn<String>(
      'uid', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  @override
  List<GeneratedColumn> get $columns => [id, uid, email];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sync_user_table';
  @override
  VerificationContext validateIntegrity(Insertable<SyncUserTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('uid')) {
      context.handle(
          _uidMeta, uid.isAcceptableOrUnknown(data['uid']!, _uidMeta));
    } else if (isInserting) {
      context.missing(_uidMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SyncUserTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SyncUserTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      uid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}uid'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
    );
  }

  @override
  $SyncUserTableTable createAlias(String alias) {
    return $SyncUserTableTable(attachedDatabase, alias);
  }
}

class SyncUserTableData extends DataClass
    implements Insertable<SyncUserTableData> {
  final int id;
  final String uid;
  final String email;
  const SyncUserTableData(
      {required this.id, required this.uid, required this.email});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['uid'] = Variable<String>(uid);
    map['email'] = Variable<String>(email);
    return map;
  }

  SyncUserTableCompanion toCompanion(bool nullToAbsent) {
    return SyncUserTableCompanion(
      id: Value(id),
      uid: Value(uid),
      email: Value(email),
    );
  }

  factory SyncUserTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SyncUserTableData(
      id: serializer.fromJson<int>(json['id']),
      uid: serializer.fromJson<String>(json['uid']),
      email: serializer.fromJson<String>(json['email']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'uid': serializer.toJson<String>(uid),
      'email': serializer.toJson<String>(email),
    };
  }

  SyncUserTableData copyWith({int? id, String? uid, String? email}) =>
      SyncUserTableData(
        id: id ?? this.id,
        uid: uid ?? this.uid,
        email: email ?? this.email,
      );
  SyncUserTableData copyWithCompanion(SyncUserTableCompanion data) {
    return SyncUserTableData(
      id: data.id.present ? data.id.value : this.id,
      uid: data.uid.present ? data.uid.value : this.uid,
      email: data.email.present ? data.email.value : this.email,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SyncUserTableData(')
          ..write('id: $id, ')
          ..write('uid: $uid, ')
          ..write('email: $email')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, uid, email);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SyncUserTableData &&
          other.id == this.id &&
          other.uid == this.uid &&
          other.email == this.email);
}

class SyncUserTableCompanion extends UpdateCompanion<SyncUserTableData> {
  final Value<int> id;
  final Value<String> uid;
  final Value<String> email;
  const SyncUserTableCompanion({
    this.id = const Value.absent(),
    this.uid = const Value.absent(),
    this.email = const Value.absent(),
  });
  SyncUserTableCompanion.insert({
    this.id = const Value.absent(),
    required String uid,
    required String email,
  })  : uid = Value(uid),
        email = Value(email);
  static Insertable<SyncUserTableData> custom({
    Expression<int>? id,
    Expression<String>? uid,
    Expression<String>? email,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (uid != null) 'uid': uid,
      if (email != null) 'email': email,
    });
  }

  SyncUserTableCompanion copyWith(
      {Value<int>? id, Value<String>? uid, Value<String>? email}) {
    return SyncUserTableCompanion(
      id: id ?? this.id,
      uid: uid ?? this.uid,
      email: email ?? this.email,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (uid.present) {
      map['uid'] = Variable<String>(uid.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SyncUserTableCompanion(')
          ..write('id: $id, ')
          ..write('uid: $uid, ')
          ..write('email: $email')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppLocalDatabase extends GeneratedDatabase {
  _$AppLocalDatabase(QueryExecutor e) : super(e);
  $AppLocalDatabaseManager get managers => $AppLocalDatabaseManager(this);
  late final $MoviesTableTable moviesTable = $MoviesTableTable(this);
  late final $SeriesTableTable seriesTable = $SeriesTableTable(this);
  late final $SyncUserTableTable syncUserTable = $SyncUserTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [moviesTable, seriesTable, syncUserTable];
}

typedef $$MoviesTableTableCreateCompanionBuilder = MoviesTableCompanion
    Function({
  Value<int> id,
  required int tmdbId,
  Value<String?> posterUrl,
  Value<List<MovieGenreDto>?> genres,
  Value<List<String>?> originCountry,
  Value<DateTime?> premiereDate,
  Value<String?> title,
  Value<RatingDataDto?> tmdbRating,
  Value<int?> userRating,
  Value<bool?> isInWatchlist,
  Value<bool?> isWatched,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
});
typedef $$MoviesTableTableUpdateCompanionBuilder = MoviesTableCompanion
    Function({
  Value<int> id,
  Value<int> tmdbId,
  Value<String?> posterUrl,
  Value<List<MovieGenreDto>?> genres,
  Value<List<String>?> originCountry,
  Value<DateTime?> premiereDate,
  Value<String?> title,
  Value<RatingDataDto?> tmdbRating,
  Value<int?> userRating,
  Value<bool?> isInWatchlist,
  Value<bool?> isWatched,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
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

  ColumnFilters<String> get posterUrl => $composableBuilder(
      column: $table.posterUrl, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<List<MovieGenreDto>?, List<MovieGenreDto>,
          String>
      get genres => $composableBuilder(
          column: $table.genres,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<String>?, List<String>, String>
      get originCountry => $composableBuilder(
          column: $table.originCountry,
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

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));
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

  ColumnOrderings<String> get posterUrl => $composableBuilder(
      column: $table.posterUrl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get genres => $composableBuilder(
      column: $table.genres, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get originCountry => $composableBuilder(
      column: $table.originCountry,
      builder: (column) => ColumnOrderings(column));

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

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
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

  GeneratedColumn<String> get posterUrl =>
      $composableBuilder(column: $table.posterUrl, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<MovieGenreDto>?, String> get genres =>
      $composableBuilder(column: $table.genres, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<String>?, String> get originCountry =>
      $composableBuilder(
          column: $table.originCountry, builder: (column) => column);

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

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
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
            Value<String?> posterUrl = const Value.absent(),
            Value<List<MovieGenreDto>?> genres = const Value.absent(),
            Value<List<String>?> originCountry = const Value.absent(),
            Value<DateTime?> premiereDate = const Value.absent(),
            Value<String?> title = const Value.absent(),
            Value<RatingDataDto?> tmdbRating = const Value.absent(),
            Value<int?> userRating = const Value.absent(),
            Value<bool?> isInWatchlist = const Value.absent(),
            Value<bool?> isWatched = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
          }) =>
              MoviesTableCompanion(
            id: id,
            tmdbId: tmdbId,
            posterUrl: posterUrl,
            genres: genres,
            originCountry: originCountry,
            premiereDate: premiereDate,
            title: title,
            tmdbRating: tmdbRating,
            userRating: userRating,
            isInWatchlist: isInWatchlist,
            isWatched: isWatched,
            createdAt: createdAt,
            updatedAt: updatedAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int tmdbId,
            Value<String?> posterUrl = const Value.absent(),
            Value<List<MovieGenreDto>?> genres = const Value.absent(),
            Value<List<String>?> originCountry = const Value.absent(),
            Value<DateTime?> premiereDate = const Value.absent(),
            Value<String?> title = const Value.absent(),
            Value<RatingDataDto?> tmdbRating = const Value.absent(),
            Value<int?> userRating = const Value.absent(),
            Value<bool?> isInWatchlist = const Value.absent(),
            Value<bool?> isWatched = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
          }) =>
              MoviesTableCompanion.insert(
            id: id,
            tmdbId: tmdbId,
            posterUrl: posterUrl,
            genres: genres,
            originCountry: originCountry,
            premiereDate: premiereDate,
            title: title,
            tmdbRating: tmdbRating,
            userRating: userRating,
            isInWatchlist: isInWatchlist,
            isWatched: isWatched,
            createdAt: createdAt,
            updatedAt: updatedAt,
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
  Value<String?> posterUrl,
  Value<List<SeriesGenreDto>?> genres,
  Value<List<String>?> originCountry,
  Value<DateTime?> premiereDate,
  Value<String?> title,
  Value<RatingDataDto?> tmdbRating,
  Value<int?> userRating,
  Value<bool?> isInWatchlist,
  Value<bool?> isWatched,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
});
typedef $$SeriesTableTableUpdateCompanionBuilder = SeriesTableCompanion
    Function({
  Value<int> id,
  Value<int> tmdbId,
  Value<String?> posterUrl,
  Value<List<SeriesGenreDto>?> genres,
  Value<List<String>?> originCountry,
  Value<DateTime?> premiereDate,
  Value<String?> title,
  Value<RatingDataDto?> tmdbRating,
  Value<int?> userRating,
  Value<bool?> isInWatchlist,
  Value<bool?> isWatched,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
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

  ColumnFilters<String> get posterUrl => $composableBuilder(
      column: $table.posterUrl, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<List<SeriesGenreDto>?, List<SeriesGenreDto>,
          String>
      get genres => $composableBuilder(
          column: $table.genres,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<String>?, List<String>, String>
      get originCountry => $composableBuilder(
          column: $table.originCountry,
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

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));
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

  ColumnOrderings<String> get posterUrl => $composableBuilder(
      column: $table.posterUrl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get genres => $composableBuilder(
      column: $table.genres, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get originCountry => $composableBuilder(
      column: $table.originCountry,
      builder: (column) => ColumnOrderings(column));

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

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
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

  GeneratedColumn<String> get posterUrl =>
      $composableBuilder(column: $table.posterUrl, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<SeriesGenreDto>?, String> get genres =>
      $composableBuilder(column: $table.genres, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<String>?, String> get originCountry =>
      $composableBuilder(
          column: $table.originCountry, builder: (column) => column);

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

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
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
            Value<String?> posterUrl = const Value.absent(),
            Value<List<SeriesGenreDto>?> genres = const Value.absent(),
            Value<List<String>?> originCountry = const Value.absent(),
            Value<DateTime?> premiereDate = const Value.absent(),
            Value<String?> title = const Value.absent(),
            Value<RatingDataDto?> tmdbRating = const Value.absent(),
            Value<int?> userRating = const Value.absent(),
            Value<bool?> isInWatchlist = const Value.absent(),
            Value<bool?> isWatched = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
          }) =>
              SeriesTableCompanion(
            id: id,
            tmdbId: tmdbId,
            posterUrl: posterUrl,
            genres: genres,
            originCountry: originCountry,
            premiereDate: premiereDate,
            title: title,
            tmdbRating: tmdbRating,
            userRating: userRating,
            isInWatchlist: isInWatchlist,
            isWatched: isWatched,
            createdAt: createdAt,
            updatedAt: updatedAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int tmdbId,
            Value<String?> posterUrl = const Value.absent(),
            Value<List<SeriesGenreDto>?> genres = const Value.absent(),
            Value<List<String>?> originCountry = const Value.absent(),
            Value<DateTime?> premiereDate = const Value.absent(),
            Value<String?> title = const Value.absent(),
            Value<RatingDataDto?> tmdbRating = const Value.absent(),
            Value<int?> userRating = const Value.absent(),
            Value<bool?> isInWatchlist = const Value.absent(),
            Value<bool?> isWatched = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
          }) =>
              SeriesTableCompanion.insert(
            id: id,
            tmdbId: tmdbId,
            posterUrl: posterUrl,
            genres: genres,
            originCountry: originCountry,
            premiereDate: premiereDate,
            title: title,
            tmdbRating: tmdbRating,
            userRating: userRating,
            isInWatchlist: isInWatchlist,
            isWatched: isWatched,
            createdAt: createdAt,
            updatedAt: updatedAt,
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
typedef $$SyncUserTableTableCreateCompanionBuilder = SyncUserTableCompanion
    Function({
  Value<int> id,
  required String uid,
  required String email,
});
typedef $$SyncUserTableTableUpdateCompanionBuilder = SyncUserTableCompanion
    Function({
  Value<int> id,
  Value<String> uid,
  Value<String> email,
});

class $$SyncUserTableTableFilterComposer
    extends Composer<_$AppLocalDatabase, $SyncUserTableTable> {
  $$SyncUserTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get uid => $composableBuilder(
      column: $table.uid, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));
}

class $$SyncUserTableTableOrderingComposer
    extends Composer<_$AppLocalDatabase, $SyncUserTableTable> {
  $$SyncUserTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get uid => $composableBuilder(
      column: $table.uid, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));
}

class $$SyncUserTableTableAnnotationComposer
    extends Composer<_$AppLocalDatabase, $SyncUserTableTable> {
  $$SyncUserTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get uid =>
      $composableBuilder(column: $table.uid, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);
}

class $$SyncUserTableTableTableManager extends RootTableManager<
    _$AppLocalDatabase,
    $SyncUserTableTable,
    SyncUserTableData,
    $$SyncUserTableTableFilterComposer,
    $$SyncUserTableTableOrderingComposer,
    $$SyncUserTableTableAnnotationComposer,
    $$SyncUserTableTableCreateCompanionBuilder,
    $$SyncUserTableTableUpdateCompanionBuilder,
    (
      SyncUserTableData,
      BaseReferences<_$AppLocalDatabase, $SyncUserTableTable, SyncUserTableData>
    ),
    SyncUserTableData,
    PrefetchHooks Function()> {
  $$SyncUserTableTableTableManager(
      _$AppLocalDatabase db, $SyncUserTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SyncUserTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SyncUserTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SyncUserTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> uid = const Value.absent(),
            Value<String> email = const Value.absent(),
          }) =>
              SyncUserTableCompanion(
            id: id,
            uid: uid,
            email: email,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String uid,
            required String email,
          }) =>
              SyncUserTableCompanion.insert(
            id: id,
            uid: uid,
            email: email,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SyncUserTableTableProcessedTableManager = ProcessedTableManager<
    _$AppLocalDatabase,
    $SyncUserTableTable,
    SyncUserTableData,
    $$SyncUserTableTableFilterComposer,
    $$SyncUserTableTableOrderingComposer,
    $$SyncUserTableTableAnnotationComposer,
    $$SyncUserTableTableCreateCompanionBuilder,
    $$SyncUserTableTableUpdateCompanionBuilder,
    (
      SyncUserTableData,
      BaseReferences<_$AppLocalDatabase, $SyncUserTableTable, SyncUserTableData>
    ),
    SyncUserTableData,
    PrefetchHooks Function()>;

class $AppLocalDatabaseManager {
  final _$AppLocalDatabase _db;
  $AppLocalDatabaseManager(this._db);
  $$MoviesTableTableTableManager get moviesTable =>
      $$MoviesTableTableTableManager(_db, _db.moviesTable);
  $$SeriesTableTableTableManager get seriesTable =>
      $$SeriesTableTableTableManager(_db, _db.seriesTable);
  $$SyncUserTableTableTableManager get syncUserTable =>
      $$SyncUserTableTableTableManager(_db, _db.syncUserTable);
}
