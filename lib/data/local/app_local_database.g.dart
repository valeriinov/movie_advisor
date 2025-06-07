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
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _tmdbIdMeta = const VerificationMeta('tmdbId');
  @override
  late final GeneratedColumn<int> tmdbId = GeneratedColumn<int>(
    'tmdb_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  @override
  late final GeneratedColumnWithTypeConverter<List<MovieGenreDto>?, String>
  genres = GeneratedColumn<String>(
    'genres',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  ).withConverter<List<MovieGenreDto>?>($MoviesTableTable.$convertergenresn);
  @override
  late final GeneratedColumnWithTypeConverter<List<CountryDto>?, String>
  originCountry =
      GeneratedColumn<String>(
        'origin_country',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<List<CountryDto>?>(
        $MoviesTableTable.$converteroriginCountryn,
      );
  static const VerificationMeta _premiereDateMeta = const VerificationMeta(
    'premiereDate',
  );
  @override
  late final GeneratedColumn<DateTime> premiereDate = GeneratedColumn<DateTime>(
    'premiere_date',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  late final GeneratedColumnWithTypeConverter<RatingDataDto?, String>
  tmdbRating = GeneratedColumn<String>(
    'tmdb_rating',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  ).withConverter<RatingDataDto?>($MoviesTableTable.$convertertmdbRatingn);
  static const VerificationMeta _userRatingMeta = const VerificationMeta(
    'userRating',
  );
  @override
  late final GeneratedColumn<int> userRating = GeneratedColumn<int>(
    'user_rating',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isInWatchlistMeta = const VerificationMeta(
    'isInWatchlist',
  );
  @override
  late final GeneratedColumn<bool> isInWatchlist = GeneratedColumn<bool>(
    'is_in_watchlist',
    aliasedName,
    true,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_in_watchlist" IN (0, 1))',
    ),
  );
  static const VerificationMeta _isWatchedMeta = const VerificationMeta(
    'isWatched',
  );
  @override
  late final GeneratedColumn<bool> isWatched = GeneratedColumn<bool>(
    'is_watched',
    aliasedName,
    true,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_watched" IN (0, 1))',
    ),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _watchlistAddedAtMeta = const VerificationMeta(
    'watchlistAddedAt',
  );
  @override
  late final GeneratedColumn<DateTime> watchlistAddedAt =
      GeneratedColumn<DateTime>(
        'watchlist_added_at',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _lastWatchedAtMeta = const VerificationMeta(
    'lastWatchedAt',
  );
  @override
  late final GeneratedColumn<DateTime> lastWatchedAt =
      GeneratedColumn<DateTime>(
        'last_watched_at',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  @override
  late final GeneratedColumnWithTypeConverter<LocalizedString?, String>
  localizedTitle =
      GeneratedColumn<String>(
        'localized_title',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<LocalizedString?>(
        $MoviesTableTable.$converterlocalizedTitlen,
      );
  @override
  late final GeneratedColumnWithTypeConverter<LocalizedString?, String>
  localizedPosterUrl =
      GeneratedColumn<String>(
        'localized_poster_url',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<LocalizedString?>(
        $MoviesTableTable.$converterlocalizedPosterUrln,
      );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    tmdbId,
    genres,
    originCountry,
    premiereDate,
    tmdbRating,
    userRating,
    isInWatchlist,
    isWatched,
    createdAt,
    updatedAt,
    watchlistAddedAt,
    lastWatchedAt,
    localizedTitle,
    localizedPosterUrl,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'movies_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<MoviesTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('tmdb_id')) {
      context.handle(
        _tmdbIdMeta,
        tmdbId.isAcceptableOrUnknown(data['tmdb_id']!, _tmdbIdMeta),
      );
    } else if (isInserting) {
      context.missing(_tmdbIdMeta);
    }
    if (data.containsKey('premiere_date')) {
      context.handle(
        _premiereDateMeta,
        premiereDate.isAcceptableOrUnknown(
          data['premiere_date']!,
          _premiereDateMeta,
        ),
      );
    }
    if (data.containsKey('user_rating')) {
      context.handle(
        _userRatingMeta,
        userRating.isAcceptableOrUnknown(data['user_rating']!, _userRatingMeta),
      );
    }
    if (data.containsKey('is_in_watchlist')) {
      context.handle(
        _isInWatchlistMeta,
        isInWatchlist.isAcceptableOrUnknown(
          data['is_in_watchlist']!,
          _isInWatchlistMeta,
        ),
      );
    }
    if (data.containsKey('is_watched')) {
      context.handle(
        _isWatchedMeta,
        isWatched.isAcceptableOrUnknown(data['is_watched']!, _isWatchedMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('watchlist_added_at')) {
      context.handle(
        _watchlistAddedAtMeta,
        watchlistAddedAt.isAcceptableOrUnknown(
          data['watchlist_added_at']!,
          _watchlistAddedAtMeta,
        ),
      );
    }
    if (data.containsKey('last_watched_at')) {
      context.handle(
        _lastWatchedAtMeta,
        lastWatchedAt.isAcceptableOrUnknown(
          data['last_watched_at']!,
          _lastWatchedAtMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MoviesTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MoviesTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      tmdbId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}tmdb_id'],
      )!,
      genres: $MoviesTableTable.$convertergenresn.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}genres'],
        ),
      ),
      originCountry: $MoviesTableTable.$converteroriginCountryn.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}origin_country'],
        ),
      ),
      premiereDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}premiere_date'],
      ),
      tmdbRating: $MoviesTableTable.$convertertmdbRatingn.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}tmdb_rating'],
        ),
      ),
      userRating: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}user_rating'],
      ),
      isInWatchlist: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_in_watchlist'],
      ),
      isWatched: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_watched'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      watchlistAddedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}watchlist_added_at'],
      ),
      lastWatchedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_watched_at'],
      ),
      localizedTitle: $MoviesTableTable.$converterlocalizedTitlen.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}localized_title'],
        ),
      ),
      localizedPosterUrl: $MoviesTableTable.$converterlocalizedPosterUrln
          .fromSql(
            attachedDatabase.typeMapping.read(
              DriftSqlType.string,
              data['${effectivePrefix}localized_poster_url'],
            ),
          ),
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
  static TypeConverter<List<CountryDto>, String> $converteroriginCountry =
      countryConverter;
  static TypeConverter<List<CountryDto>?, String?> $converteroriginCountryn =
      NullAwareTypeConverter.wrap($converteroriginCountry);
  static TypeConverter<RatingDataDto, String> $convertertmdbRating =
      ratingConverter;
  static TypeConverter<RatingDataDto?, String?> $convertertmdbRatingn =
      NullAwareTypeConverter.wrap($convertertmdbRating);
  static TypeConverter<LocalizedString, String> $converterlocalizedTitle =
      localizedStringConverter;
  static TypeConverter<LocalizedString?, String?> $converterlocalizedTitlen =
      NullAwareTypeConverter.wrap($converterlocalizedTitle);
  static TypeConverter<LocalizedString, String> $converterlocalizedPosterUrl =
      localizedStringConverter;
  static TypeConverter<LocalizedString?, String?>
  $converterlocalizedPosterUrln = NullAwareTypeConverter.wrap(
    $converterlocalizedPosterUrl,
  );
}

class MoviesTableData extends DataClass implements Insertable<MoviesTableData> {
  final int id;
  final int tmdbId;
  final List<MovieGenreDto>? genres;
  final List<CountryDto>? originCountry;
  final DateTime? premiereDate;
  final RatingDataDto? tmdbRating;
  final int? userRating;
  final bool? isInWatchlist;
  final bool? isWatched;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? watchlistAddedAt;
  final DateTime? lastWatchedAt;
  final LocalizedString? localizedTitle;
  final LocalizedString? localizedPosterUrl;
  const MoviesTableData({
    required this.id,
    required this.tmdbId,
    this.genres,
    this.originCountry,
    this.premiereDate,
    this.tmdbRating,
    this.userRating,
    this.isInWatchlist,
    this.isWatched,
    required this.createdAt,
    required this.updatedAt,
    this.watchlistAddedAt,
    this.lastWatchedAt,
    this.localizedTitle,
    this.localizedPosterUrl,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['tmdb_id'] = Variable<int>(tmdbId);
    if (!nullToAbsent || genres != null) {
      map['genres'] = Variable<String>(
        $MoviesTableTable.$convertergenresn.toSql(genres),
      );
    }
    if (!nullToAbsent || originCountry != null) {
      map['origin_country'] = Variable<String>(
        $MoviesTableTable.$converteroriginCountryn.toSql(originCountry),
      );
    }
    if (!nullToAbsent || premiereDate != null) {
      map['premiere_date'] = Variable<DateTime>(premiereDate);
    }
    if (!nullToAbsent || tmdbRating != null) {
      map['tmdb_rating'] = Variable<String>(
        $MoviesTableTable.$convertertmdbRatingn.toSql(tmdbRating),
      );
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
    if (!nullToAbsent || watchlistAddedAt != null) {
      map['watchlist_added_at'] = Variable<DateTime>(watchlistAddedAt);
    }
    if (!nullToAbsent || lastWatchedAt != null) {
      map['last_watched_at'] = Variable<DateTime>(lastWatchedAt);
    }
    if (!nullToAbsent || localizedTitle != null) {
      map['localized_title'] = Variable<String>(
        $MoviesTableTable.$converterlocalizedTitlen.toSql(localizedTitle),
      );
    }
    if (!nullToAbsent || localizedPosterUrl != null) {
      map['localized_poster_url'] = Variable<String>(
        $MoviesTableTable.$converterlocalizedPosterUrln.toSql(
          localizedPosterUrl,
        ),
      );
    }
    return map;
  }

  MoviesTableCompanion toCompanion(bool nullToAbsent) {
    return MoviesTableCompanion(
      id: Value(id),
      tmdbId: Value(tmdbId),
      genres: genres == null && nullToAbsent
          ? const Value.absent()
          : Value(genres),
      originCountry: originCountry == null && nullToAbsent
          ? const Value.absent()
          : Value(originCountry),
      premiereDate: premiereDate == null && nullToAbsent
          ? const Value.absent()
          : Value(premiereDate),
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
      watchlistAddedAt: watchlistAddedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(watchlistAddedAt),
      lastWatchedAt: lastWatchedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastWatchedAt),
      localizedTitle: localizedTitle == null && nullToAbsent
          ? const Value.absent()
          : Value(localizedTitle),
      localizedPosterUrl: localizedPosterUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(localizedPosterUrl),
    );
  }

  factory MoviesTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MoviesTableData(
      id: serializer.fromJson<int>(json['id']),
      tmdbId: serializer.fromJson<int>(json['tmdbId']),
      genres: serializer.fromJson<List<MovieGenreDto>?>(json['genres']),
      originCountry: serializer.fromJson<List<CountryDto>?>(
        json['originCountry'],
      ),
      premiereDate: serializer.fromJson<DateTime?>(json['premiereDate']),
      tmdbRating: serializer.fromJson<RatingDataDto?>(json['tmdbRating']),
      userRating: serializer.fromJson<int?>(json['userRating']),
      isInWatchlist: serializer.fromJson<bool?>(json['isInWatchlist']),
      isWatched: serializer.fromJson<bool?>(json['isWatched']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      watchlistAddedAt: serializer.fromJson<DateTime?>(
        json['watchlistAddedAt'],
      ),
      lastWatchedAt: serializer.fromJson<DateTime?>(json['lastWatchedAt']),
      localizedTitle: serializer.fromJson<LocalizedString?>(
        json['localizedTitle'],
      ),
      localizedPosterUrl: serializer.fromJson<LocalizedString?>(
        json['localizedPosterUrl'],
      ),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'tmdbId': serializer.toJson<int>(tmdbId),
      'genres': serializer.toJson<List<MovieGenreDto>?>(genres),
      'originCountry': serializer.toJson<List<CountryDto>?>(originCountry),
      'premiereDate': serializer.toJson<DateTime?>(premiereDate),
      'tmdbRating': serializer.toJson<RatingDataDto?>(tmdbRating),
      'userRating': serializer.toJson<int?>(userRating),
      'isInWatchlist': serializer.toJson<bool?>(isInWatchlist),
      'isWatched': serializer.toJson<bool?>(isWatched),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'watchlistAddedAt': serializer.toJson<DateTime?>(watchlistAddedAt),
      'lastWatchedAt': serializer.toJson<DateTime?>(lastWatchedAt),
      'localizedTitle': serializer.toJson<LocalizedString?>(localizedTitle),
      'localizedPosterUrl': serializer.toJson<LocalizedString?>(
        localizedPosterUrl,
      ),
    };
  }

  MoviesTableData copyWith({
    int? id,
    int? tmdbId,
    Value<List<MovieGenreDto>?> genres = const Value.absent(),
    Value<List<CountryDto>?> originCountry = const Value.absent(),
    Value<DateTime?> premiereDate = const Value.absent(),
    Value<RatingDataDto?> tmdbRating = const Value.absent(),
    Value<int?> userRating = const Value.absent(),
    Value<bool?> isInWatchlist = const Value.absent(),
    Value<bool?> isWatched = const Value.absent(),
    DateTime? createdAt,
    DateTime? updatedAt,
    Value<DateTime?> watchlistAddedAt = const Value.absent(),
    Value<DateTime?> lastWatchedAt = const Value.absent(),
    Value<LocalizedString?> localizedTitle = const Value.absent(),
    Value<LocalizedString?> localizedPosterUrl = const Value.absent(),
  }) => MoviesTableData(
    id: id ?? this.id,
    tmdbId: tmdbId ?? this.tmdbId,
    genres: genres.present ? genres.value : this.genres,
    originCountry: originCountry.present
        ? originCountry.value
        : this.originCountry,
    premiereDate: premiereDate.present ? premiereDate.value : this.premiereDate,
    tmdbRating: tmdbRating.present ? tmdbRating.value : this.tmdbRating,
    userRating: userRating.present ? userRating.value : this.userRating,
    isInWatchlist: isInWatchlist.present
        ? isInWatchlist.value
        : this.isInWatchlist,
    isWatched: isWatched.present ? isWatched.value : this.isWatched,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    watchlistAddedAt: watchlistAddedAt.present
        ? watchlistAddedAt.value
        : this.watchlistAddedAt,
    lastWatchedAt: lastWatchedAt.present
        ? lastWatchedAt.value
        : this.lastWatchedAt,
    localizedTitle: localizedTitle.present
        ? localizedTitle.value
        : this.localizedTitle,
    localizedPosterUrl: localizedPosterUrl.present
        ? localizedPosterUrl.value
        : this.localizedPosterUrl,
  );
  MoviesTableData copyWithCompanion(MoviesTableCompanion data) {
    return MoviesTableData(
      id: data.id.present ? data.id.value : this.id,
      tmdbId: data.tmdbId.present ? data.tmdbId.value : this.tmdbId,
      genres: data.genres.present ? data.genres.value : this.genres,
      originCountry: data.originCountry.present
          ? data.originCountry.value
          : this.originCountry,
      premiereDate: data.premiereDate.present
          ? data.premiereDate.value
          : this.premiereDate,
      tmdbRating: data.tmdbRating.present
          ? data.tmdbRating.value
          : this.tmdbRating,
      userRating: data.userRating.present
          ? data.userRating.value
          : this.userRating,
      isInWatchlist: data.isInWatchlist.present
          ? data.isInWatchlist.value
          : this.isInWatchlist,
      isWatched: data.isWatched.present ? data.isWatched.value : this.isWatched,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      watchlistAddedAt: data.watchlistAddedAt.present
          ? data.watchlistAddedAt.value
          : this.watchlistAddedAt,
      lastWatchedAt: data.lastWatchedAt.present
          ? data.lastWatchedAt.value
          : this.lastWatchedAt,
      localizedTitle: data.localizedTitle.present
          ? data.localizedTitle.value
          : this.localizedTitle,
      localizedPosterUrl: data.localizedPosterUrl.present
          ? data.localizedPosterUrl.value
          : this.localizedPosterUrl,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MoviesTableData(')
          ..write('id: $id, ')
          ..write('tmdbId: $tmdbId, ')
          ..write('genres: $genres, ')
          ..write('originCountry: $originCountry, ')
          ..write('premiereDate: $premiereDate, ')
          ..write('tmdbRating: $tmdbRating, ')
          ..write('userRating: $userRating, ')
          ..write('isInWatchlist: $isInWatchlist, ')
          ..write('isWatched: $isWatched, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('watchlistAddedAt: $watchlistAddedAt, ')
          ..write('lastWatchedAt: $lastWatchedAt, ')
          ..write('localizedTitle: $localizedTitle, ')
          ..write('localizedPosterUrl: $localizedPosterUrl')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    tmdbId,
    genres,
    originCountry,
    premiereDate,
    tmdbRating,
    userRating,
    isInWatchlist,
    isWatched,
    createdAt,
    updatedAt,
    watchlistAddedAt,
    lastWatchedAt,
    localizedTitle,
    localizedPosterUrl,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MoviesTableData &&
          other.id == this.id &&
          other.tmdbId == this.tmdbId &&
          other.genres == this.genres &&
          other.originCountry == this.originCountry &&
          other.premiereDate == this.premiereDate &&
          other.tmdbRating == this.tmdbRating &&
          other.userRating == this.userRating &&
          other.isInWatchlist == this.isInWatchlist &&
          other.isWatched == this.isWatched &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.watchlistAddedAt == this.watchlistAddedAt &&
          other.lastWatchedAt == this.lastWatchedAt &&
          other.localizedTitle == this.localizedTitle &&
          other.localizedPosterUrl == this.localizedPosterUrl);
}

class MoviesTableCompanion extends UpdateCompanion<MoviesTableData> {
  final Value<int> id;
  final Value<int> tmdbId;
  final Value<List<MovieGenreDto>?> genres;
  final Value<List<CountryDto>?> originCountry;
  final Value<DateTime?> premiereDate;
  final Value<RatingDataDto?> tmdbRating;
  final Value<int?> userRating;
  final Value<bool?> isInWatchlist;
  final Value<bool?> isWatched;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime?> watchlistAddedAt;
  final Value<DateTime?> lastWatchedAt;
  final Value<LocalizedString?> localizedTitle;
  final Value<LocalizedString?> localizedPosterUrl;
  const MoviesTableCompanion({
    this.id = const Value.absent(),
    this.tmdbId = const Value.absent(),
    this.genres = const Value.absent(),
    this.originCountry = const Value.absent(),
    this.premiereDate = const Value.absent(),
    this.tmdbRating = const Value.absent(),
    this.userRating = const Value.absent(),
    this.isInWatchlist = const Value.absent(),
    this.isWatched = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.watchlistAddedAt = const Value.absent(),
    this.lastWatchedAt = const Value.absent(),
    this.localizedTitle = const Value.absent(),
    this.localizedPosterUrl = const Value.absent(),
  });
  MoviesTableCompanion.insert({
    this.id = const Value.absent(),
    required int tmdbId,
    this.genres = const Value.absent(),
    this.originCountry = const Value.absent(),
    this.premiereDate = const Value.absent(),
    this.tmdbRating = const Value.absent(),
    this.userRating = const Value.absent(),
    this.isInWatchlist = const Value.absent(),
    this.isWatched = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.watchlistAddedAt = const Value.absent(),
    this.lastWatchedAt = const Value.absent(),
    this.localizedTitle = const Value.absent(),
    this.localizedPosterUrl = const Value.absent(),
  }) : tmdbId = Value(tmdbId);
  static Insertable<MoviesTableData> custom({
    Expression<int>? id,
    Expression<int>? tmdbId,
    Expression<String>? genres,
    Expression<String>? originCountry,
    Expression<DateTime>? premiereDate,
    Expression<String>? tmdbRating,
    Expression<int>? userRating,
    Expression<bool>? isInWatchlist,
    Expression<bool>? isWatched,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? watchlistAddedAt,
    Expression<DateTime>? lastWatchedAt,
    Expression<String>? localizedTitle,
    Expression<String>? localizedPosterUrl,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (tmdbId != null) 'tmdb_id': tmdbId,
      if (genres != null) 'genres': genres,
      if (originCountry != null) 'origin_country': originCountry,
      if (premiereDate != null) 'premiere_date': premiereDate,
      if (tmdbRating != null) 'tmdb_rating': tmdbRating,
      if (userRating != null) 'user_rating': userRating,
      if (isInWatchlist != null) 'is_in_watchlist': isInWatchlist,
      if (isWatched != null) 'is_watched': isWatched,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (watchlistAddedAt != null) 'watchlist_added_at': watchlistAddedAt,
      if (lastWatchedAt != null) 'last_watched_at': lastWatchedAt,
      if (localizedTitle != null) 'localized_title': localizedTitle,
      if (localizedPosterUrl != null)
        'localized_poster_url': localizedPosterUrl,
    });
  }

  MoviesTableCompanion copyWith({
    Value<int>? id,
    Value<int>? tmdbId,
    Value<List<MovieGenreDto>?>? genres,
    Value<List<CountryDto>?>? originCountry,
    Value<DateTime?>? premiereDate,
    Value<RatingDataDto?>? tmdbRating,
    Value<int?>? userRating,
    Value<bool?>? isInWatchlist,
    Value<bool?>? isWatched,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<DateTime?>? watchlistAddedAt,
    Value<DateTime?>? lastWatchedAt,
    Value<LocalizedString?>? localizedTitle,
    Value<LocalizedString?>? localizedPosterUrl,
  }) {
    return MoviesTableCompanion(
      id: id ?? this.id,
      tmdbId: tmdbId ?? this.tmdbId,
      genres: genres ?? this.genres,
      originCountry: originCountry ?? this.originCountry,
      premiereDate: premiereDate ?? this.premiereDate,
      tmdbRating: tmdbRating ?? this.tmdbRating,
      userRating: userRating ?? this.userRating,
      isInWatchlist: isInWatchlist ?? this.isInWatchlist,
      isWatched: isWatched ?? this.isWatched,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      watchlistAddedAt: watchlistAddedAt ?? this.watchlistAddedAt,
      lastWatchedAt: lastWatchedAt ?? this.lastWatchedAt,
      localizedTitle: localizedTitle ?? this.localizedTitle,
      localizedPosterUrl: localizedPosterUrl ?? this.localizedPosterUrl,
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
        $MoviesTableTable.$convertergenresn.toSql(genres.value),
      );
    }
    if (originCountry.present) {
      map['origin_country'] = Variable<String>(
        $MoviesTableTable.$converteroriginCountryn.toSql(originCountry.value),
      );
    }
    if (premiereDate.present) {
      map['premiere_date'] = Variable<DateTime>(premiereDate.value);
    }
    if (tmdbRating.present) {
      map['tmdb_rating'] = Variable<String>(
        $MoviesTableTable.$convertertmdbRatingn.toSql(tmdbRating.value),
      );
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
    if (watchlistAddedAt.present) {
      map['watchlist_added_at'] = Variable<DateTime>(watchlistAddedAt.value);
    }
    if (lastWatchedAt.present) {
      map['last_watched_at'] = Variable<DateTime>(lastWatchedAt.value);
    }
    if (localizedTitle.present) {
      map['localized_title'] = Variable<String>(
        $MoviesTableTable.$converterlocalizedTitlen.toSql(localizedTitle.value),
      );
    }
    if (localizedPosterUrl.present) {
      map['localized_poster_url'] = Variable<String>(
        $MoviesTableTable.$converterlocalizedPosterUrln.toSql(
          localizedPosterUrl.value,
        ),
      );
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoviesTableCompanion(')
          ..write('id: $id, ')
          ..write('tmdbId: $tmdbId, ')
          ..write('genres: $genres, ')
          ..write('originCountry: $originCountry, ')
          ..write('premiereDate: $premiereDate, ')
          ..write('tmdbRating: $tmdbRating, ')
          ..write('userRating: $userRating, ')
          ..write('isInWatchlist: $isInWatchlist, ')
          ..write('isWatched: $isWatched, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('watchlistAddedAt: $watchlistAddedAt, ')
          ..write('lastWatchedAt: $lastWatchedAt, ')
          ..write('localizedTitle: $localizedTitle, ')
          ..write('localizedPosterUrl: $localizedPosterUrl')
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
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _tmdbIdMeta = const VerificationMeta('tmdbId');
  @override
  late final GeneratedColumn<int> tmdbId = GeneratedColumn<int>(
    'tmdb_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _posterUrlMeta = const VerificationMeta(
    'posterUrl',
  );
  @override
  late final GeneratedColumn<String> posterUrl = GeneratedColumn<String>(
    'poster_url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  late final GeneratedColumnWithTypeConverter<List<SeriesGenreDto>?, String>
  genres = GeneratedColumn<String>(
    'genres',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  ).withConverter<List<SeriesGenreDto>?>($SeriesTableTable.$convertergenresn);
  @override
  late final GeneratedColumnWithTypeConverter<List<CountryDto>?, String>
  originCountry =
      GeneratedColumn<String>(
        'origin_country',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<List<CountryDto>?>(
        $SeriesTableTable.$converteroriginCountryn,
      );
  static const VerificationMeta _premiereDateMeta = const VerificationMeta(
    'premiereDate',
  );
  @override
  late final GeneratedColumn<DateTime> premiereDate = GeneratedColumn<DateTime>(
    'premiere_date',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  late final GeneratedColumnWithTypeConverter<RatingDataDto?, String>
  tmdbRating = GeneratedColumn<String>(
    'tmdb_rating',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  ).withConverter<RatingDataDto?>($SeriesTableTable.$convertertmdbRatingn);
  static const VerificationMeta _userRatingMeta = const VerificationMeta(
    'userRating',
  );
  @override
  late final GeneratedColumn<int> userRating = GeneratedColumn<int>(
    'user_rating',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isInWatchlistMeta = const VerificationMeta(
    'isInWatchlist',
  );
  @override
  late final GeneratedColumn<bool> isInWatchlist = GeneratedColumn<bool>(
    'is_in_watchlist',
    aliasedName,
    true,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_in_watchlist" IN (0, 1))',
    ),
  );
  static const VerificationMeta _isWatchedMeta = const VerificationMeta(
    'isWatched',
  );
  @override
  late final GeneratedColumn<bool> isWatched = GeneratedColumn<bool>(
    'is_watched',
    aliasedName,
    true,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_watched" IN (0, 1))',
    ),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _watchlistAddedAtMeta = const VerificationMeta(
    'watchlistAddedAt',
  );
  @override
  late final GeneratedColumn<DateTime> watchlistAddedAt =
      GeneratedColumn<DateTime>(
        'watchlist_added_at',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _lastWatchedAtMeta = const VerificationMeta(
    'lastWatchedAt',
  );
  @override
  late final GeneratedColumn<DateTime> lastWatchedAt =
      GeneratedColumn<DateTime>(
        'last_watched_at',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  @override
  late final GeneratedColumnWithTypeConverter<LocalizedString?, String>
  localizedTitle =
      GeneratedColumn<String>(
        'localized_title',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<LocalizedString?>(
        $SeriesTableTable.$converterlocalizedTitlen,
      );
  @override
  late final GeneratedColumnWithTypeConverter<LocalizedString?, String>
  localizedPosterUrl =
      GeneratedColumn<String>(
        'localized_poster_url',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<LocalizedString?>(
        $SeriesTableTable.$converterlocalizedPosterUrln,
      );
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
    updatedAt,
    watchlistAddedAt,
    lastWatchedAt,
    localizedTitle,
    localizedPosterUrl,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'series_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<SeriesTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('tmdb_id')) {
      context.handle(
        _tmdbIdMeta,
        tmdbId.isAcceptableOrUnknown(data['tmdb_id']!, _tmdbIdMeta),
      );
    } else if (isInserting) {
      context.missing(_tmdbIdMeta);
    }
    if (data.containsKey('poster_url')) {
      context.handle(
        _posterUrlMeta,
        posterUrl.isAcceptableOrUnknown(data['poster_url']!, _posterUrlMeta),
      );
    }
    if (data.containsKey('premiere_date')) {
      context.handle(
        _premiereDateMeta,
        premiereDate.isAcceptableOrUnknown(
          data['premiere_date']!,
          _premiereDateMeta,
        ),
      );
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    }
    if (data.containsKey('user_rating')) {
      context.handle(
        _userRatingMeta,
        userRating.isAcceptableOrUnknown(data['user_rating']!, _userRatingMeta),
      );
    }
    if (data.containsKey('is_in_watchlist')) {
      context.handle(
        _isInWatchlistMeta,
        isInWatchlist.isAcceptableOrUnknown(
          data['is_in_watchlist']!,
          _isInWatchlistMeta,
        ),
      );
    }
    if (data.containsKey('is_watched')) {
      context.handle(
        _isWatchedMeta,
        isWatched.isAcceptableOrUnknown(data['is_watched']!, _isWatchedMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('watchlist_added_at')) {
      context.handle(
        _watchlistAddedAtMeta,
        watchlistAddedAt.isAcceptableOrUnknown(
          data['watchlist_added_at']!,
          _watchlistAddedAtMeta,
        ),
      );
    }
    if (data.containsKey('last_watched_at')) {
      context.handle(
        _lastWatchedAtMeta,
        lastWatchedAt.isAcceptableOrUnknown(
          data['last_watched_at']!,
          _lastWatchedAtMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SeriesTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SeriesTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      tmdbId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}tmdb_id'],
      )!,
      posterUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}poster_url'],
      ),
      genres: $SeriesTableTable.$convertergenresn.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}genres'],
        ),
      ),
      originCountry: $SeriesTableTable.$converteroriginCountryn.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}origin_country'],
        ),
      ),
      premiereDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}premiere_date'],
      ),
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      ),
      tmdbRating: $SeriesTableTable.$convertertmdbRatingn.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}tmdb_rating'],
        ),
      ),
      userRating: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}user_rating'],
      ),
      isInWatchlist: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_in_watchlist'],
      ),
      isWatched: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_watched'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      watchlistAddedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}watchlist_added_at'],
      ),
      lastWatchedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_watched_at'],
      ),
      localizedTitle: $SeriesTableTable.$converterlocalizedTitlen.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}localized_title'],
        ),
      ),
      localizedPosterUrl: $SeriesTableTable.$converterlocalizedPosterUrln
          .fromSql(
            attachedDatabase.typeMapping.read(
              DriftSqlType.string,
              data['${effectivePrefix}localized_poster_url'],
            ),
          ),
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
  static TypeConverter<List<CountryDto>, String> $converteroriginCountry =
      countryConverter;
  static TypeConverter<List<CountryDto>?, String?> $converteroriginCountryn =
      NullAwareTypeConverter.wrap($converteroriginCountry);
  static TypeConverter<RatingDataDto, String> $convertertmdbRating =
      ratingConverter;
  static TypeConverter<RatingDataDto?, String?> $convertertmdbRatingn =
      NullAwareTypeConverter.wrap($convertertmdbRating);
  static TypeConverter<LocalizedString, String> $converterlocalizedTitle =
      localizedStringConverter;
  static TypeConverter<LocalizedString?, String?> $converterlocalizedTitlen =
      NullAwareTypeConverter.wrap($converterlocalizedTitle);
  static TypeConverter<LocalizedString, String> $converterlocalizedPosterUrl =
      localizedStringConverter;
  static TypeConverter<LocalizedString?, String?>
  $converterlocalizedPosterUrln = NullAwareTypeConverter.wrap(
    $converterlocalizedPosterUrl,
  );
}

class SeriesTableData extends DataClass implements Insertable<SeriesTableData> {
  final int id;
  final int tmdbId;
  final String? posterUrl;
  final List<SeriesGenreDto>? genres;
  final List<CountryDto>? originCountry;
  final DateTime? premiereDate;
  final String? title;
  final RatingDataDto? tmdbRating;
  final int? userRating;
  final bool? isInWatchlist;
  final bool? isWatched;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? watchlistAddedAt;
  final DateTime? lastWatchedAt;
  final LocalizedString? localizedTitle;
  final LocalizedString? localizedPosterUrl;
  const SeriesTableData({
    required this.id,
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
    required this.updatedAt,
    this.watchlistAddedAt,
    this.lastWatchedAt,
    this.localizedTitle,
    this.localizedPosterUrl,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['tmdb_id'] = Variable<int>(tmdbId);
    if (!nullToAbsent || posterUrl != null) {
      map['poster_url'] = Variable<String>(posterUrl);
    }
    if (!nullToAbsent || genres != null) {
      map['genres'] = Variable<String>(
        $SeriesTableTable.$convertergenresn.toSql(genres),
      );
    }
    if (!nullToAbsent || originCountry != null) {
      map['origin_country'] = Variable<String>(
        $SeriesTableTable.$converteroriginCountryn.toSql(originCountry),
      );
    }
    if (!nullToAbsent || premiereDate != null) {
      map['premiere_date'] = Variable<DateTime>(premiereDate);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || tmdbRating != null) {
      map['tmdb_rating'] = Variable<String>(
        $SeriesTableTable.$convertertmdbRatingn.toSql(tmdbRating),
      );
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
    if (!nullToAbsent || watchlistAddedAt != null) {
      map['watchlist_added_at'] = Variable<DateTime>(watchlistAddedAt);
    }
    if (!nullToAbsent || lastWatchedAt != null) {
      map['last_watched_at'] = Variable<DateTime>(lastWatchedAt);
    }
    if (!nullToAbsent || localizedTitle != null) {
      map['localized_title'] = Variable<String>(
        $SeriesTableTable.$converterlocalizedTitlen.toSql(localizedTitle),
      );
    }
    if (!nullToAbsent || localizedPosterUrl != null) {
      map['localized_poster_url'] = Variable<String>(
        $SeriesTableTable.$converterlocalizedPosterUrln.toSql(
          localizedPosterUrl,
        ),
      );
    }
    return map;
  }

  SeriesTableCompanion toCompanion(bool nullToAbsent) {
    return SeriesTableCompanion(
      id: Value(id),
      tmdbId: Value(tmdbId),
      posterUrl: posterUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(posterUrl),
      genres: genres == null && nullToAbsent
          ? const Value.absent()
          : Value(genres),
      originCountry: originCountry == null && nullToAbsent
          ? const Value.absent()
          : Value(originCountry),
      premiereDate: premiereDate == null && nullToAbsent
          ? const Value.absent()
          : Value(premiereDate),
      title: title == null && nullToAbsent
          ? const Value.absent()
          : Value(title),
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
      watchlistAddedAt: watchlistAddedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(watchlistAddedAt),
      lastWatchedAt: lastWatchedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastWatchedAt),
      localizedTitle: localizedTitle == null && nullToAbsent
          ? const Value.absent()
          : Value(localizedTitle),
      localizedPosterUrl: localizedPosterUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(localizedPosterUrl),
    );
  }

  factory SeriesTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SeriesTableData(
      id: serializer.fromJson<int>(json['id']),
      tmdbId: serializer.fromJson<int>(json['tmdbId']),
      posterUrl: serializer.fromJson<String?>(json['posterUrl']),
      genres: serializer.fromJson<List<SeriesGenreDto>?>(json['genres']),
      originCountry: serializer.fromJson<List<CountryDto>?>(
        json['originCountry'],
      ),
      premiereDate: serializer.fromJson<DateTime?>(json['premiereDate']),
      title: serializer.fromJson<String?>(json['title']),
      tmdbRating: serializer.fromJson<RatingDataDto?>(json['tmdbRating']),
      userRating: serializer.fromJson<int?>(json['userRating']),
      isInWatchlist: serializer.fromJson<bool?>(json['isInWatchlist']),
      isWatched: serializer.fromJson<bool?>(json['isWatched']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      watchlistAddedAt: serializer.fromJson<DateTime?>(
        json['watchlistAddedAt'],
      ),
      lastWatchedAt: serializer.fromJson<DateTime?>(json['lastWatchedAt']),
      localizedTitle: serializer.fromJson<LocalizedString?>(
        json['localizedTitle'],
      ),
      localizedPosterUrl: serializer.fromJson<LocalizedString?>(
        json['localizedPosterUrl'],
      ),
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
      'originCountry': serializer.toJson<List<CountryDto>?>(originCountry),
      'premiereDate': serializer.toJson<DateTime?>(premiereDate),
      'title': serializer.toJson<String?>(title),
      'tmdbRating': serializer.toJson<RatingDataDto?>(tmdbRating),
      'userRating': serializer.toJson<int?>(userRating),
      'isInWatchlist': serializer.toJson<bool?>(isInWatchlist),
      'isWatched': serializer.toJson<bool?>(isWatched),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'watchlistAddedAt': serializer.toJson<DateTime?>(watchlistAddedAt),
      'lastWatchedAt': serializer.toJson<DateTime?>(lastWatchedAt),
      'localizedTitle': serializer.toJson<LocalizedString?>(localizedTitle),
      'localizedPosterUrl': serializer.toJson<LocalizedString?>(
        localizedPosterUrl,
      ),
    };
  }

  SeriesTableData copyWith({
    int? id,
    int? tmdbId,
    Value<String?> posterUrl = const Value.absent(),
    Value<List<SeriesGenreDto>?> genres = const Value.absent(),
    Value<List<CountryDto>?> originCountry = const Value.absent(),
    Value<DateTime?> premiereDate = const Value.absent(),
    Value<String?> title = const Value.absent(),
    Value<RatingDataDto?> tmdbRating = const Value.absent(),
    Value<int?> userRating = const Value.absent(),
    Value<bool?> isInWatchlist = const Value.absent(),
    Value<bool?> isWatched = const Value.absent(),
    DateTime? createdAt,
    DateTime? updatedAt,
    Value<DateTime?> watchlistAddedAt = const Value.absent(),
    Value<DateTime?> lastWatchedAt = const Value.absent(),
    Value<LocalizedString?> localizedTitle = const Value.absent(),
    Value<LocalizedString?> localizedPosterUrl = const Value.absent(),
  }) => SeriesTableData(
    id: id ?? this.id,
    tmdbId: tmdbId ?? this.tmdbId,
    posterUrl: posterUrl.present ? posterUrl.value : this.posterUrl,
    genres: genres.present ? genres.value : this.genres,
    originCountry: originCountry.present
        ? originCountry.value
        : this.originCountry,
    premiereDate: premiereDate.present ? premiereDate.value : this.premiereDate,
    title: title.present ? title.value : this.title,
    tmdbRating: tmdbRating.present ? tmdbRating.value : this.tmdbRating,
    userRating: userRating.present ? userRating.value : this.userRating,
    isInWatchlist: isInWatchlist.present
        ? isInWatchlist.value
        : this.isInWatchlist,
    isWatched: isWatched.present ? isWatched.value : this.isWatched,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    watchlistAddedAt: watchlistAddedAt.present
        ? watchlistAddedAt.value
        : this.watchlistAddedAt,
    lastWatchedAt: lastWatchedAt.present
        ? lastWatchedAt.value
        : this.lastWatchedAt,
    localizedTitle: localizedTitle.present
        ? localizedTitle.value
        : this.localizedTitle,
    localizedPosterUrl: localizedPosterUrl.present
        ? localizedPosterUrl.value
        : this.localizedPosterUrl,
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
      tmdbRating: data.tmdbRating.present
          ? data.tmdbRating.value
          : this.tmdbRating,
      userRating: data.userRating.present
          ? data.userRating.value
          : this.userRating,
      isInWatchlist: data.isInWatchlist.present
          ? data.isInWatchlist.value
          : this.isInWatchlist,
      isWatched: data.isWatched.present ? data.isWatched.value : this.isWatched,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      watchlistAddedAt: data.watchlistAddedAt.present
          ? data.watchlistAddedAt.value
          : this.watchlistAddedAt,
      lastWatchedAt: data.lastWatchedAt.present
          ? data.lastWatchedAt.value
          : this.lastWatchedAt,
      localizedTitle: data.localizedTitle.present
          ? data.localizedTitle.value
          : this.localizedTitle,
      localizedPosterUrl: data.localizedPosterUrl.present
          ? data.localizedPosterUrl.value
          : this.localizedPosterUrl,
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
          ..write('updatedAt: $updatedAt, ')
          ..write('watchlistAddedAt: $watchlistAddedAt, ')
          ..write('lastWatchedAt: $lastWatchedAt, ')
          ..write('localizedTitle: $localizedTitle, ')
          ..write('localizedPosterUrl: $localizedPosterUrl')
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
    updatedAt,
    watchlistAddedAt,
    lastWatchedAt,
    localizedTitle,
    localizedPosterUrl,
  );
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
          other.updatedAt == this.updatedAt &&
          other.watchlistAddedAt == this.watchlistAddedAt &&
          other.lastWatchedAt == this.lastWatchedAt &&
          other.localizedTitle == this.localizedTitle &&
          other.localizedPosterUrl == this.localizedPosterUrl);
}

class SeriesTableCompanion extends UpdateCompanion<SeriesTableData> {
  final Value<int> id;
  final Value<int> tmdbId;
  final Value<String?> posterUrl;
  final Value<List<SeriesGenreDto>?> genres;
  final Value<List<CountryDto>?> originCountry;
  final Value<DateTime?> premiereDate;
  final Value<String?> title;
  final Value<RatingDataDto?> tmdbRating;
  final Value<int?> userRating;
  final Value<bool?> isInWatchlist;
  final Value<bool?> isWatched;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime?> watchlistAddedAt;
  final Value<DateTime?> lastWatchedAt;
  final Value<LocalizedString?> localizedTitle;
  final Value<LocalizedString?> localizedPosterUrl;
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
    this.watchlistAddedAt = const Value.absent(),
    this.lastWatchedAt = const Value.absent(),
    this.localizedTitle = const Value.absent(),
    this.localizedPosterUrl = const Value.absent(),
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
    this.watchlistAddedAt = const Value.absent(),
    this.lastWatchedAt = const Value.absent(),
    this.localizedTitle = const Value.absent(),
    this.localizedPosterUrl = const Value.absent(),
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
    Expression<DateTime>? watchlistAddedAt,
    Expression<DateTime>? lastWatchedAt,
    Expression<String>? localizedTitle,
    Expression<String>? localizedPosterUrl,
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
      if (watchlistAddedAt != null) 'watchlist_added_at': watchlistAddedAt,
      if (lastWatchedAt != null) 'last_watched_at': lastWatchedAt,
      if (localizedTitle != null) 'localized_title': localizedTitle,
      if (localizedPosterUrl != null)
        'localized_poster_url': localizedPosterUrl,
    });
  }

  SeriesTableCompanion copyWith({
    Value<int>? id,
    Value<int>? tmdbId,
    Value<String?>? posterUrl,
    Value<List<SeriesGenreDto>?>? genres,
    Value<List<CountryDto>?>? originCountry,
    Value<DateTime?>? premiereDate,
    Value<String?>? title,
    Value<RatingDataDto?>? tmdbRating,
    Value<int?>? userRating,
    Value<bool?>? isInWatchlist,
    Value<bool?>? isWatched,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<DateTime?>? watchlistAddedAt,
    Value<DateTime?>? lastWatchedAt,
    Value<LocalizedString?>? localizedTitle,
    Value<LocalizedString?>? localizedPosterUrl,
  }) {
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
      watchlistAddedAt: watchlistAddedAt ?? this.watchlistAddedAt,
      lastWatchedAt: lastWatchedAt ?? this.lastWatchedAt,
      localizedTitle: localizedTitle ?? this.localizedTitle,
      localizedPosterUrl: localizedPosterUrl ?? this.localizedPosterUrl,
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
        $SeriesTableTable.$convertergenresn.toSql(genres.value),
      );
    }
    if (originCountry.present) {
      map['origin_country'] = Variable<String>(
        $SeriesTableTable.$converteroriginCountryn.toSql(originCountry.value),
      );
    }
    if (premiereDate.present) {
      map['premiere_date'] = Variable<DateTime>(premiereDate.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (tmdbRating.present) {
      map['tmdb_rating'] = Variable<String>(
        $SeriesTableTable.$convertertmdbRatingn.toSql(tmdbRating.value),
      );
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
    if (watchlistAddedAt.present) {
      map['watchlist_added_at'] = Variable<DateTime>(watchlistAddedAt.value);
    }
    if (lastWatchedAt.present) {
      map['last_watched_at'] = Variable<DateTime>(lastWatchedAt.value);
    }
    if (localizedTitle.present) {
      map['localized_title'] = Variable<String>(
        $SeriesTableTable.$converterlocalizedTitlen.toSql(localizedTitle.value),
      );
    }
    if (localizedPosterUrl.present) {
      map['localized_poster_url'] = Variable<String>(
        $SeriesTableTable.$converterlocalizedPosterUrln.toSql(
          localizedPosterUrl.value,
        ),
      );
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
          ..write('updatedAt: $updatedAt, ')
          ..write('watchlistAddedAt: $watchlistAddedAt, ')
          ..write('lastWatchedAt: $lastWatchedAt, ')
          ..write('localizedTitle: $localizedTitle, ')
          ..write('localizedPosterUrl: $localizedPosterUrl')
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
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _uidMeta = const VerificationMeta('uid');
  @override
  late final GeneratedColumn<String> uid = GeneratedColumn<String>(
    'uid',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
    'email',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _moviesSyncedAtMeta = const VerificationMeta(
    'moviesSyncedAt',
  );
  @override
  late final GeneratedColumn<DateTime> moviesSyncedAt =
      GeneratedColumn<DateTime>(
        'movies_synced_at',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
        defaultValue: currentDateAndTime,
      );
  static const VerificationMeta _seriesSyncedAtMeta = const VerificationMeta(
    'seriesSyncedAt',
  );
  @override
  late final GeneratedColumn<DateTime> seriesSyncedAt =
      GeneratedColumn<DateTime>(
        'series_synced_at',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
        defaultValue: currentDateAndTime,
      );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    uid,
    email,
    moviesSyncedAt,
    seriesSyncedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sync_user_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<SyncUserTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('uid')) {
      context.handle(
        _uidMeta,
        uid.isAcceptableOrUnknown(data['uid']!, _uidMeta),
      );
    } else if (isInserting) {
      context.missing(_uidMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
        _emailMeta,
        email.isAcceptableOrUnknown(data['email']!, _emailMeta),
      );
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('movies_synced_at')) {
      context.handle(
        _moviesSyncedAtMeta,
        moviesSyncedAt.isAcceptableOrUnknown(
          data['movies_synced_at']!,
          _moviesSyncedAtMeta,
        ),
      );
    }
    if (data.containsKey('series_synced_at')) {
      context.handle(
        _seriesSyncedAtMeta,
        seriesSyncedAt.isAcceptableOrUnknown(
          data['series_synced_at']!,
          _seriesSyncedAtMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SyncUserTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SyncUserTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      uid: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}uid'],
      )!,
      email: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}email'],
      )!,
      moviesSyncedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}movies_synced_at'],
      )!,
      seriesSyncedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}series_synced_at'],
      )!,
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
  final DateTime moviesSyncedAt;
  final DateTime seriesSyncedAt;
  const SyncUserTableData({
    required this.id,
    required this.uid,
    required this.email,
    required this.moviesSyncedAt,
    required this.seriesSyncedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['uid'] = Variable<String>(uid);
    map['email'] = Variable<String>(email);
    map['movies_synced_at'] = Variable<DateTime>(moviesSyncedAt);
    map['series_synced_at'] = Variable<DateTime>(seriesSyncedAt);
    return map;
  }

  SyncUserTableCompanion toCompanion(bool nullToAbsent) {
    return SyncUserTableCompanion(
      id: Value(id),
      uid: Value(uid),
      email: Value(email),
      moviesSyncedAt: Value(moviesSyncedAt),
      seriesSyncedAt: Value(seriesSyncedAt),
    );
  }

  factory SyncUserTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SyncUserTableData(
      id: serializer.fromJson<int>(json['id']),
      uid: serializer.fromJson<String>(json['uid']),
      email: serializer.fromJson<String>(json['email']),
      moviesSyncedAt: serializer.fromJson<DateTime>(json['moviesSyncedAt']),
      seriesSyncedAt: serializer.fromJson<DateTime>(json['seriesSyncedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'uid': serializer.toJson<String>(uid),
      'email': serializer.toJson<String>(email),
      'moviesSyncedAt': serializer.toJson<DateTime>(moviesSyncedAt),
      'seriesSyncedAt': serializer.toJson<DateTime>(seriesSyncedAt),
    };
  }

  SyncUserTableData copyWith({
    int? id,
    String? uid,
    String? email,
    DateTime? moviesSyncedAt,
    DateTime? seriesSyncedAt,
  }) => SyncUserTableData(
    id: id ?? this.id,
    uid: uid ?? this.uid,
    email: email ?? this.email,
    moviesSyncedAt: moviesSyncedAt ?? this.moviesSyncedAt,
    seriesSyncedAt: seriesSyncedAt ?? this.seriesSyncedAt,
  );
  SyncUserTableData copyWithCompanion(SyncUserTableCompanion data) {
    return SyncUserTableData(
      id: data.id.present ? data.id.value : this.id,
      uid: data.uid.present ? data.uid.value : this.uid,
      email: data.email.present ? data.email.value : this.email,
      moviesSyncedAt: data.moviesSyncedAt.present
          ? data.moviesSyncedAt.value
          : this.moviesSyncedAt,
      seriesSyncedAt: data.seriesSyncedAt.present
          ? data.seriesSyncedAt.value
          : this.seriesSyncedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SyncUserTableData(')
          ..write('id: $id, ')
          ..write('uid: $uid, ')
          ..write('email: $email, ')
          ..write('moviesSyncedAt: $moviesSyncedAt, ')
          ..write('seriesSyncedAt: $seriesSyncedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, uid, email, moviesSyncedAt, seriesSyncedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SyncUserTableData &&
          other.id == this.id &&
          other.uid == this.uid &&
          other.email == this.email &&
          other.moviesSyncedAt == this.moviesSyncedAt &&
          other.seriesSyncedAt == this.seriesSyncedAt);
}

class SyncUserTableCompanion extends UpdateCompanion<SyncUserTableData> {
  final Value<int> id;
  final Value<String> uid;
  final Value<String> email;
  final Value<DateTime> moviesSyncedAt;
  final Value<DateTime> seriesSyncedAt;
  const SyncUserTableCompanion({
    this.id = const Value.absent(),
    this.uid = const Value.absent(),
    this.email = const Value.absent(),
    this.moviesSyncedAt = const Value.absent(),
    this.seriesSyncedAt = const Value.absent(),
  });
  SyncUserTableCompanion.insert({
    this.id = const Value.absent(),
    required String uid,
    required String email,
    this.moviesSyncedAt = const Value.absent(),
    this.seriesSyncedAt = const Value.absent(),
  }) : uid = Value(uid),
       email = Value(email);
  static Insertable<SyncUserTableData> custom({
    Expression<int>? id,
    Expression<String>? uid,
    Expression<String>? email,
    Expression<DateTime>? moviesSyncedAt,
    Expression<DateTime>? seriesSyncedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (uid != null) 'uid': uid,
      if (email != null) 'email': email,
      if (moviesSyncedAt != null) 'movies_synced_at': moviesSyncedAt,
      if (seriesSyncedAt != null) 'series_synced_at': seriesSyncedAt,
    });
  }

  SyncUserTableCompanion copyWith({
    Value<int>? id,
    Value<String>? uid,
    Value<String>? email,
    Value<DateTime>? moviesSyncedAt,
    Value<DateTime>? seriesSyncedAt,
  }) {
    return SyncUserTableCompanion(
      id: id ?? this.id,
      uid: uid ?? this.uid,
      email: email ?? this.email,
      moviesSyncedAt: moviesSyncedAt ?? this.moviesSyncedAt,
      seriesSyncedAt: seriesSyncedAt ?? this.seriesSyncedAt,
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
    if (moviesSyncedAt.present) {
      map['movies_synced_at'] = Variable<DateTime>(moviesSyncedAt.value);
    }
    if (seriesSyncedAt.present) {
      map['series_synced_at'] = Variable<DateTime>(seriesSyncedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SyncUserTableCompanion(')
          ..write('id: $id, ')
          ..write('uid: $uid, ')
          ..write('email: $email, ')
          ..write('moviesSyncedAt: $moviesSyncedAt, ')
          ..write('seriesSyncedAt: $seriesSyncedAt')
          ..write(')'))
        .toString();
  }
}

class $SettingsTableTable extends SettingsTable
    with TableInfo<$SettingsTableTable, SettingsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SettingsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _isFirstLaunchMeta = const VerificationMeta(
    'isFirstLaunch',
  );
  @override
  late final GeneratedColumn<bool> isFirstLaunch = GeneratedColumn<bool>(
    'is_first_launch',
    aliasedName,
    true,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_first_launch" IN (0, 1))',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [id, isFirstLaunch];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'settings_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<SettingsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('is_first_launch')) {
      context.handle(
        _isFirstLaunchMeta,
        isFirstLaunch.isAcceptableOrUnknown(
          data['is_first_launch']!,
          _isFirstLaunchMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SettingsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SettingsTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      isFirstLaunch: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_first_launch'],
      ),
    );
  }

  @override
  $SettingsTableTable createAlias(String alias) {
    return $SettingsTableTable(attachedDatabase, alias);
  }
}

class SettingsTableData extends DataClass
    implements Insertable<SettingsTableData> {
  final int id;
  final bool? isFirstLaunch;
  const SettingsTableData({required this.id, this.isFirstLaunch});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || isFirstLaunch != null) {
      map['is_first_launch'] = Variable<bool>(isFirstLaunch);
    }
    return map;
  }

  SettingsTableCompanion toCompanion(bool nullToAbsent) {
    return SettingsTableCompanion(
      id: Value(id),
      isFirstLaunch: isFirstLaunch == null && nullToAbsent
          ? const Value.absent()
          : Value(isFirstLaunch),
    );
  }

  factory SettingsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SettingsTableData(
      id: serializer.fromJson<int>(json['id']),
      isFirstLaunch: serializer.fromJson<bool?>(json['isFirstLaunch']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'isFirstLaunch': serializer.toJson<bool?>(isFirstLaunch),
    };
  }

  SettingsTableData copyWith({
    int? id,
    Value<bool?> isFirstLaunch = const Value.absent(),
  }) => SettingsTableData(
    id: id ?? this.id,
    isFirstLaunch: isFirstLaunch.present
        ? isFirstLaunch.value
        : this.isFirstLaunch,
  );
  SettingsTableData copyWithCompanion(SettingsTableCompanion data) {
    return SettingsTableData(
      id: data.id.present ? data.id.value : this.id,
      isFirstLaunch: data.isFirstLaunch.present
          ? data.isFirstLaunch.value
          : this.isFirstLaunch,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SettingsTableData(')
          ..write('id: $id, ')
          ..write('isFirstLaunch: $isFirstLaunch')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, isFirstLaunch);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SettingsTableData &&
          other.id == this.id &&
          other.isFirstLaunch == this.isFirstLaunch);
}

class SettingsTableCompanion extends UpdateCompanion<SettingsTableData> {
  final Value<int> id;
  final Value<bool?> isFirstLaunch;
  const SettingsTableCompanion({
    this.id = const Value.absent(),
    this.isFirstLaunch = const Value.absent(),
  });
  SettingsTableCompanion.insert({
    this.id = const Value.absent(),
    this.isFirstLaunch = const Value.absent(),
  });
  static Insertable<SettingsTableData> custom({
    Expression<int>? id,
    Expression<bool>? isFirstLaunch,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (isFirstLaunch != null) 'is_first_launch': isFirstLaunch,
    });
  }

  SettingsTableCompanion copyWith({
    Value<int>? id,
    Value<bool?>? isFirstLaunch,
  }) {
    return SettingsTableCompanion(
      id: id ?? this.id,
      isFirstLaunch: isFirstLaunch ?? this.isFirstLaunch,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (isFirstLaunch.present) {
      map['is_first_launch'] = Variable<bool>(isFirstLaunch.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SettingsTableCompanion(')
          ..write('id: $id, ')
          ..write('isFirstLaunch: $isFirstLaunch')
          ..write(')'))
        .toString();
  }
}

class $MoviesFilterTableTable extends MoviesFilterTable
    with TableInfo<$MoviesFilterTableTable, MoviesFilterTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MoviesFilterTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  @override
  late final GeneratedColumnWithTypeConverter<SortByDto?, String> sortBy =
      GeneratedColumn<String>(
        'sort_by',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<SortByDto?>($MoviesFilterTableTable.$convertersortByn);
  @override
  late final GeneratedColumnWithTypeConverter<List<CountryDto>?, String>
  withCountries =
      GeneratedColumn<String>(
        'with_countries',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<List<CountryDto>?>(
        $MoviesFilterTableTable.$converterwithCountriesn,
      );
  @override
  late final GeneratedColumnWithTypeConverter<List<MovieGenreDto>?, String>
  withGenres =
      GeneratedColumn<String>(
        'with_genres',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<List<MovieGenreDto>?>(
        $MoviesFilterTableTable.$converterwithGenresn,
      );
  @override
  late final GeneratedColumnWithTypeConverter<List<MovieGenreDto>?, String>
  withoutGenres =
      GeneratedColumn<String>(
        'without_genres',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<List<MovieGenreDto>?>(
        $MoviesFilterTableTable.$converterwithoutGenresn,
      );
  static const VerificationMeta _includeWatchedMeta = const VerificationMeta(
    'includeWatched',
  );
  @override
  late final GeneratedColumn<bool> includeWatched = GeneratedColumn<bool>(
    'include_watched',
    aliasedName,
    true,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("include_watched" IN (0, 1))',
    ),
  );
  static const VerificationMeta _includeWatchlistMeta = const VerificationMeta(
    'includeWatchlist',
  );
  @override
  late final GeneratedColumn<bool> includeWatchlist = GeneratedColumn<bool>(
    'include_watchlist',
    aliasedName,
    true,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("include_watchlist" IN (0, 1))',
    ),
  );
  static const VerificationMeta _fromDateMeta = const VerificationMeta(
    'fromDate',
  );
  @override
  late final GeneratedColumn<DateTime> fromDate = GeneratedColumn<DateTime>(
    'from_date',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _toDateMeta = const VerificationMeta('toDate');
  @override
  late final GeneratedColumn<DateTime> toDate = GeneratedColumn<DateTime>(
    'to_date',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    sortBy,
    withCountries,
    withGenres,
    withoutGenres,
    includeWatched,
    includeWatchlist,
    fromDate,
    toDate,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'movies_filter_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<MoviesFilterTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('include_watched')) {
      context.handle(
        _includeWatchedMeta,
        includeWatched.isAcceptableOrUnknown(
          data['include_watched']!,
          _includeWatchedMeta,
        ),
      );
    }
    if (data.containsKey('include_watchlist')) {
      context.handle(
        _includeWatchlistMeta,
        includeWatchlist.isAcceptableOrUnknown(
          data['include_watchlist']!,
          _includeWatchlistMeta,
        ),
      );
    }
    if (data.containsKey('from_date')) {
      context.handle(
        _fromDateMeta,
        fromDate.isAcceptableOrUnknown(data['from_date']!, _fromDateMeta),
      );
    }
    if (data.containsKey('to_date')) {
      context.handle(
        _toDateMeta,
        toDate.isAcceptableOrUnknown(data['to_date']!, _toDateMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MoviesFilterTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MoviesFilterTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      sortBy: $MoviesFilterTableTable.$convertersortByn.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}sort_by'],
        ),
      ),
      withCountries: $MoviesFilterTableTable.$converterwithCountriesn.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}with_countries'],
        ),
      ),
      withGenres: $MoviesFilterTableTable.$converterwithGenresn.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}with_genres'],
        ),
      ),
      withoutGenres: $MoviesFilterTableTable.$converterwithoutGenresn.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}without_genres'],
        ),
      ),
      includeWatched: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}include_watched'],
      ),
      includeWatchlist: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}include_watchlist'],
      ),
      fromDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}from_date'],
      ),
      toDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}to_date'],
      ),
    );
  }

  @override
  $MoviesFilterTableTable createAlias(String alias) {
    return $MoviesFilterTableTable(attachedDatabase, alias);
  }

  static TypeConverter<SortByDto, String> $convertersortBy =
      filterSortByConverter;
  static TypeConverter<SortByDto?, String?> $convertersortByn =
      NullAwareTypeConverter.wrap($convertersortBy);
  static TypeConverter<List<CountryDto>, String> $converterwithCountries =
      countryConverter;
  static TypeConverter<List<CountryDto>?, String?> $converterwithCountriesn =
      NullAwareTypeConverter.wrap($converterwithCountries);
  static TypeConverter<List<MovieGenreDto>, String> $converterwithGenres =
      movieGenresConverter;
  static TypeConverter<List<MovieGenreDto>?, String?> $converterwithGenresn =
      NullAwareTypeConverter.wrap($converterwithGenres);
  static TypeConverter<List<MovieGenreDto>, String> $converterwithoutGenres =
      movieGenresConverter;
  static TypeConverter<List<MovieGenreDto>?, String?> $converterwithoutGenresn =
      NullAwareTypeConverter.wrap($converterwithoutGenres);
}

class MoviesFilterTableData extends DataClass
    implements Insertable<MoviesFilterTableData> {
  final int id;
  final SortByDto? sortBy;
  final List<CountryDto>? withCountries;
  final List<MovieGenreDto>? withGenres;
  final List<MovieGenreDto>? withoutGenres;
  final bool? includeWatched;
  final bool? includeWatchlist;
  final DateTime? fromDate;
  final DateTime? toDate;
  const MoviesFilterTableData({
    required this.id,
    this.sortBy,
    this.withCountries,
    this.withGenres,
    this.withoutGenres,
    this.includeWatched,
    this.includeWatchlist,
    this.fromDate,
    this.toDate,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || sortBy != null) {
      map['sort_by'] = Variable<String>(
        $MoviesFilterTableTable.$convertersortByn.toSql(sortBy),
      );
    }
    if (!nullToAbsent || withCountries != null) {
      map['with_countries'] = Variable<String>(
        $MoviesFilterTableTable.$converterwithCountriesn.toSql(withCountries),
      );
    }
    if (!nullToAbsent || withGenres != null) {
      map['with_genres'] = Variable<String>(
        $MoviesFilterTableTable.$converterwithGenresn.toSql(withGenres),
      );
    }
    if (!nullToAbsent || withoutGenres != null) {
      map['without_genres'] = Variable<String>(
        $MoviesFilterTableTable.$converterwithoutGenresn.toSql(withoutGenres),
      );
    }
    if (!nullToAbsent || includeWatched != null) {
      map['include_watched'] = Variable<bool>(includeWatched);
    }
    if (!nullToAbsent || includeWatchlist != null) {
      map['include_watchlist'] = Variable<bool>(includeWatchlist);
    }
    if (!nullToAbsent || fromDate != null) {
      map['from_date'] = Variable<DateTime>(fromDate);
    }
    if (!nullToAbsent || toDate != null) {
      map['to_date'] = Variable<DateTime>(toDate);
    }
    return map;
  }

  MoviesFilterTableCompanion toCompanion(bool nullToAbsent) {
    return MoviesFilterTableCompanion(
      id: Value(id),
      sortBy: sortBy == null && nullToAbsent
          ? const Value.absent()
          : Value(sortBy),
      withCountries: withCountries == null && nullToAbsent
          ? const Value.absent()
          : Value(withCountries),
      withGenres: withGenres == null && nullToAbsent
          ? const Value.absent()
          : Value(withGenres),
      withoutGenres: withoutGenres == null && nullToAbsent
          ? const Value.absent()
          : Value(withoutGenres),
      includeWatched: includeWatched == null && nullToAbsent
          ? const Value.absent()
          : Value(includeWatched),
      includeWatchlist: includeWatchlist == null && nullToAbsent
          ? const Value.absent()
          : Value(includeWatchlist),
      fromDate: fromDate == null && nullToAbsent
          ? const Value.absent()
          : Value(fromDate),
      toDate: toDate == null && nullToAbsent
          ? const Value.absent()
          : Value(toDate),
    );
  }

  factory MoviesFilterTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MoviesFilterTableData(
      id: serializer.fromJson<int>(json['id']),
      sortBy: serializer.fromJson<SortByDto?>(json['sortBy']),
      withCountries: serializer.fromJson<List<CountryDto>?>(
        json['withCountries'],
      ),
      withGenres: serializer.fromJson<List<MovieGenreDto>?>(json['withGenres']),
      withoutGenres: serializer.fromJson<List<MovieGenreDto>?>(
        json['withoutGenres'],
      ),
      includeWatched: serializer.fromJson<bool?>(json['includeWatched']),
      includeWatchlist: serializer.fromJson<bool?>(json['includeWatchlist']),
      fromDate: serializer.fromJson<DateTime?>(json['fromDate']),
      toDate: serializer.fromJson<DateTime?>(json['toDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'sortBy': serializer.toJson<SortByDto?>(sortBy),
      'withCountries': serializer.toJson<List<CountryDto>?>(withCountries),
      'withGenres': serializer.toJson<List<MovieGenreDto>?>(withGenres),
      'withoutGenres': serializer.toJson<List<MovieGenreDto>?>(withoutGenres),
      'includeWatched': serializer.toJson<bool?>(includeWatched),
      'includeWatchlist': serializer.toJson<bool?>(includeWatchlist),
      'fromDate': serializer.toJson<DateTime?>(fromDate),
      'toDate': serializer.toJson<DateTime?>(toDate),
    };
  }

  MoviesFilterTableData copyWith({
    int? id,
    Value<SortByDto?> sortBy = const Value.absent(),
    Value<List<CountryDto>?> withCountries = const Value.absent(),
    Value<List<MovieGenreDto>?> withGenres = const Value.absent(),
    Value<List<MovieGenreDto>?> withoutGenres = const Value.absent(),
    Value<bool?> includeWatched = const Value.absent(),
    Value<bool?> includeWatchlist = const Value.absent(),
    Value<DateTime?> fromDate = const Value.absent(),
    Value<DateTime?> toDate = const Value.absent(),
  }) => MoviesFilterTableData(
    id: id ?? this.id,
    sortBy: sortBy.present ? sortBy.value : this.sortBy,
    withCountries: withCountries.present
        ? withCountries.value
        : this.withCountries,
    withGenres: withGenres.present ? withGenres.value : this.withGenres,
    withoutGenres: withoutGenres.present
        ? withoutGenres.value
        : this.withoutGenres,
    includeWatched: includeWatched.present
        ? includeWatched.value
        : this.includeWatched,
    includeWatchlist: includeWatchlist.present
        ? includeWatchlist.value
        : this.includeWatchlist,
    fromDate: fromDate.present ? fromDate.value : this.fromDate,
    toDate: toDate.present ? toDate.value : this.toDate,
  );
  MoviesFilterTableData copyWithCompanion(MoviesFilterTableCompanion data) {
    return MoviesFilterTableData(
      id: data.id.present ? data.id.value : this.id,
      sortBy: data.sortBy.present ? data.sortBy.value : this.sortBy,
      withCountries: data.withCountries.present
          ? data.withCountries.value
          : this.withCountries,
      withGenres: data.withGenres.present
          ? data.withGenres.value
          : this.withGenres,
      withoutGenres: data.withoutGenres.present
          ? data.withoutGenres.value
          : this.withoutGenres,
      includeWatched: data.includeWatched.present
          ? data.includeWatched.value
          : this.includeWatched,
      includeWatchlist: data.includeWatchlist.present
          ? data.includeWatchlist.value
          : this.includeWatchlist,
      fromDate: data.fromDate.present ? data.fromDate.value : this.fromDate,
      toDate: data.toDate.present ? data.toDate.value : this.toDate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MoviesFilterTableData(')
          ..write('id: $id, ')
          ..write('sortBy: $sortBy, ')
          ..write('withCountries: $withCountries, ')
          ..write('withGenres: $withGenres, ')
          ..write('withoutGenres: $withoutGenres, ')
          ..write('includeWatched: $includeWatched, ')
          ..write('includeWatchlist: $includeWatchlist, ')
          ..write('fromDate: $fromDate, ')
          ..write('toDate: $toDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    sortBy,
    withCountries,
    withGenres,
    withoutGenres,
    includeWatched,
    includeWatchlist,
    fromDate,
    toDate,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MoviesFilterTableData &&
          other.id == this.id &&
          other.sortBy == this.sortBy &&
          other.withCountries == this.withCountries &&
          other.withGenres == this.withGenres &&
          other.withoutGenres == this.withoutGenres &&
          other.includeWatched == this.includeWatched &&
          other.includeWatchlist == this.includeWatchlist &&
          other.fromDate == this.fromDate &&
          other.toDate == this.toDate);
}

class MoviesFilterTableCompanion
    extends UpdateCompanion<MoviesFilterTableData> {
  final Value<int> id;
  final Value<SortByDto?> sortBy;
  final Value<List<CountryDto>?> withCountries;
  final Value<List<MovieGenreDto>?> withGenres;
  final Value<List<MovieGenreDto>?> withoutGenres;
  final Value<bool?> includeWatched;
  final Value<bool?> includeWatchlist;
  final Value<DateTime?> fromDate;
  final Value<DateTime?> toDate;
  const MoviesFilterTableCompanion({
    this.id = const Value.absent(),
    this.sortBy = const Value.absent(),
    this.withCountries = const Value.absent(),
    this.withGenres = const Value.absent(),
    this.withoutGenres = const Value.absent(),
    this.includeWatched = const Value.absent(),
    this.includeWatchlist = const Value.absent(),
    this.fromDate = const Value.absent(),
    this.toDate = const Value.absent(),
  });
  MoviesFilterTableCompanion.insert({
    this.id = const Value.absent(),
    this.sortBy = const Value.absent(),
    this.withCountries = const Value.absent(),
    this.withGenres = const Value.absent(),
    this.withoutGenres = const Value.absent(),
    this.includeWatched = const Value.absent(),
    this.includeWatchlist = const Value.absent(),
    this.fromDate = const Value.absent(),
    this.toDate = const Value.absent(),
  });
  static Insertable<MoviesFilterTableData> custom({
    Expression<int>? id,
    Expression<String>? sortBy,
    Expression<String>? withCountries,
    Expression<String>? withGenres,
    Expression<String>? withoutGenres,
    Expression<bool>? includeWatched,
    Expression<bool>? includeWatchlist,
    Expression<DateTime>? fromDate,
    Expression<DateTime>? toDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (sortBy != null) 'sort_by': sortBy,
      if (withCountries != null) 'with_countries': withCountries,
      if (withGenres != null) 'with_genres': withGenres,
      if (withoutGenres != null) 'without_genres': withoutGenres,
      if (includeWatched != null) 'include_watched': includeWatched,
      if (includeWatchlist != null) 'include_watchlist': includeWatchlist,
      if (fromDate != null) 'from_date': fromDate,
      if (toDate != null) 'to_date': toDate,
    });
  }

  MoviesFilterTableCompanion copyWith({
    Value<int>? id,
    Value<SortByDto?>? sortBy,
    Value<List<CountryDto>?>? withCountries,
    Value<List<MovieGenreDto>?>? withGenres,
    Value<List<MovieGenreDto>?>? withoutGenres,
    Value<bool?>? includeWatched,
    Value<bool?>? includeWatchlist,
    Value<DateTime?>? fromDate,
    Value<DateTime?>? toDate,
  }) {
    return MoviesFilterTableCompanion(
      id: id ?? this.id,
      sortBy: sortBy ?? this.sortBy,
      withCountries: withCountries ?? this.withCountries,
      withGenres: withGenres ?? this.withGenres,
      withoutGenres: withoutGenres ?? this.withoutGenres,
      includeWatched: includeWatched ?? this.includeWatched,
      includeWatchlist: includeWatchlist ?? this.includeWatchlist,
      fromDate: fromDate ?? this.fromDate,
      toDate: toDate ?? this.toDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (sortBy.present) {
      map['sort_by'] = Variable<String>(
        $MoviesFilterTableTable.$convertersortByn.toSql(sortBy.value),
      );
    }
    if (withCountries.present) {
      map['with_countries'] = Variable<String>(
        $MoviesFilterTableTable.$converterwithCountriesn.toSql(
          withCountries.value,
        ),
      );
    }
    if (withGenres.present) {
      map['with_genres'] = Variable<String>(
        $MoviesFilterTableTable.$converterwithGenresn.toSql(withGenres.value),
      );
    }
    if (withoutGenres.present) {
      map['without_genres'] = Variable<String>(
        $MoviesFilterTableTable.$converterwithoutGenresn.toSql(
          withoutGenres.value,
        ),
      );
    }
    if (includeWatched.present) {
      map['include_watched'] = Variable<bool>(includeWatched.value);
    }
    if (includeWatchlist.present) {
      map['include_watchlist'] = Variable<bool>(includeWatchlist.value);
    }
    if (fromDate.present) {
      map['from_date'] = Variable<DateTime>(fromDate.value);
    }
    if (toDate.present) {
      map['to_date'] = Variable<DateTime>(toDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoviesFilterTableCompanion(')
          ..write('id: $id, ')
          ..write('sortBy: $sortBy, ')
          ..write('withCountries: $withCountries, ')
          ..write('withGenres: $withGenres, ')
          ..write('withoutGenres: $withoutGenres, ')
          ..write('includeWatched: $includeWatched, ')
          ..write('includeWatchlist: $includeWatchlist, ')
          ..write('fromDate: $fromDate, ')
          ..write('toDate: $toDate')
          ..write(')'))
        .toString();
  }
}

class $SeriesFilterTableTable extends SeriesFilterTable
    with TableInfo<$SeriesFilterTableTable, SeriesFilterTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SeriesFilterTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  @override
  late final GeneratedColumnWithTypeConverter<SortByDto?, String> sortBy =
      GeneratedColumn<String>(
        'sort_by',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<SortByDto?>($SeriesFilterTableTable.$convertersortByn);
  @override
  late final GeneratedColumnWithTypeConverter<List<CountryDto>?, String>
  withCountries =
      GeneratedColumn<String>(
        'with_countries',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<List<CountryDto>?>(
        $SeriesFilterTableTable.$converterwithCountriesn,
      );
  @override
  late final GeneratedColumnWithTypeConverter<List<SeriesGenreDto>?, String>
  withGenres =
      GeneratedColumn<String>(
        'with_genres',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<List<SeriesGenreDto>?>(
        $SeriesFilterTableTable.$converterwithGenresn,
      );
  @override
  late final GeneratedColumnWithTypeConverter<List<SeriesGenreDto>?, String>
  withoutGenres =
      GeneratedColumn<String>(
        'without_genres',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<List<SeriesGenreDto>?>(
        $SeriesFilterTableTable.$converterwithoutGenresn,
      );
  static const VerificationMeta _includeWatchedMeta = const VerificationMeta(
    'includeWatched',
  );
  @override
  late final GeneratedColumn<bool> includeWatched = GeneratedColumn<bool>(
    'include_watched',
    aliasedName,
    true,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("include_watched" IN (0, 1))',
    ),
  );
  static const VerificationMeta _includeWatchlistMeta = const VerificationMeta(
    'includeWatchlist',
  );
  @override
  late final GeneratedColumn<bool> includeWatchlist = GeneratedColumn<bool>(
    'include_watchlist',
    aliasedName,
    true,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("include_watchlist" IN (0, 1))',
    ),
  );
  static const VerificationMeta _fromDateMeta = const VerificationMeta(
    'fromDate',
  );
  @override
  late final GeneratedColumn<DateTime> fromDate = GeneratedColumn<DateTime>(
    'from_date',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _toDateMeta = const VerificationMeta('toDate');
  @override
  late final GeneratedColumn<DateTime> toDate = GeneratedColumn<DateTime>(
    'to_date',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    sortBy,
    withCountries,
    withGenres,
    withoutGenres,
    includeWatched,
    includeWatchlist,
    fromDate,
    toDate,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'series_filter_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<SeriesFilterTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('include_watched')) {
      context.handle(
        _includeWatchedMeta,
        includeWatched.isAcceptableOrUnknown(
          data['include_watched']!,
          _includeWatchedMeta,
        ),
      );
    }
    if (data.containsKey('include_watchlist')) {
      context.handle(
        _includeWatchlistMeta,
        includeWatchlist.isAcceptableOrUnknown(
          data['include_watchlist']!,
          _includeWatchlistMeta,
        ),
      );
    }
    if (data.containsKey('from_date')) {
      context.handle(
        _fromDateMeta,
        fromDate.isAcceptableOrUnknown(data['from_date']!, _fromDateMeta),
      );
    }
    if (data.containsKey('to_date')) {
      context.handle(
        _toDateMeta,
        toDate.isAcceptableOrUnknown(data['to_date']!, _toDateMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SeriesFilterTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SeriesFilterTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      sortBy: $SeriesFilterTableTable.$convertersortByn.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}sort_by'],
        ),
      ),
      withCountries: $SeriesFilterTableTable.$converterwithCountriesn.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}with_countries'],
        ),
      ),
      withGenres: $SeriesFilterTableTable.$converterwithGenresn.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}with_genres'],
        ),
      ),
      withoutGenres: $SeriesFilterTableTable.$converterwithoutGenresn.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}without_genres'],
        ),
      ),
      includeWatched: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}include_watched'],
      ),
      includeWatchlist: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}include_watchlist'],
      ),
      fromDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}from_date'],
      ),
      toDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}to_date'],
      ),
    );
  }

  @override
  $SeriesFilterTableTable createAlias(String alias) {
    return $SeriesFilterTableTable(attachedDatabase, alias);
  }

  static TypeConverter<SortByDto, String> $convertersortBy =
      filterSortByConverter;
  static TypeConverter<SortByDto?, String?> $convertersortByn =
      NullAwareTypeConverter.wrap($convertersortBy);
  static TypeConverter<List<CountryDto>, String> $converterwithCountries =
      countryConverter;
  static TypeConverter<List<CountryDto>?, String?> $converterwithCountriesn =
      NullAwareTypeConverter.wrap($converterwithCountries);
  static TypeConverter<List<SeriesGenreDto>, String> $converterwithGenres =
      seriesGenresConverter;
  static TypeConverter<List<SeriesGenreDto>?, String?> $converterwithGenresn =
      NullAwareTypeConverter.wrap($converterwithGenres);
  static TypeConverter<List<SeriesGenreDto>, String> $converterwithoutGenres =
      seriesGenresConverter;
  static TypeConverter<List<SeriesGenreDto>?, String?>
  $converterwithoutGenresn = NullAwareTypeConverter.wrap(
    $converterwithoutGenres,
  );
}

class SeriesFilterTableData extends DataClass
    implements Insertable<SeriesFilterTableData> {
  final int id;
  final SortByDto? sortBy;
  final List<CountryDto>? withCountries;
  final List<SeriesGenreDto>? withGenres;
  final List<SeriesGenreDto>? withoutGenres;
  final bool? includeWatched;
  final bool? includeWatchlist;
  final DateTime? fromDate;
  final DateTime? toDate;
  const SeriesFilterTableData({
    required this.id,
    this.sortBy,
    this.withCountries,
    this.withGenres,
    this.withoutGenres,
    this.includeWatched,
    this.includeWatchlist,
    this.fromDate,
    this.toDate,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || sortBy != null) {
      map['sort_by'] = Variable<String>(
        $SeriesFilterTableTable.$convertersortByn.toSql(sortBy),
      );
    }
    if (!nullToAbsent || withCountries != null) {
      map['with_countries'] = Variable<String>(
        $SeriesFilterTableTable.$converterwithCountriesn.toSql(withCountries),
      );
    }
    if (!nullToAbsent || withGenres != null) {
      map['with_genres'] = Variable<String>(
        $SeriesFilterTableTable.$converterwithGenresn.toSql(withGenres),
      );
    }
    if (!nullToAbsent || withoutGenres != null) {
      map['without_genres'] = Variable<String>(
        $SeriesFilterTableTable.$converterwithoutGenresn.toSql(withoutGenres),
      );
    }
    if (!nullToAbsent || includeWatched != null) {
      map['include_watched'] = Variable<bool>(includeWatched);
    }
    if (!nullToAbsent || includeWatchlist != null) {
      map['include_watchlist'] = Variable<bool>(includeWatchlist);
    }
    if (!nullToAbsent || fromDate != null) {
      map['from_date'] = Variable<DateTime>(fromDate);
    }
    if (!nullToAbsent || toDate != null) {
      map['to_date'] = Variable<DateTime>(toDate);
    }
    return map;
  }

  SeriesFilterTableCompanion toCompanion(bool nullToAbsent) {
    return SeriesFilterTableCompanion(
      id: Value(id),
      sortBy: sortBy == null && nullToAbsent
          ? const Value.absent()
          : Value(sortBy),
      withCountries: withCountries == null && nullToAbsent
          ? const Value.absent()
          : Value(withCountries),
      withGenres: withGenres == null && nullToAbsent
          ? const Value.absent()
          : Value(withGenres),
      withoutGenres: withoutGenres == null && nullToAbsent
          ? const Value.absent()
          : Value(withoutGenres),
      includeWatched: includeWatched == null && nullToAbsent
          ? const Value.absent()
          : Value(includeWatched),
      includeWatchlist: includeWatchlist == null && nullToAbsent
          ? const Value.absent()
          : Value(includeWatchlist),
      fromDate: fromDate == null && nullToAbsent
          ? const Value.absent()
          : Value(fromDate),
      toDate: toDate == null && nullToAbsent
          ? const Value.absent()
          : Value(toDate),
    );
  }

  factory SeriesFilterTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SeriesFilterTableData(
      id: serializer.fromJson<int>(json['id']),
      sortBy: serializer.fromJson<SortByDto?>(json['sortBy']),
      withCountries: serializer.fromJson<List<CountryDto>?>(
        json['withCountries'],
      ),
      withGenres: serializer.fromJson<List<SeriesGenreDto>?>(
        json['withGenres'],
      ),
      withoutGenres: serializer.fromJson<List<SeriesGenreDto>?>(
        json['withoutGenres'],
      ),
      includeWatched: serializer.fromJson<bool?>(json['includeWatched']),
      includeWatchlist: serializer.fromJson<bool?>(json['includeWatchlist']),
      fromDate: serializer.fromJson<DateTime?>(json['fromDate']),
      toDate: serializer.fromJson<DateTime?>(json['toDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'sortBy': serializer.toJson<SortByDto?>(sortBy),
      'withCountries': serializer.toJson<List<CountryDto>?>(withCountries),
      'withGenres': serializer.toJson<List<SeriesGenreDto>?>(withGenres),
      'withoutGenres': serializer.toJson<List<SeriesGenreDto>?>(withoutGenres),
      'includeWatched': serializer.toJson<bool?>(includeWatched),
      'includeWatchlist': serializer.toJson<bool?>(includeWatchlist),
      'fromDate': serializer.toJson<DateTime?>(fromDate),
      'toDate': serializer.toJson<DateTime?>(toDate),
    };
  }

  SeriesFilterTableData copyWith({
    int? id,
    Value<SortByDto?> sortBy = const Value.absent(),
    Value<List<CountryDto>?> withCountries = const Value.absent(),
    Value<List<SeriesGenreDto>?> withGenres = const Value.absent(),
    Value<List<SeriesGenreDto>?> withoutGenres = const Value.absent(),
    Value<bool?> includeWatched = const Value.absent(),
    Value<bool?> includeWatchlist = const Value.absent(),
    Value<DateTime?> fromDate = const Value.absent(),
    Value<DateTime?> toDate = const Value.absent(),
  }) => SeriesFilterTableData(
    id: id ?? this.id,
    sortBy: sortBy.present ? sortBy.value : this.sortBy,
    withCountries: withCountries.present
        ? withCountries.value
        : this.withCountries,
    withGenres: withGenres.present ? withGenres.value : this.withGenres,
    withoutGenres: withoutGenres.present
        ? withoutGenres.value
        : this.withoutGenres,
    includeWatched: includeWatched.present
        ? includeWatched.value
        : this.includeWatched,
    includeWatchlist: includeWatchlist.present
        ? includeWatchlist.value
        : this.includeWatchlist,
    fromDate: fromDate.present ? fromDate.value : this.fromDate,
    toDate: toDate.present ? toDate.value : this.toDate,
  );
  SeriesFilterTableData copyWithCompanion(SeriesFilterTableCompanion data) {
    return SeriesFilterTableData(
      id: data.id.present ? data.id.value : this.id,
      sortBy: data.sortBy.present ? data.sortBy.value : this.sortBy,
      withCountries: data.withCountries.present
          ? data.withCountries.value
          : this.withCountries,
      withGenres: data.withGenres.present
          ? data.withGenres.value
          : this.withGenres,
      withoutGenres: data.withoutGenres.present
          ? data.withoutGenres.value
          : this.withoutGenres,
      includeWatched: data.includeWatched.present
          ? data.includeWatched.value
          : this.includeWatched,
      includeWatchlist: data.includeWatchlist.present
          ? data.includeWatchlist.value
          : this.includeWatchlist,
      fromDate: data.fromDate.present ? data.fromDate.value : this.fromDate,
      toDate: data.toDate.present ? data.toDate.value : this.toDate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SeriesFilterTableData(')
          ..write('id: $id, ')
          ..write('sortBy: $sortBy, ')
          ..write('withCountries: $withCountries, ')
          ..write('withGenres: $withGenres, ')
          ..write('withoutGenres: $withoutGenres, ')
          ..write('includeWatched: $includeWatched, ')
          ..write('includeWatchlist: $includeWatchlist, ')
          ..write('fromDate: $fromDate, ')
          ..write('toDate: $toDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    sortBy,
    withCountries,
    withGenres,
    withoutGenres,
    includeWatched,
    includeWatchlist,
    fromDate,
    toDate,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SeriesFilterTableData &&
          other.id == this.id &&
          other.sortBy == this.sortBy &&
          other.withCountries == this.withCountries &&
          other.withGenres == this.withGenres &&
          other.withoutGenres == this.withoutGenres &&
          other.includeWatched == this.includeWatched &&
          other.includeWatchlist == this.includeWatchlist &&
          other.fromDate == this.fromDate &&
          other.toDate == this.toDate);
}

class SeriesFilterTableCompanion
    extends UpdateCompanion<SeriesFilterTableData> {
  final Value<int> id;
  final Value<SortByDto?> sortBy;
  final Value<List<CountryDto>?> withCountries;
  final Value<List<SeriesGenreDto>?> withGenres;
  final Value<List<SeriesGenreDto>?> withoutGenres;
  final Value<bool?> includeWatched;
  final Value<bool?> includeWatchlist;
  final Value<DateTime?> fromDate;
  final Value<DateTime?> toDate;
  const SeriesFilterTableCompanion({
    this.id = const Value.absent(),
    this.sortBy = const Value.absent(),
    this.withCountries = const Value.absent(),
    this.withGenres = const Value.absent(),
    this.withoutGenres = const Value.absent(),
    this.includeWatched = const Value.absent(),
    this.includeWatchlist = const Value.absent(),
    this.fromDate = const Value.absent(),
    this.toDate = const Value.absent(),
  });
  SeriesFilterTableCompanion.insert({
    this.id = const Value.absent(),
    this.sortBy = const Value.absent(),
    this.withCountries = const Value.absent(),
    this.withGenres = const Value.absent(),
    this.withoutGenres = const Value.absent(),
    this.includeWatched = const Value.absent(),
    this.includeWatchlist = const Value.absent(),
    this.fromDate = const Value.absent(),
    this.toDate = const Value.absent(),
  });
  static Insertable<SeriesFilterTableData> custom({
    Expression<int>? id,
    Expression<String>? sortBy,
    Expression<String>? withCountries,
    Expression<String>? withGenres,
    Expression<String>? withoutGenres,
    Expression<bool>? includeWatched,
    Expression<bool>? includeWatchlist,
    Expression<DateTime>? fromDate,
    Expression<DateTime>? toDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (sortBy != null) 'sort_by': sortBy,
      if (withCountries != null) 'with_countries': withCountries,
      if (withGenres != null) 'with_genres': withGenres,
      if (withoutGenres != null) 'without_genres': withoutGenres,
      if (includeWatched != null) 'include_watched': includeWatched,
      if (includeWatchlist != null) 'include_watchlist': includeWatchlist,
      if (fromDate != null) 'from_date': fromDate,
      if (toDate != null) 'to_date': toDate,
    });
  }

  SeriesFilterTableCompanion copyWith({
    Value<int>? id,
    Value<SortByDto?>? sortBy,
    Value<List<CountryDto>?>? withCountries,
    Value<List<SeriesGenreDto>?>? withGenres,
    Value<List<SeriesGenreDto>?>? withoutGenres,
    Value<bool?>? includeWatched,
    Value<bool?>? includeWatchlist,
    Value<DateTime?>? fromDate,
    Value<DateTime?>? toDate,
  }) {
    return SeriesFilterTableCompanion(
      id: id ?? this.id,
      sortBy: sortBy ?? this.sortBy,
      withCountries: withCountries ?? this.withCountries,
      withGenres: withGenres ?? this.withGenres,
      withoutGenres: withoutGenres ?? this.withoutGenres,
      includeWatched: includeWatched ?? this.includeWatched,
      includeWatchlist: includeWatchlist ?? this.includeWatchlist,
      fromDate: fromDate ?? this.fromDate,
      toDate: toDate ?? this.toDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (sortBy.present) {
      map['sort_by'] = Variable<String>(
        $SeriesFilterTableTable.$convertersortByn.toSql(sortBy.value),
      );
    }
    if (withCountries.present) {
      map['with_countries'] = Variable<String>(
        $SeriesFilterTableTable.$converterwithCountriesn.toSql(
          withCountries.value,
        ),
      );
    }
    if (withGenres.present) {
      map['with_genres'] = Variable<String>(
        $SeriesFilterTableTable.$converterwithGenresn.toSql(withGenres.value),
      );
    }
    if (withoutGenres.present) {
      map['without_genres'] = Variable<String>(
        $SeriesFilterTableTable.$converterwithoutGenresn.toSql(
          withoutGenres.value,
        ),
      );
    }
    if (includeWatched.present) {
      map['include_watched'] = Variable<bool>(includeWatched.value);
    }
    if (includeWatchlist.present) {
      map['include_watchlist'] = Variable<bool>(includeWatchlist.value);
    }
    if (fromDate.present) {
      map['from_date'] = Variable<DateTime>(fromDate.value);
    }
    if (toDate.present) {
      map['to_date'] = Variable<DateTime>(toDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SeriesFilterTableCompanion(')
          ..write('id: $id, ')
          ..write('sortBy: $sortBy, ')
          ..write('withCountries: $withCountries, ')
          ..write('withGenres: $withGenres, ')
          ..write('withoutGenres: $withoutGenres, ')
          ..write('includeWatched: $includeWatched, ')
          ..write('includeWatchlist: $includeWatchlist, ')
          ..write('fromDate: $fromDate, ')
          ..write('toDate: $toDate')
          ..write(')'))
        .toString();
  }
}

class $MoviesEventsTableTable extends MoviesEventsTable
    with TableInfo<$MoviesEventsTableTable, MoviesEventsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MoviesEventsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _tmdbIdMeta = const VerificationMeta('tmdbId');
  @override
  late final GeneratedColumn<int> tmdbId = GeneratedColumn<int>(
    'tmdb_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    $customConstraints:
        'NOT NULL REFERENCES movies_table(tmdb_id) ON DELETE CASCADE',
  );
  @override
  late final GeneratedColumnWithTypeConverter<WatchEventTypeDto?, String> type =
      GeneratedColumn<String>(
        'type',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<WatchEventTypeDto?>(
        $MoviesEventsTableTable.$convertertypen,
      );
  static const VerificationMeta _userRatingMeta = const VerificationMeta(
    'userRating',
  );
  @override
  late final GeneratedColumn<int> userRating = GeneratedColumn<int>(
    'user_rating',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _atMeta = const VerificationMeta('at');
  @override
  late final GeneratedColumn<DateTime> at = GeneratedColumn<DateTime>(
    'at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [id, tmdbId, type, userRating, at];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'movies_events_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<MoviesEventsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('tmdb_id')) {
      context.handle(
        _tmdbIdMeta,
        tmdbId.isAcceptableOrUnknown(data['tmdb_id']!, _tmdbIdMeta),
      );
    } else if (isInserting) {
      context.missing(_tmdbIdMeta);
    }
    if (data.containsKey('user_rating')) {
      context.handle(
        _userRatingMeta,
        userRating.isAcceptableOrUnknown(data['user_rating']!, _userRatingMeta),
      );
    }
    if (data.containsKey('at')) {
      context.handle(_atMeta, at.isAcceptableOrUnknown(data['at']!, _atMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MoviesEventsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MoviesEventsTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      tmdbId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}tmdb_id'],
      )!,
      type: $MoviesEventsTableTable.$convertertypen.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}type'],
        ),
      ),
      userRating: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}user_rating'],
      ),
      at: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}at'],
      )!,
    );
  }

  @override
  $MoviesEventsTableTable createAlias(String alias) {
    return $MoviesEventsTableTable(attachedDatabase, alias);
  }

  static TypeConverter<WatchEventTypeDto, String> $convertertype =
      eventTypeConverter;
  static TypeConverter<WatchEventTypeDto?, String?> $convertertypen =
      NullAwareTypeConverter.wrap($convertertype);
}

class MoviesEventsTableData extends DataClass
    implements Insertable<MoviesEventsTableData> {
  final int id;
  final int tmdbId;
  final WatchEventTypeDto? type;
  final int? userRating;
  final DateTime at;
  const MoviesEventsTableData({
    required this.id,
    required this.tmdbId,
    this.type,
    this.userRating,
    required this.at,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['tmdb_id'] = Variable<int>(tmdbId);
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(
        $MoviesEventsTableTable.$convertertypen.toSql(type),
      );
    }
    if (!nullToAbsent || userRating != null) {
      map['user_rating'] = Variable<int>(userRating);
    }
    map['at'] = Variable<DateTime>(at);
    return map;
  }

  MoviesEventsTableCompanion toCompanion(bool nullToAbsent) {
    return MoviesEventsTableCompanion(
      id: Value(id),
      tmdbId: Value(tmdbId),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      userRating: userRating == null && nullToAbsent
          ? const Value.absent()
          : Value(userRating),
      at: Value(at),
    );
  }

  factory MoviesEventsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MoviesEventsTableData(
      id: serializer.fromJson<int>(json['id']),
      tmdbId: serializer.fromJson<int>(json['tmdbId']),
      type: serializer.fromJson<WatchEventTypeDto?>(json['type']),
      userRating: serializer.fromJson<int?>(json['userRating']),
      at: serializer.fromJson<DateTime>(json['at']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'tmdbId': serializer.toJson<int>(tmdbId),
      'type': serializer.toJson<WatchEventTypeDto?>(type),
      'userRating': serializer.toJson<int?>(userRating),
      'at': serializer.toJson<DateTime>(at),
    };
  }

  MoviesEventsTableData copyWith({
    int? id,
    int? tmdbId,
    Value<WatchEventTypeDto?> type = const Value.absent(),
    Value<int?> userRating = const Value.absent(),
    DateTime? at,
  }) => MoviesEventsTableData(
    id: id ?? this.id,
    tmdbId: tmdbId ?? this.tmdbId,
    type: type.present ? type.value : this.type,
    userRating: userRating.present ? userRating.value : this.userRating,
    at: at ?? this.at,
  );
  MoviesEventsTableData copyWithCompanion(MoviesEventsTableCompanion data) {
    return MoviesEventsTableData(
      id: data.id.present ? data.id.value : this.id,
      tmdbId: data.tmdbId.present ? data.tmdbId.value : this.tmdbId,
      type: data.type.present ? data.type.value : this.type,
      userRating: data.userRating.present
          ? data.userRating.value
          : this.userRating,
      at: data.at.present ? data.at.value : this.at,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MoviesEventsTableData(')
          ..write('id: $id, ')
          ..write('tmdbId: $tmdbId, ')
          ..write('type: $type, ')
          ..write('userRating: $userRating, ')
          ..write('at: $at')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, tmdbId, type, userRating, at);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MoviesEventsTableData &&
          other.id == this.id &&
          other.tmdbId == this.tmdbId &&
          other.type == this.type &&
          other.userRating == this.userRating &&
          other.at == this.at);
}

class MoviesEventsTableCompanion
    extends UpdateCompanion<MoviesEventsTableData> {
  final Value<int> id;
  final Value<int> tmdbId;
  final Value<WatchEventTypeDto?> type;
  final Value<int?> userRating;
  final Value<DateTime> at;
  const MoviesEventsTableCompanion({
    this.id = const Value.absent(),
    this.tmdbId = const Value.absent(),
    this.type = const Value.absent(),
    this.userRating = const Value.absent(),
    this.at = const Value.absent(),
  });
  MoviesEventsTableCompanion.insert({
    this.id = const Value.absent(),
    required int tmdbId,
    this.type = const Value.absent(),
    this.userRating = const Value.absent(),
    this.at = const Value.absent(),
  }) : tmdbId = Value(tmdbId);
  static Insertable<MoviesEventsTableData> custom({
    Expression<int>? id,
    Expression<int>? tmdbId,
    Expression<String>? type,
    Expression<int>? userRating,
    Expression<DateTime>? at,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (tmdbId != null) 'tmdb_id': tmdbId,
      if (type != null) 'type': type,
      if (userRating != null) 'user_rating': userRating,
      if (at != null) 'at': at,
    });
  }

  MoviesEventsTableCompanion copyWith({
    Value<int>? id,
    Value<int>? tmdbId,
    Value<WatchEventTypeDto?>? type,
    Value<int?>? userRating,
    Value<DateTime>? at,
  }) {
    return MoviesEventsTableCompanion(
      id: id ?? this.id,
      tmdbId: tmdbId ?? this.tmdbId,
      type: type ?? this.type,
      userRating: userRating ?? this.userRating,
      at: at ?? this.at,
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
    if (type.present) {
      map['type'] = Variable<String>(
        $MoviesEventsTableTable.$convertertypen.toSql(type.value),
      );
    }
    if (userRating.present) {
      map['user_rating'] = Variable<int>(userRating.value);
    }
    if (at.present) {
      map['at'] = Variable<DateTime>(at.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoviesEventsTableCompanion(')
          ..write('id: $id, ')
          ..write('tmdbId: $tmdbId, ')
          ..write('type: $type, ')
          ..write('userRating: $userRating, ')
          ..write('at: $at')
          ..write(')'))
        .toString();
  }
}

class $SeriesEventsTableTable extends SeriesEventsTable
    with TableInfo<$SeriesEventsTableTable, SeriesEventsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SeriesEventsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _tmdbIdMeta = const VerificationMeta('tmdbId');
  @override
  late final GeneratedColumn<int> tmdbId = GeneratedColumn<int>(
    'tmdb_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    $customConstraints:
        'NOT NULL REFERENCES series_table(tmdb_id) ON DELETE CASCADE',
  );
  @override
  late final GeneratedColumnWithTypeConverter<WatchEventTypeDto?, String> type =
      GeneratedColumn<String>(
        'type',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<WatchEventTypeDto?>(
        $SeriesEventsTableTable.$convertertypen,
      );
  static const VerificationMeta _userRatingMeta = const VerificationMeta(
    'userRating',
  );
  @override
  late final GeneratedColumn<int> userRating = GeneratedColumn<int>(
    'user_rating',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _atMeta = const VerificationMeta('at');
  @override
  late final GeneratedColumn<DateTime> at = GeneratedColumn<DateTime>(
    'at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [id, tmdbId, type, userRating, at];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'series_events_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<SeriesEventsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('tmdb_id')) {
      context.handle(
        _tmdbIdMeta,
        tmdbId.isAcceptableOrUnknown(data['tmdb_id']!, _tmdbIdMeta),
      );
    } else if (isInserting) {
      context.missing(_tmdbIdMeta);
    }
    if (data.containsKey('user_rating')) {
      context.handle(
        _userRatingMeta,
        userRating.isAcceptableOrUnknown(data['user_rating']!, _userRatingMeta),
      );
    }
    if (data.containsKey('at')) {
      context.handle(_atMeta, at.isAcceptableOrUnknown(data['at']!, _atMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SeriesEventsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SeriesEventsTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      tmdbId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}tmdb_id'],
      )!,
      type: $SeriesEventsTableTable.$convertertypen.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}type'],
        ),
      ),
      userRating: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}user_rating'],
      ),
      at: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}at'],
      )!,
    );
  }

  @override
  $SeriesEventsTableTable createAlias(String alias) {
    return $SeriesEventsTableTable(attachedDatabase, alias);
  }

  static TypeConverter<WatchEventTypeDto, String> $convertertype =
      eventTypeConverter;
  static TypeConverter<WatchEventTypeDto?, String?> $convertertypen =
      NullAwareTypeConverter.wrap($convertertype);
}

class SeriesEventsTableData extends DataClass
    implements Insertable<SeriesEventsTableData> {
  final int id;
  final int tmdbId;
  final WatchEventTypeDto? type;
  final int? userRating;
  final DateTime at;
  const SeriesEventsTableData({
    required this.id,
    required this.tmdbId,
    this.type,
    this.userRating,
    required this.at,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['tmdb_id'] = Variable<int>(tmdbId);
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(
        $SeriesEventsTableTable.$convertertypen.toSql(type),
      );
    }
    if (!nullToAbsent || userRating != null) {
      map['user_rating'] = Variable<int>(userRating);
    }
    map['at'] = Variable<DateTime>(at);
    return map;
  }

  SeriesEventsTableCompanion toCompanion(bool nullToAbsent) {
    return SeriesEventsTableCompanion(
      id: Value(id),
      tmdbId: Value(tmdbId),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      userRating: userRating == null && nullToAbsent
          ? const Value.absent()
          : Value(userRating),
      at: Value(at),
    );
  }

  factory SeriesEventsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SeriesEventsTableData(
      id: serializer.fromJson<int>(json['id']),
      tmdbId: serializer.fromJson<int>(json['tmdbId']),
      type: serializer.fromJson<WatchEventTypeDto?>(json['type']),
      userRating: serializer.fromJson<int?>(json['userRating']),
      at: serializer.fromJson<DateTime>(json['at']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'tmdbId': serializer.toJson<int>(tmdbId),
      'type': serializer.toJson<WatchEventTypeDto?>(type),
      'userRating': serializer.toJson<int?>(userRating),
      'at': serializer.toJson<DateTime>(at),
    };
  }

  SeriesEventsTableData copyWith({
    int? id,
    int? tmdbId,
    Value<WatchEventTypeDto?> type = const Value.absent(),
    Value<int?> userRating = const Value.absent(),
    DateTime? at,
  }) => SeriesEventsTableData(
    id: id ?? this.id,
    tmdbId: tmdbId ?? this.tmdbId,
    type: type.present ? type.value : this.type,
    userRating: userRating.present ? userRating.value : this.userRating,
    at: at ?? this.at,
  );
  SeriesEventsTableData copyWithCompanion(SeriesEventsTableCompanion data) {
    return SeriesEventsTableData(
      id: data.id.present ? data.id.value : this.id,
      tmdbId: data.tmdbId.present ? data.tmdbId.value : this.tmdbId,
      type: data.type.present ? data.type.value : this.type,
      userRating: data.userRating.present
          ? data.userRating.value
          : this.userRating,
      at: data.at.present ? data.at.value : this.at,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SeriesEventsTableData(')
          ..write('id: $id, ')
          ..write('tmdbId: $tmdbId, ')
          ..write('type: $type, ')
          ..write('userRating: $userRating, ')
          ..write('at: $at')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, tmdbId, type, userRating, at);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SeriesEventsTableData &&
          other.id == this.id &&
          other.tmdbId == this.tmdbId &&
          other.type == this.type &&
          other.userRating == this.userRating &&
          other.at == this.at);
}

class SeriesEventsTableCompanion
    extends UpdateCompanion<SeriesEventsTableData> {
  final Value<int> id;
  final Value<int> tmdbId;
  final Value<WatchEventTypeDto?> type;
  final Value<int?> userRating;
  final Value<DateTime> at;
  const SeriesEventsTableCompanion({
    this.id = const Value.absent(),
    this.tmdbId = const Value.absent(),
    this.type = const Value.absent(),
    this.userRating = const Value.absent(),
    this.at = const Value.absent(),
  });
  SeriesEventsTableCompanion.insert({
    this.id = const Value.absent(),
    required int tmdbId,
    this.type = const Value.absent(),
    this.userRating = const Value.absent(),
    this.at = const Value.absent(),
  }) : tmdbId = Value(tmdbId);
  static Insertable<SeriesEventsTableData> custom({
    Expression<int>? id,
    Expression<int>? tmdbId,
    Expression<String>? type,
    Expression<int>? userRating,
    Expression<DateTime>? at,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (tmdbId != null) 'tmdb_id': tmdbId,
      if (type != null) 'type': type,
      if (userRating != null) 'user_rating': userRating,
      if (at != null) 'at': at,
    });
  }

  SeriesEventsTableCompanion copyWith({
    Value<int>? id,
    Value<int>? tmdbId,
    Value<WatchEventTypeDto?>? type,
    Value<int?>? userRating,
    Value<DateTime>? at,
  }) {
    return SeriesEventsTableCompanion(
      id: id ?? this.id,
      tmdbId: tmdbId ?? this.tmdbId,
      type: type ?? this.type,
      userRating: userRating ?? this.userRating,
      at: at ?? this.at,
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
    if (type.present) {
      map['type'] = Variable<String>(
        $SeriesEventsTableTable.$convertertypen.toSql(type.value),
      );
    }
    if (userRating.present) {
      map['user_rating'] = Variable<int>(userRating.value);
    }
    if (at.present) {
      map['at'] = Variable<DateTime>(at.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SeriesEventsTableCompanion(')
          ..write('id: $id, ')
          ..write('tmdbId: $tmdbId, ')
          ..write('type: $type, ')
          ..write('userRating: $userRating, ')
          ..write('at: $at')
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
  late final $SettingsTableTable settingsTable = $SettingsTableTable(this);
  late final $MoviesFilterTableTable moviesFilterTable =
      $MoviesFilterTableTable(this);
  late final $SeriesFilterTableTable seriesFilterTable =
      $SeriesFilterTableTable(this);
  late final $MoviesEventsTableTable moviesEventsTable =
      $MoviesEventsTableTable(this);
  late final $SeriesEventsTableTable seriesEventsTable =
      $SeriesEventsTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    moviesTable,
    seriesTable,
    syncUserTable,
    settingsTable,
    moviesFilterTable,
    seriesFilterTable,
    moviesEventsTable,
    seriesEventsTable,
  ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules([
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'movies_table',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('movies_events_table', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'series_table',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('series_events_table', kind: UpdateKind.delete)],
    ),
  ]);
}

typedef $$MoviesTableTableCreateCompanionBuilder =
    MoviesTableCompanion Function({
      Value<int> id,
      required int tmdbId,
      Value<List<MovieGenreDto>?> genres,
      Value<List<CountryDto>?> originCountry,
      Value<DateTime?> premiereDate,
      Value<RatingDataDto?> tmdbRating,
      Value<int?> userRating,
      Value<bool?> isInWatchlist,
      Value<bool?> isWatched,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> watchlistAddedAt,
      Value<DateTime?> lastWatchedAt,
      Value<LocalizedString?> localizedTitle,
      Value<LocalizedString?> localizedPosterUrl,
    });
typedef $$MoviesTableTableUpdateCompanionBuilder =
    MoviesTableCompanion Function({
      Value<int> id,
      Value<int> tmdbId,
      Value<List<MovieGenreDto>?> genres,
      Value<List<CountryDto>?> originCountry,
      Value<DateTime?> premiereDate,
      Value<RatingDataDto?> tmdbRating,
      Value<int?> userRating,
      Value<bool?> isInWatchlist,
      Value<bool?> isWatched,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> watchlistAddedAt,
      Value<DateTime?> lastWatchedAt,
      Value<LocalizedString?> localizedTitle,
      Value<LocalizedString?> localizedPosterUrl,
    });

final class $$MoviesTableTableReferences
    extends
        BaseReferences<_$AppLocalDatabase, $MoviesTableTable, MoviesTableData> {
  $$MoviesTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<
    $MoviesEventsTableTable,
    List<MoviesEventsTableData>
  >
  _moviesEventsTableRefsTable(_$AppLocalDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.moviesEventsTable,
        aliasName: $_aliasNameGenerator(
          db.moviesTable.tmdbId,
          db.moviesEventsTable.tmdbId,
        ),
      );

  $$MoviesEventsTableTableProcessedTableManager get moviesEventsTableRefs {
    final manager = $$MoviesEventsTableTableTableManager(
      $_db,
      $_db.moviesEventsTable,
    ).filter((f) => f.tmdbId.tmdbId.sqlEquals($_itemColumn<int>('tmdb_id')!));

    final cache = $_typedResult.readTableOrNull(
      _moviesEventsTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

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
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get tmdbId => $composableBuilder(
    column: $table.tmdbId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<
    List<MovieGenreDto>?,
    List<MovieGenreDto>,
    String
  >
  get genres => $composableBuilder(
    column: $table.genres,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnWithTypeConverterFilters<List<CountryDto>?, List<CountryDto>, String>
  get originCountry => $composableBuilder(
    column: $table.originCountry,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<DateTime> get premiereDate => $composableBuilder(
    column: $table.premiereDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<RatingDataDto?, RatingDataDto, String>
  get tmdbRating => $composableBuilder(
    column: $table.tmdbRating,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<int> get userRating => $composableBuilder(
    column: $table.userRating,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isInWatchlist => $composableBuilder(
    column: $table.isInWatchlist,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isWatched => $composableBuilder(
    column: $table.isWatched,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get watchlistAddedAt => $composableBuilder(
    column: $table.watchlistAddedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastWatchedAt => $composableBuilder(
    column: $table.lastWatchedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<LocalizedString?, LocalizedString, String>
  get localizedTitle => $composableBuilder(
    column: $table.localizedTitle,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnWithTypeConverterFilters<LocalizedString?, LocalizedString, String>
  get localizedPosterUrl => $composableBuilder(
    column: $table.localizedPosterUrl,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  Expression<bool> moviesEventsTableRefs(
    Expression<bool> Function($$MoviesEventsTableTableFilterComposer f) f,
  ) {
    final $$MoviesEventsTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tmdbId,
      referencedTable: $db.moviesEventsTable,
      getReferencedColumn: (t) => t.tmdbId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MoviesEventsTableTableFilterComposer(
            $db: $db,
            $table: $db.moviesEventsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
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
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get tmdbId => $composableBuilder(
    column: $table.tmdbId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get genres => $composableBuilder(
    column: $table.genres,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get originCountry => $composableBuilder(
    column: $table.originCountry,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get premiereDate => $composableBuilder(
    column: $table.premiereDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tmdbRating => $composableBuilder(
    column: $table.tmdbRating,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get userRating => $composableBuilder(
    column: $table.userRating,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isInWatchlist => $composableBuilder(
    column: $table.isInWatchlist,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isWatched => $composableBuilder(
    column: $table.isWatched,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get watchlistAddedAt => $composableBuilder(
    column: $table.watchlistAddedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastWatchedAt => $composableBuilder(
    column: $table.lastWatchedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get localizedTitle => $composableBuilder(
    column: $table.localizedTitle,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get localizedPosterUrl => $composableBuilder(
    column: $table.localizedPosterUrl,
    builder: (column) => ColumnOrderings(column),
  );
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

  GeneratedColumnWithTypeConverter<List<CountryDto>?, String>
  get originCountry => $composableBuilder(
    column: $table.originCountry,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get premiereDate => $composableBuilder(
    column: $table.premiereDate,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<RatingDataDto?, String> get tmdbRating =>
      $composableBuilder(
        column: $table.tmdbRating,
        builder: (column) => column,
      );

  GeneratedColumn<int> get userRating => $composableBuilder(
    column: $table.userRating,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isInWatchlist => $composableBuilder(
    column: $table.isInWatchlist,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isWatched =>
      $composableBuilder(column: $table.isWatched, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get watchlistAddedAt => $composableBuilder(
    column: $table.watchlistAddedAt,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get lastWatchedAt => $composableBuilder(
    column: $table.lastWatchedAt,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<LocalizedString?, String>
  get localizedTitle => $composableBuilder(
    column: $table.localizedTitle,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<LocalizedString?, String>
  get localizedPosterUrl => $composableBuilder(
    column: $table.localizedPosterUrl,
    builder: (column) => column,
  );

  Expression<T> moviesEventsTableRefs<T extends Object>(
    Expression<T> Function($$MoviesEventsTableTableAnnotationComposer a) f,
  ) {
    final $$MoviesEventsTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.tmdbId,
          referencedTable: $db.moviesEventsTable,
          getReferencedColumn: (t) => t.tmdbId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$MoviesEventsTableTableAnnotationComposer(
                $db: $db,
                $table: $db.moviesEventsTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$MoviesTableTableTableManager
    extends
        RootTableManager<
          _$AppLocalDatabase,
          $MoviesTableTable,
          MoviesTableData,
          $$MoviesTableTableFilterComposer,
          $$MoviesTableTableOrderingComposer,
          $$MoviesTableTableAnnotationComposer,
          $$MoviesTableTableCreateCompanionBuilder,
          $$MoviesTableTableUpdateCompanionBuilder,
          (MoviesTableData, $$MoviesTableTableReferences),
          MoviesTableData,
          PrefetchHooks Function({bool moviesEventsTableRefs})
        > {
  $$MoviesTableTableTableManager(_$AppLocalDatabase db, $MoviesTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MoviesTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MoviesTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MoviesTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> tmdbId = const Value.absent(),
                Value<List<MovieGenreDto>?> genres = const Value.absent(),
                Value<List<CountryDto>?> originCountry = const Value.absent(),
                Value<DateTime?> premiereDate = const Value.absent(),
                Value<RatingDataDto?> tmdbRating = const Value.absent(),
                Value<int?> userRating = const Value.absent(),
                Value<bool?> isInWatchlist = const Value.absent(),
                Value<bool?> isWatched = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> watchlistAddedAt = const Value.absent(),
                Value<DateTime?> lastWatchedAt = const Value.absent(),
                Value<LocalizedString?> localizedTitle = const Value.absent(),
                Value<LocalizedString?> localizedPosterUrl =
                    const Value.absent(),
              }) => MoviesTableCompanion(
                id: id,
                tmdbId: tmdbId,
                genres: genres,
                originCountry: originCountry,
                premiereDate: premiereDate,
                tmdbRating: tmdbRating,
                userRating: userRating,
                isInWatchlist: isInWatchlist,
                isWatched: isWatched,
                createdAt: createdAt,
                updatedAt: updatedAt,
                watchlistAddedAt: watchlistAddedAt,
                lastWatchedAt: lastWatchedAt,
                localizedTitle: localizedTitle,
                localizedPosterUrl: localizedPosterUrl,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int tmdbId,
                Value<List<MovieGenreDto>?> genres = const Value.absent(),
                Value<List<CountryDto>?> originCountry = const Value.absent(),
                Value<DateTime?> premiereDate = const Value.absent(),
                Value<RatingDataDto?> tmdbRating = const Value.absent(),
                Value<int?> userRating = const Value.absent(),
                Value<bool?> isInWatchlist = const Value.absent(),
                Value<bool?> isWatched = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> watchlistAddedAt = const Value.absent(),
                Value<DateTime?> lastWatchedAt = const Value.absent(),
                Value<LocalizedString?> localizedTitle = const Value.absent(),
                Value<LocalizedString?> localizedPosterUrl =
                    const Value.absent(),
              }) => MoviesTableCompanion.insert(
                id: id,
                tmdbId: tmdbId,
                genres: genres,
                originCountry: originCountry,
                premiereDate: premiereDate,
                tmdbRating: tmdbRating,
                userRating: userRating,
                isInWatchlist: isInWatchlist,
                isWatched: isWatched,
                createdAt: createdAt,
                updatedAt: updatedAt,
                watchlistAddedAt: watchlistAddedAt,
                lastWatchedAt: lastWatchedAt,
                localizedTitle: localizedTitle,
                localizedPosterUrl: localizedPosterUrl,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$MoviesTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({moviesEventsTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (moviesEventsTableRefs) db.moviesEventsTable,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (moviesEventsTableRefs)
                    await $_getPrefetchedData<
                      MoviesTableData,
                      $MoviesTableTable,
                      MoviesEventsTableData
                    >(
                      currentTable: table,
                      referencedTable: $$MoviesTableTableReferences
                          ._moviesEventsTableRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$MoviesTableTableReferences(
                            db,
                            table,
                            p0,
                          ).moviesEventsTableRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.tmdbId == item.tmdbId),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$MoviesTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppLocalDatabase,
      $MoviesTableTable,
      MoviesTableData,
      $$MoviesTableTableFilterComposer,
      $$MoviesTableTableOrderingComposer,
      $$MoviesTableTableAnnotationComposer,
      $$MoviesTableTableCreateCompanionBuilder,
      $$MoviesTableTableUpdateCompanionBuilder,
      (MoviesTableData, $$MoviesTableTableReferences),
      MoviesTableData,
      PrefetchHooks Function({bool moviesEventsTableRefs})
    >;
typedef $$SeriesTableTableCreateCompanionBuilder =
    SeriesTableCompanion Function({
      Value<int> id,
      required int tmdbId,
      Value<String?> posterUrl,
      Value<List<SeriesGenreDto>?> genres,
      Value<List<CountryDto>?> originCountry,
      Value<DateTime?> premiereDate,
      Value<String?> title,
      Value<RatingDataDto?> tmdbRating,
      Value<int?> userRating,
      Value<bool?> isInWatchlist,
      Value<bool?> isWatched,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> watchlistAddedAt,
      Value<DateTime?> lastWatchedAt,
      Value<LocalizedString?> localizedTitle,
      Value<LocalizedString?> localizedPosterUrl,
    });
typedef $$SeriesTableTableUpdateCompanionBuilder =
    SeriesTableCompanion Function({
      Value<int> id,
      Value<int> tmdbId,
      Value<String?> posterUrl,
      Value<List<SeriesGenreDto>?> genres,
      Value<List<CountryDto>?> originCountry,
      Value<DateTime?> premiereDate,
      Value<String?> title,
      Value<RatingDataDto?> tmdbRating,
      Value<int?> userRating,
      Value<bool?> isInWatchlist,
      Value<bool?> isWatched,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> watchlistAddedAt,
      Value<DateTime?> lastWatchedAt,
      Value<LocalizedString?> localizedTitle,
      Value<LocalizedString?> localizedPosterUrl,
    });

final class $$SeriesTableTableReferences
    extends
        BaseReferences<_$AppLocalDatabase, $SeriesTableTable, SeriesTableData> {
  $$SeriesTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<
    $SeriesEventsTableTable,
    List<SeriesEventsTableData>
  >
  _seriesEventsTableRefsTable(_$AppLocalDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.seriesEventsTable,
        aliasName: $_aliasNameGenerator(
          db.seriesTable.tmdbId,
          db.seriesEventsTable.tmdbId,
        ),
      );

  $$SeriesEventsTableTableProcessedTableManager get seriesEventsTableRefs {
    final manager = $$SeriesEventsTableTableTableManager(
      $_db,
      $_db.seriesEventsTable,
    ).filter((f) => f.tmdbId.tmdbId.sqlEquals($_itemColumn<int>('tmdb_id')!));

    final cache = $_typedResult.readTableOrNull(
      _seriesEventsTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

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
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get tmdbId => $composableBuilder(
    column: $table.tmdbId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get posterUrl => $composableBuilder(
    column: $table.posterUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<
    List<SeriesGenreDto>?,
    List<SeriesGenreDto>,
    String
  >
  get genres => $composableBuilder(
    column: $table.genres,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnWithTypeConverterFilters<List<CountryDto>?, List<CountryDto>, String>
  get originCountry => $composableBuilder(
    column: $table.originCountry,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<DateTime> get premiereDate => $composableBuilder(
    column: $table.premiereDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<RatingDataDto?, RatingDataDto, String>
  get tmdbRating => $composableBuilder(
    column: $table.tmdbRating,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<int> get userRating => $composableBuilder(
    column: $table.userRating,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isInWatchlist => $composableBuilder(
    column: $table.isInWatchlist,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isWatched => $composableBuilder(
    column: $table.isWatched,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get watchlistAddedAt => $composableBuilder(
    column: $table.watchlistAddedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastWatchedAt => $composableBuilder(
    column: $table.lastWatchedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<LocalizedString?, LocalizedString, String>
  get localizedTitle => $composableBuilder(
    column: $table.localizedTitle,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnWithTypeConverterFilters<LocalizedString?, LocalizedString, String>
  get localizedPosterUrl => $composableBuilder(
    column: $table.localizedPosterUrl,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  Expression<bool> seriesEventsTableRefs(
    Expression<bool> Function($$SeriesEventsTableTableFilterComposer f) f,
  ) {
    final $$SeriesEventsTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tmdbId,
      referencedTable: $db.seriesEventsTable,
      getReferencedColumn: (t) => t.tmdbId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SeriesEventsTableTableFilterComposer(
            $db: $db,
            $table: $db.seriesEventsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
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
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get tmdbId => $composableBuilder(
    column: $table.tmdbId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get posterUrl => $composableBuilder(
    column: $table.posterUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get genres => $composableBuilder(
    column: $table.genres,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get originCountry => $composableBuilder(
    column: $table.originCountry,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get premiereDate => $composableBuilder(
    column: $table.premiereDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tmdbRating => $composableBuilder(
    column: $table.tmdbRating,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get userRating => $composableBuilder(
    column: $table.userRating,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isInWatchlist => $composableBuilder(
    column: $table.isInWatchlist,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isWatched => $composableBuilder(
    column: $table.isWatched,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get watchlistAddedAt => $composableBuilder(
    column: $table.watchlistAddedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastWatchedAt => $composableBuilder(
    column: $table.lastWatchedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get localizedTitle => $composableBuilder(
    column: $table.localizedTitle,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get localizedPosterUrl => $composableBuilder(
    column: $table.localizedPosterUrl,
    builder: (column) => ColumnOrderings(column),
  );
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

  GeneratedColumnWithTypeConverter<List<CountryDto>?, String>
  get originCountry => $composableBuilder(
    column: $table.originCountry,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get premiereDate => $composableBuilder(
    column: $table.premiereDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumnWithTypeConverter<RatingDataDto?, String> get tmdbRating =>
      $composableBuilder(
        column: $table.tmdbRating,
        builder: (column) => column,
      );

  GeneratedColumn<int> get userRating => $composableBuilder(
    column: $table.userRating,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isInWatchlist => $composableBuilder(
    column: $table.isInWatchlist,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isWatched =>
      $composableBuilder(column: $table.isWatched, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get watchlistAddedAt => $composableBuilder(
    column: $table.watchlistAddedAt,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get lastWatchedAt => $composableBuilder(
    column: $table.lastWatchedAt,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<LocalizedString?, String>
  get localizedTitle => $composableBuilder(
    column: $table.localizedTitle,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<LocalizedString?, String>
  get localizedPosterUrl => $composableBuilder(
    column: $table.localizedPosterUrl,
    builder: (column) => column,
  );

  Expression<T> seriesEventsTableRefs<T extends Object>(
    Expression<T> Function($$SeriesEventsTableTableAnnotationComposer a) f,
  ) {
    final $$SeriesEventsTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.tmdbId,
          referencedTable: $db.seriesEventsTable,
          getReferencedColumn: (t) => t.tmdbId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$SeriesEventsTableTableAnnotationComposer(
                $db: $db,
                $table: $db.seriesEventsTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$SeriesTableTableTableManager
    extends
        RootTableManager<
          _$AppLocalDatabase,
          $SeriesTableTable,
          SeriesTableData,
          $$SeriesTableTableFilterComposer,
          $$SeriesTableTableOrderingComposer,
          $$SeriesTableTableAnnotationComposer,
          $$SeriesTableTableCreateCompanionBuilder,
          $$SeriesTableTableUpdateCompanionBuilder,
          (SeriesTableData, $$SeriesTableTableReferences),
          SeriesTableData,
          PrefetchHooks Function({bool seriesEventsTableRefs})
        > {
  $$SeriesTableTableTableManager(_$AppLocalDatabase db, $SeriesTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SeriesTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SeriesTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SeriesTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> tmdbId = const Value.absent(),
                Value<String?> posterUrl = const Value.absent(),
                Value<List<SeriesGenreDto>?> genres = const Value.absent(),
                Value<List<CountryDto>?> originCountry = const Value.absent(),
                Value<DateTime?> premiereDate = const Value.absent(),
                Value<String?> title = const Value.absent(),
                Value<RatingDataDto?> tmdbRating = const Value.absent(),
                Value<int?> userRating = const Value.absent(),
                Value<bool?> isInWatchlist = const Value.absent(),
                Value<bool?> isWatched = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> watchlistAddedAt = const Value.absent(),
                Value<DateTime?> lastWatchedAt = const Value.absent(),
                Value<LocalizedString?> localizedTitle = const Value.absent(),
                Value<LocalizedString?> localizedPosterUrl =
                    const Value.absent(),
              }) => SeriesTableCompanion(
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
                watchlistAddedAt: watchlistAddedAt,
                lastWatchedAt: lastWatchedAt,
                localizedTitle: localizedTitle,
                localizedPosterUrl: localizedPosterUrl,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int tmdbId,
                Value<String?> posterUrl = const Value.absent(),
                Value<List<SeriesGenreDto>?> genres = const Value.absent(),
                Value<List<CountryDto>?> originCountry = const Value.absent(),
                Value<DateTime?> premiereDate = const Value.absent(),
                Value<String?> title = const Value.absent(),
                Value<RatingDataDto?> tmdbRating = const Value.absent(),
                Value<int?> userRating = const Value.absent(),
                Value<bool?> isInWatchlist = const Value.absent(),
                Value<bool?> isWatched = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> watchlistAddedAt = const Value.absent(),
                Value<DateTime?> lastWatchedAt = const Value.absent(),
                Value<LocalizedString?> localizedTitle = const Value.absent(),
                Value<LocalizedString?> localizedPosterUrl =
                    const Value.absent(),
              }) => SeriesTableCompanion.insert(
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
                watchlistAddedAt: watchlistAddedAt,
                lastWatchedAt: lastWatchedAt,
                localizedTitle: localizedTitle,
                localizedPosterUrl: localizedPosterUrl,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$SeriesTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({seriesEventsTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (seriesEventsTableRefs) db.seriesEventsTable,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (seriesEventsTableRefs)
                    await $_getPrefetchedData<
                      SeriesTableData,
                      $SeriesTableTable,
                      SeriesEventsTableData
                    >(
                      currentTable: table,
                      referencedTable: $$SeriesTableTableReferences
                          ._seriesEventsTableRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$SeriesTableTableReferences(
                            db,
                            table,
                            p0,
                          ).seriesEventsTableRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.tmdbId == item.tmdbId),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$SeriesTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppLocalDatabase,
      $SeriesTableTable,
      SeriesTableData,
      $$SeriesTableTableFilterComposer,
      $$SeriesTableTableOrderingComposer,
      $$SeriesTableTableAnnotationComposer,
      $$SeriesTableTableCreateCompanionBuilder,
      $$SeriesTableTableUpdateCompanionBuilder,
      (SeriesTableData, $$SeriesTableTableReferences),
      SeriesTableData,
      PrefetchHooks Function({bool seriesEventsTableRefs})
    >;
typedef $$SyncUserTableTableCreateCompanionBuilder =
    SyncUserTableCompanion Function({
      Value<int> id,
      required String uid,
      required String email,
      Value<DateTime> moviesSyncedAt,
      Value<DateTime> seriesSyncedAt,
    });
typedef $$SyncUserTableTableUpdateCompanionBuilder =
    SyncUserTableCompanion Function({
      Value<int> id,
      Value<String> uid,
      Value<String> email,
      Value<DateTime> moviesSyncedAt,
      Value<DateTime> seriesSyncedAt,
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
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get uid => $composableBuilder(
    column: $table.uid,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get moviesSyncedAt => $composableBuilder(
    column: $table.moviesSyncedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get seriesSyncedAt => $composableBuilder(
    column: $table.seriesSyncedAt,
    builder: (column) => ColumnFilters(column),
  );
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
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get uid => $composableBuilder(
    column: $table.uid,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get moviesSyncedAt => $composableBuilder(
    column: $table.moviesSyncedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get seriesSyncedAt => $composableBuilder(
    column: $table.seriesSyncedAt,
    builder: (column) => ColumnOrderings(column),
  );
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

  GeneratedColumn<DateTime> get moviesSyncedAt => $composableBuilder(
    column: $table.moviesSyncedAt,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get seriesSyncedAt => $composableBuilder(
    column: $table.seriesSyncedAt,
    builder: (column) => column,
  );
}

class $$SyncUserTableTableTableManager
    extends
        RootTableManager<
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
            BaseReferences<
              _$AppLocalDatabase,
              $SyncUserTableTable,
              SyncUserTableData
            >,
          ),
          SyncUserTableData,
          PrefetchHooks Function()
        > {
  $$SyncUserTableTableTableManager(
    _$AppLocalDatabase db,
    $SyncUserTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SyncUserTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SyncUserTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SyncUserTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> uid = const Value.absent(),
                Value<String> email = const Value.absent(),
                Value<DateTime> moviesSyncedAt = const Value.absent(),
                Value<DateTime> seriesSyncedAt = const Value.absent(),
              }) => SyncUserTableCompanion(
                id: id,
                uid: uid,
                email: email,
                moviesSyncedAt: moviesSyncedAt,
                seriesSyncedAt: seriesSyncedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String uid,
                required String email,
                Value<DateTime> moviesSyncedAt = const Value.absent(),
                Value<DateTime> seriesSyncedAt = const Value.absent(),
              }) => SyncUserTableCompanion.insert(
                id: id,
                uid: uid,
                email: email,
                moviesSyncedAt: moviesSyncedAt,
                seriesSyncedAt: seriesSyncedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SyncUserTableTableProcessedTableManager =
    ProcessedTableManager<
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
        BaseReferences<
          _$AppLocalDatabase,
          $SyncUserTableTable,
          SyncUserTableData
        >,
      ),
      SyncUserTableData,
      PrefetchHooks Function()
    >;
typedef $$SettingsTableTableCreateCompanionBuilder =
    SettingsTableCompanion Function({
      Value<int> id,
      Value<bool?> isFirstLaunch,
    });
typedef $$SettingsTableTableUpdateCompanionBuilder =
    SettingsTableCompanion Function({
      Value<int> id,
      Value<bool?> isFirstLaunch,
    });

class $$SettingsTableTableFilterComposer
    extends Composer<_$AppLocalDatabase, $SettingsTableTable> {
  $$SettingsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isFirstLaunch => $composableBuilder(
    column: $table.isFirstLaunch,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SettingsTableTableOrderingComposer
    extends Composer<_$AppLocalDatabase, $SettingsTableTable> {
  $$SettingsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isFirstLaunch => $composableBuilder(
    column: $table.isFirstLaunch,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SettingsTableTableAnnotationComposer
    extends Composer<_$AppLocalDatabase, $SettingsTableTable> {
  $$SettingsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<bool> get isFirstLaunch => $composableBuilder(
    column: $table.isFirstLaunch,
    builder: (column) => column,
  );
}

class $$SettingsTableTableTableManager
    extends
        RootTableManager<
          _$AppLocalDatabase,
          $SettingsTableTable,
          SettingsTableData,
          $$SettingsTableTableFilterComposer,
          $$SettingsTableTableOrderingComposer,
          $$SettingsTableTableAnnotationComposer,
          $$SettingsTableTableCreateCompanionBuilder,
          $$SettingsTableTableUpdateCompanionBuilder,
          (
            SettingsTableData,
            BaseReferences<
              _$AppLocalDatabase,
              $SettingsTableTable,
              SettingsTableData
            >,
          ),
          SettingsTableData,
          PrefetchHooks Function()
        > {
  $$SettingsTableTableTableManager(
    _$AppLocalDatabase db,
    $SettingsTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SettingsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SettingsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SettingsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<bool?> isFirstLaunch = const Value.absent(),
              }) =>
                  SettingsTableCompanion(id: id, isFirstLaunch: isFirstLaunch),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<bool?> isFirstLaunch = const Value.absent(),
              }) => SettingsTableCompanion.insert(
                id: id,
                isFirstLaunch: isFirstLaunch,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SettingsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppLocalDatabase,
      $SettingsTableTable,
      SettingsTableData,
      $$SettingsTableTableFilterComposer,
      $$SettingsTableTableOrderingComposer,
      $$SettingsTableTableAnnotationComposer,
      $$SettingsTableTableCreateCompanionBuilder,
      $$SettingsTableTableUpdateCompanionBuilder,
      (
        SettingsTableData,
        BaseReferences<
          _$AppLocalDatabase,
          $SettingsTableTable,
          SettingsTableData
        >,
      ),
      SettingsTableData,
      PrefetchHooks Function()
    >;
typedef $$MoviesFilterTableTableCreateCompanionBuilder =
    MoviesFilterTableCompanion Function({
      Value<int> id,
      Value<SortByDto?> sortBy,
      Value<List<CountryDto>?> withCountries,
      Value<List<MovieGenreDto>?> withGenres,
      Value<List<MovieGenreDto>?> withoutGenres,
      Value<bool?> includeWatched,
      Value<bool?> includeWatchlist,
      Value<DateTime?> fromDate,
      Value<DateTime?> toDate,
    });
typedef $$MoviesFilterTableTableUpdateCompanionBuilder =
    MoviesFilterTableCompanion Function({
      Value<int> id,
      Value<SortByDto?> sortBy,
      Value<List<CountryDto>?> withCountries,
      Value<List<MovieGenreDto>?> withGenres,
      Value<List<MovieGenreDto>?> withoutGenres,
      Value<bool?> includeWatched,
      Value<bool?> includeWatchlist,
      Value<DateTime?> fromDate,
      Value<DateTime?> toDate,
    });

class $$MoviesFilterTableTableFilterComposer
    extends Composer<_$AppLocalDatabase, $MoviesFilterTableTable> {
  $$MoviesFilterTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<SortByDto?, SortByDto, String> get sortBy =>
      $composableBuilder(
        column: $table.sortBy,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );

  ColumnWithTypeConverterFilters<List<CountryDto>?, List<CountryDto>, String>
  get withCountries => $composableBuilder(
    column: $table.withCountries,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnWithTypeConverterFilters<
    List<MovieGenreDto>?,
    List<MovieGenreDto>,
    String
  >
  get withGenres => $composableBuilder(
    column: $table.withGenres,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnWithTypeConverterFilters<
    List<MovieGenreDto>?,
    List<MovieGenreDto>,
    String
  >
  get withoutGenres => $composableBuilder(
    column: $table.withoutGenres,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<bool> get includeWatched => $composableBuilder(
    column: $table.includeWatched,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get includeWatchlist => $composableBuilder(
    column: $table.includeWatchlist,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get fromDate => $composableBuilder(
    column: $table.fromDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get toDate => $composableBuilder(
    column: $table.toDate,
    builder: (column) => ColumnFilters(column),
  );
}

class $$MoviesFilterTableTableOrderingComposer
    extends Composer<_$AppLocalDatabase, $MoviesFilterTableTable> {
  $$MoviesFilterTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sortBy => $composableBuilder(
    column: $table.sortBy,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get withCountries => $composableBuilder(
    column: $table.withCountries,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get withGenres => $composableBuilder(
    column: $table.withGenres,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get withoutGenres => $composableBuilder(
    column: $table.withoutGenres,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get includeWatched => $composableBuilder(
    column: $table.includeWatched,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get includeWatchlist => $composableBuilder(
    column: $table.includeWatchlist,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get fromDate => $composableBuilder(
    column: $table.fromDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get toDate => $composableBuilder(
    column: $table.toDate,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$MoviesFilterTableTableAnnotationComposer
    extends Composer<_$AppLocalDatabase, $MoviesFilterTableTable> {
  $$MoviesFilterTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumnWithTypeConverter<SortByDto?, String> get sortBy =>
      $composableBuilder(column: $table.sortBy, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<CountryDto>?, String>
  get withCountries => $composableBuilder(
    column: $table.withCountries,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<List<MovieGenreDto>?, String>
  get withGenres => $composableBuilder(
    column: $table.withGenres,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<List<MovieGenreDto>?, String>
  get withoutGenres => $composableBuilder(
    column: $table.withoutGenres,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get includeWatched => $composableBuilder(
    column: $table.includeWatched,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get includeWatchlist => $composableBuilder(
    column: $table.includeWatchlist,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get fromDate =>
      $composableBuilder(column: $table.fromDate, builder: (column) => column);

  GeneratedColumn<DateTime> get toDate =>
      $composableBuilder(column: $table.toDate, builder: (column) => column);
}

class $$MoviesFilterTableTableTableManager
    extends
        RootTableManager<
          _$AppLocalDatabase,
          $MoviesFilterTableTable,
          MoviesFilterTableData,
          $$MoviesFilterTableTableFilterComposer,
          $$MoviesFilterTableTableOrderingComposer,
          $$MoviesFilterTableTableAnnotationComposer,
          $$MoviesFilterTableTableCreateCompanionBuilder,
          $$MoviesFilterTableTableUpdateCompanionBuilder,
          (
            MoviesFilterTableData,
            BaseReferences<
              _$AppLocalDatabase,
              $MoviesFilterTableTable,
              MoviesFilterTableData
            >,
          ),
          MoviesFilterTableData,
          PrefetchHooks Function()
        > {
  $$MoviesFilterTableTableTableManager(
    _$AppLocalDatabase db,
    $MoviesFilterTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MoviesFilterTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MoviesFilterTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MoviesFilterTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<SortByDto?> sortBy = const Value.absent(),
                Value<List<CountryDto>?> withCountries = const Value.absent(),
                Value<List<MovieGenreDto>?> withGenres = const Value.absent(),
                Value<List<MovieGenreDto>?> withoutGenres =
                    const Value.absent(),
                Value<bool?> includeWatched = const Value.absent(),
                Value<bool?> includeWatchlist = const Value.absent(),
                Value<DateTime?> fromDate = const Value.absent(),
                Value<DateTime?> toDate = const Value.absent(),
              }) => MoviesFilterTableCompanion(
                id: id,
                sortBy: sortBy,
                withCountries: withCountries,
                withGenres: withGenres,
                withoutGenres: withoutGenres,
                includeWatched: includeWatched,
                includeWatchlist: includeWatchlist,
                fromDate: fromDate,
                toDate: toDate,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<SortByDto?> sortBy = const Value.absent(),
                Value<List<CountryDto>?> withCountries = const Value.absent(),
                Value<List<MovieGenreDto>?> withGenres = const Value.absent(),
                Value<List<MovieGenreDto>?> withoutGenres =
                    const Value.absent(),
                Value<bool?> includeWatched = const Value.absent(),
                Value<bool?> includeWatchlist = const Value.absent(),
                Value<DateTime?> fromDate = const Value.absent(),
                Value<DateTime?> toDate = const Value.absent(),
              }) => MoviesFilterTableCompanion.insert(
                id: id,
                sortBy: sortBy,
                withCountries: withCountries,
                withGenres: withGenres,
                withoutGenres: withoutGenres,
                includeWatched: includeWatched,
                includeWatchlist: includeWatchlist,
                fromDate: fromDate,
                toDate: toDate,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$MoviesFilterTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppLocalDatabase,
      $MoviesFilterTableTable,
      MoviesFilterTableData,
      $$MoviesFilterTableTableFilterComposer,
      $$MoviesFilterTableTableOrderingComposer,
      $$MoviesFilterTableTableAnnotationComposer,
      $$MoviesFilterTableTableCreateCompanionBuilder,
      $$MoviesFilterTableTableUpdateCompanionBuilder,
      (
        MoviesFilterTableData,
        BaseReferences<
          _$AppLocalDatabase,
          $MoviesFilterTableTable,
          MoviesFilterTableData
        >,
      ),
      MoviesFilterTableData,
      PrefetchHooks Function()
    >;
typedef $$SeriesFilterTableTableCreateCompanionBuilder =
    SeriesFilterTableCompanion Function({
      Value<int> id,
      Value<SortByDto?> sortBy,
      Value<List<CountryDto>?> withCountries,
      Value<List<SeriesGenreDto>?> withGenres,
      Value<List<SeriesGenreDto>?> withoutGenres,
      Value<bool?> includeWatched,
      Value<bool?> includeWatchlist,
      Value<DateTime?> fromDate,
      Value<DateTime?> toDate,
    });
typedef $$SeriesFilterTableTableUpdateCompanionBuilder =
    SeriesFilterTableCompanion Function({
      Value<int> id,
      Value<SortByDto?> sortBy,
      Value<List<CountryDto>?> withCountries,
      Value<List<SeriesGenreDto>?> withGenres,
      Value<List<SeriesGenreDto>?> withoutGenres,
      Value<bool?> includeWatched,
      Value<bool?> includeWatchlist,
      Value<DateTime?> fromDate,
      Value<DateTime?> toDate,
    });

class $$SeriesFilterTableTableFilterComposer
    extends Composer<_$AppLocalDatabase, $SeriesFilterTableTable> {
  $$SeriesFilterTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<SortByDto?, SortByDto, String> get sortBy =>
      $composableBuilder(
        column: $table.sortBy,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );

  ColumnWithTypeConverterFilters<List<CountryDto>?, List<CountryDto>, String>
  get withCountries => $composableBuilder(
    column: $table.withCountries,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnWithTypeConverterFilters<
    List<SeriesGenreDto>?,
    List<SeriesGenreDto>,
    String
  >
  get withGenres => $composableBuilder(
    column: $table.withGenres,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnWithTypeConverterFilters<
    List<SeriesGenreDto>?,
    List<SeriesGenreDto>,
    String
  >
  get withoutGenres => $composableBuilder(
    column: $table.withoutGenres,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<bool> get includeWatched => $composableBuilder(
    column: $table.includeWatched,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get includeWatchlist => $composableBuilder(
    column: $table.includeWatchlist,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get fromDate => $composableBuilder(
    column: $table.fromDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get toDate => $composableBuilder(
    column: $table.toDate,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SeriesFilterTableTableOrderingComposer
    extends Composer<_$AppLocalDatabase, $SeriesFilterTableTable> {
  $$SeriesFilterTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sortBy => $composableBuilder(
    column: $table.sortBy,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get withCountries => $composableBuilder(
    column: $table.withCountries,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get withGenres => $composableBuilder(
    column: $table.withGenres,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get withoutGenres => $composableBuilder(
    column: $table.withoutGenres,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get includeWatched => $composableBuilder(
    column: $table.includeWatched,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get includeWatchlist => $composableBuilder(
    column: $table.includeWatchlist,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get fromDate => $composableBuilder(
    column: $table.fromDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get toDate => $composableBuilder(
    column: $table.toDate,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SeriesFilterTableTableAnnotationComposer
    extends Composer<_$AppLocalDatabase, $SeriesFilterTableTable> {
  $$SeriesFilterTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumnWithTypeConverter<SortByDto?, String> get sortBy =>
      $composableBuilder(column: $table.sortBy, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<CountryDto>?, String>
  get withCountries => $composableBuilder(
    column: $table.withCountries,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<List<SeriesGenreDto>?, String>
  get withGenres => $composableBuilder(
    column: $table.withGenres,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<List<SeriesGenreDto>?, String>
  get withoutGenres => $composableBuilder(
    column: $table.withoutGenres,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get includeWatched => $composableBuilder(
    column: $table.includeWatched,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get includeWatchlist => $composableBuilder(
    column: $table.includeWatchlist,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get fromDate =>
      $composableBuilder(column: $table.fromDate, builder: (column) => column);

  GeneratedColumn<DateTime> get toDate =>
      $composableBuilder(column: $table.toDate, builder: (column) => column);
}

class $$SeriesFilterTableTableTableManager
    extends
        RootTableManager<
          _$AppLocalDatabase,
          $SeriesFilterTableTable,
          SeriesFilterTableData,
          $$SeriesFilterTableTableFilterComposer,
          $$SeriesFilterTableTableOrderingComposer,
          $$SeriesFilterTableTableAnnotationComposer,
          $$SeriesFilterTableTableCreateCompanionBuilder,
          $$SeriesFilterTableTableUpdateCompanionBuilder,
          (
            SeriesFilterTableData,
            BaseReferences<
              _$AppLocalDatabase,
              $SeriesFilterTableTable,
              SeriesFilterTableData
            >,
          ),
          SeriesFilterTableData,
          PrefetchHooks Function()
        > {
  $$SeriesFilterTableTableTableManager(
    _$AppLocalDatabase db,
    $SeriesFilterTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SeriesFilterTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SeriesFilterTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SeriesFilterTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<SortByDto?> sortBy = const Value.absent(),
                Value<List<CountryDto>?> withCountries = const Value.absent(),
                Value<List<SeriesGenreDto>?> withGenres = const Value.absent(),
                Value<List<SeriesGenreDto>?> withoutGenres =
                    const Value.absent(),
                Value<bool?> includeWatched = const Value.absent(),
                Value<bool?> includeWatchlist = const Value.absent(),
                Value<DateTime?> fromDate = const Value.absent(),
                Value<DateTime?> toDate = const Value.absent(),
              }) => SeriesFilterTableCompanion(
                id: id,
                sortBy: sortBy,
                withCountries: withCountries,
                withGenres: withGenres,
                withoutGenres: withoutGenres,
                includeWatched: includeWatched,
                includeWatchlist: includeWatchlist,
                fromDate: fromDate,
                toDate: toDate,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<SortByDto?> sortBy = const Value.absent(),
                Value<List<CountryDto>?> withCountries = const Value.absent(),
                Value<List<SeriesGenreDto>?> withGenres = const Value.absent(),
                Value<List<SeriesGenreDto>?> withoutGenres =
                    const Value.absent(),
                Value<bool?> includeWatched = const Value.absent(),
                Value<bool?> includeWatchlist = const Value.absent(),
                Value<DateTime?> fromDate = const Value.absent(),
                Value<DateTime?> toDate = const Value.absent(),
              }) => SeriesFilterTableCompanion.insert(
                id: id,
                sortBy: sortBy,
                withCountries: withCountries,
                withGenres: withGenres,
                withoutGenres: withoutGenres,
                includeWatched: includeWatched,
                includeWatchlist: includeWatchlist,
                fromDate: fromDate,
                toDate: toDate,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SeriesFilterTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppLocalDatabase,
      $SeriesFilterTableTable,
      SeriesFilterTableData,
      $$SeriesFilterTableTableFilterComposer,
      $$SeriesFilterTableTableOrderingComposer,
      $$SeriesFilterTableTableAnnotationComposer,
      $$SeriesFilterTableTableCreateCompanionBuilder,
      $$SeriesFilterTableTableUpdateCompanionBuilder,
      (
        SeriesFilterTableData,
        BaseReferences<
          _$AppLocalDatabase,
          $SeriesFilterTableTable,
          SeriesFilterTableData
        >,
      ),
      SeriesFilterTableData,
      PrefetchHooks Function()
    >;
typedef $$MoviesEventsTableTableCreateCompanionBuilder =
    MoviesEventsTableCompanion Function({
      Value<int> id,
      required int tmdbId,
      Value<WatchEventTypeDto?> type,
      Value<int?> userRating,
      Value<DateTime> at,
    });
typedef $$MoviesEventsTableTableUpdateCompanionBuilder =
    MoviesEventsTableCompanion Function({
      Value<int> id,
      Value<int> tmdbId,
      Value<WatchEventTypeDto?> type,
      Value<int?> userRating,
      Value<DateTime> at,
    });

final class $$MoviesEventsTableTableReferences
    extends
        BaseReferences<
          _$AppLocalDatabase,
          $MoviesEventsTableTable,
          MoviesEventsTableData
        > {
  $$MoviesEventsTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $MoviesTableTable _tmdbIdTable(_$AppLocalDatabase db) =>
      db.moviesTable.createAlias(
        $_aliasNameGenerator(
          db.moviesEventsTable.tmdbId,
          db.moviesTable.tmdbId,
        ),
      );

  $$MoviesTableTableProcessedTableManager get tmdbId {
    final $_column = $_itemColumn<int>('tmdb_id')!;

    final manager = $$MoviesTableTableTableManager(
      $_db,
      $_db.moviesTable,
    ).filter((f) => f.tmdbId.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_tmdbIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$MoviesEventsTableTableFilterComposer
    extends Composer<_$AppLocalDatabase, $MoviesEventsTableTable> {
  $$MoviesEventsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<WatchEventTypeDto?, WatchEventTypeDto, String>
  get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<int> get userRating => $composableBuilder(
    column: $table.userRating,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get at => $composableBuilder(
    column: $table.at,
    builder: (column) => ColumnFilters(column),
  );

  $$MoviesTableTableFilterComposer get tmdbId {
    final $$MoviesTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tmdbId,
      referencedTable: $db.moviesTable,
      getReferencedColumn: (t) => t.tmdbId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MoviesTableTableFilterComposer(
            $db: $db,
            $table: $db.moviesTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$MoviesEventsTableTableOrderingComposer
    extends Composer<_$AppLocalDatabase, $MoviesEventsTableTable> {
  $$MoviesEventsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get userRating => $composableBuilder(
    column: $table.userRating,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get at => $composableBuilder(
    column: $table.at,
    builder: (column) => ColumnOrderings(column),
  );

  $$MoviesTableTableOrderingComposer get tmdbId {
    final $$MoviesTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tmdbId,
      referencedTable: $db.moviesTable,
      getReferencedColumn: (t) => t.tmdbId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MoviesTableTableOrderingComposer(
            $db: $db,
            $table: $db.moviesTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$MoviesEventsTableTableAnnotationComposer
    extends Composer<_$AppLocalDatabase, $MoviesEventsTableTable> {
  $$MoviesEventsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumnWithTypeConverter<WatchEventTypeDto?, String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<int> get userRating => $composableBuilder(
    column: $table.userRating,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get at =>
      $composableBuilder(column: $table.at, builder: (column) => column);

  $$MoviesTableTableAnnotationComposer get tmdbId {
    final $$MoviesTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tmdbId,
      referencedTable: $db.moviesTable,
      getReferencedColumn: (t) => t.tmdbId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MoviesTableTableAnnotationComposer(
            $db: $db,
            $table: $db.moviesTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$MoviesEventsTableTableTableManager
    extends
        RootTableManager<
          _$AppLocalDatabase,
          $MoviesEventsTableTable,
          MoviesEventsTableData,
          $$MoviesEventsTableTableFilterComposer,
          $$MoviesEventsTableTableOrderingComposer,
          $$MoviesEventsTableTableAnnotationComposer,
          $$MoviesEventsTableTableCreateCompanionBuilder,
          $$MoviesEventsTableTableUpdateCompanionBuilder,
          (MoviesEventsTableData, $$MoviesEventsTableTableReferences),
          MoviesEventsTableData,
          PrefetchHooks Function({bool tmdbId})
        > {
  $$MoviesEventsTableTableTableManager(
    _$AppLocalDatabase db,
    $MoviesEventsTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MoviesEventsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MoviesEventsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MoviesEventsTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> tmdbId = const Value.absent(),
                Value<WatchEventTypeDto?> type = const Value.absent(),
                Value<int?> userRating = const Value.absent(),
                Value<DateTime> at = const Value.absent(),
              }) => MoviesEventsTableCompanion(
                id: id,
                tmdbId: tmdbId,
                type: type,
                userRating: userRating,
                at: at,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int tmdbId,
                Value<WatchEventTypeDto?> type = const Value.absent(),
                Value<int?> userRating = const Value.absent(),
                Value<DateTime> at = const Value.absent(),
              }) => MoviesEventsTableCompanion.insert(
                id: id,
                tmdbId: tmdbId,
                type: type,
                userRating: userRating,
                at: at,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$MoviesEventsTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({tmdbId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (tmdbId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.tmdbId,
                                referencedTable:
                                    $$MoviesEventsTableTableReferences
                                        ._tmdbIdTable(db),
                                referencedColumn:
                                    $$MoviesEventsTableTableReferences
                                        ._tmdbIdTable(db)
                                        .tmdbId,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$MoviesEventsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppLocalDatabase,
      $MoviesEventsTableTable,
      MoviesEventsTableData,
      $$MoviesEventsTableTableFilterComposer,
      $$MoviesEventsTableTableOrderingComposer,
      $$MoviesEventsTableTableAnnotationComposer,
      $$MoviesEventsTableTableCreateCompanionBuilder,
      $$MoviesEventsTableTableUpdateCompanionBuilder,
      (MoviesEventsTableData, $$MoviesEventsTableTableReferences),
      MoviesEventsTableData,
      PrefetchHooks Function({bool tmdbId})
    >;
typedef $$SeriesEventsTableTableCreateCompanionBuilder =
    SeriesEventsTableCompanion Function({
      Value<int> id,
      required int tmdbId,
      Value<WatchEventTypeDto?> type,
      Value<int?> userRating,
      Value<DateTime> at,
    });
typedef $$SeriesEventsTableTableUpdateCompanionBuilder =
    SeriesEventsTableCompanion Function({
      Value<int> id,
      Value<int> tmdbId,
      Value<WatchEventTypeDto?> type,
      Value<int?> userRating,
      Value<DateTime> at,
    });

final class $$SeriesEventsTableTableReferences
    extends
        BaseReferences<
          _$AppLocalDatabase,
          $SeriesEventsTableTable,
          SeriesEventsTableData
        > {
  $$SeriesEventsTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $SeriesTableTable _tmdbIdTable(_$AppLocalDatabase db) =>
      db.seriesTable.createAlias(
        $_aliasNameGenerator(
          db.seriesEventsTable.tmdbId,
          db.seriesTable.tmdbId,
        ),
      );

  $$SeriesTableTableProcessedTableManager get tmdbId {
    final $_column = $_itemColumn<int>('tmdb_id')!;

    final manager = $$SeriesTableTableTableManager(
      $_db,
      $_db.seriesTable,
    ).filter((f) => f.tmdbId.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_tmdbIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$SeriesEventsTableTableFilterComposer
    extends Composer<_$AppLocalDatabase, $SeriesEventsTableTable> {
  $$SeriesEventsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<WatchEventTypeDto?, WatchEventTypeDto, String>
  get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<int> get userRating => $composableBuilder(
    column: $table.userRating,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get at => $composableBuilder(
    column: $table.at,
    builder: (column) => ColumnFilters(column),
  );

  $$SeriesTableTableFilterComposer get tmdbId {
    final $$SeriesTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tmdbId,
      referencedTable: $db.seriesTable,
      getReferencedColumn: (t) => t.tmdbId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SeriesTableTableFilterComposer(
            $db: $db,
            $table: $db.seriesTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SeriesEventsTableTableOrderingComposer
    extends Composer<_$AppLocalDatabase, $SeriesEventsTableTable> {
  $$SeriesEventsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get userRating => $composableBuilder(
    column: $table.userRating,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get at => $composableBuilder(
    column: $table.at,
    builder: (column) => ColumnOrderings(column),
  );

  $$SeriesTableTableOrderingComposer get tmdbId {
    final $$SeriesTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tmdbId,
      referencedTable: $db.seriesTable,
      getReferencedColumn: (t) => t.tmdbId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SeriesTableTableOrderingComposer(
            $db: $db,
            $table: $db.seriesTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SeriesEventsTableTableAnnotationComposer
    extends Composer<_$AppLocalDatabase, $SeriesEventsTableTable> {
  $$SeriesEventsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumnWithTypeConverter<WatchEventTypeDto?, String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<int> get userRating => $composableBuilder(
    column: $table.userRating,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get at =>
      $composableBuilder(column: $table.at, builder: (column) => column);

  $$SeriesTableTableAnnotationComposer get tmdbId {
    final $$SeriesTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tmdbId,
      referencedTable: $db.seriesTable,
      getReferencedColumn: (t) => t.tmdbId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SeriesTableTableAnnotationComposer(
            $db: $db,
            $table: $db.seriesTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SeriesEventsTableTableTableManager
    extends
        RootTableManager<
          _$AppLocalDatabase,
          $SeriesEventsTableTable,
          SeriesEventsTableData,
          $$SeriesEventsTableTableFilterComposer,
          $$SeriesEventsTableTableOrderingComposer,
          $$SeriesEventsTableTableAnnotationComposer,
          $$SeriesEventsTableTableCreateCompanionBuilder,
          $$SeriesEventsTableTableUpdateCompanionBuilder,
          (SeriesEventsTableData, $$SeriesEventsTableTableReferences),
          SeriesEventsTableData,
          PrefetchHooks Function({bool tmdbId})
        > {
  $$SeriesEventsTableTableTableManager(
    _$AppLocalDatabase db,
    $SeriesEventsTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SeriesEventsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SeriesEventsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SeriesEventsTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> tmdbId = const Value.absent(),
                Value<WatchEventTypeDto?> type = const Value.absent(),
                Value<int?> userRating = const Value.absent(),
                Value<DateTime> at = const Value.absent(),
              }) => SeriesEventsTableCompanion(
                id: id,
                tmdbId: tmdbId,
                type: type,
                userRating: userRating,
                at: at,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int tmdbId,
                Value<WatchEventTypeDto?> type = const Value.absent(),
                Value<int?> userRating = const Value.absent(),
                Value<DateTime> at = const Value.absent(),
              }) => SeriesEventsTableCompanion.insert(
                id: id,
                tmdbId: tmdbId,
                type: type,
                userRating: userRating,
                at: at,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$SeriesEventsTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({tmdbId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (tmdbId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.tmdbId,
                                referencedTable:
                                    $$SeriesEventsTableTableReferences
                                        ._tmdbIdTable(db),
                                referencedColumn:
                                    $$SeriesEventsTableTableReferences
                                        ._tmdbIdTable(db)
                                        .tmdbId,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$SeriesEventsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppLocalDatabase,
      $SeriesEventsTableTable,
      SeriesEventsTableData,
      $$SeriesEventsTableTableFilterComposer,
      $$SeriesEventsTableTableOrderingComposer,
      $$SeriesEventsTableTableAnnotationComposer,
      $$SeriesEventsTableTableCreateCompanionBuilder,
      $$SeriesEventsTableTableUpdateCompanionBuilder,
      (SeriesEventsTableData, $$SeriesEventsTableTableReferences),
      SeriesEventsTableData,
      PrefetchHooks Function({bool tmdbId})
    >;

class $AppLocalDatabaseManager {
  final _$AppLocalDatabase _db;
  $AppLocalDatabaseManager(this._db);
  $$MoviesTableTableTableManager get moviesTable =>
      $$MoviesTableTableTableManager(_db, _db.moviesTable);
  $$SeriesTableTableTableManager get seriesTable =>
      $$SeriesTableTableTableManager(_db, _db.seriesTable);
  $$SyncUserTableTableTableManager get syncUserTable =>
      $$SyncUserTableTableTableManager(_db, _db.syncUserTable);
  $$SettingsTableTableTableManager get settingsTable =>
      $$SettingsTableTableTableManager(_db, _db.settingsTable);
  $$MoviesFilterTableTableTableManager get moviesFilterTable =>
      $$MoviesFilterTableTableTableManager(_db, _db.moviesFilterTable);
  $$SeriesFilterTableTableTableManager get seriesFilterTable =>
      $$SeriesFilterTableTableTableManager(_db, _db.seriesFilterTable);
  $$MoviesEventsTableTableTableManager get moviesEventsTable =>
      $$MoviesEventsTableTableTableManager(_db, _db.moviesEventsTable);
  $$SeriesEventsTableTableTableManager get seriesEventsTable =>
      $$SeriesEventsTableTableTableManager(_db, _db.seriesEventsTable);
}
