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
  static const VerificationMeta _localizedTitleMeta =
      const VerificationMeta('localizedTitle');
  @override
  late final GeneratedColumnWithTypeConverter<LocalizedString?, String>
      localizedTitle = GeneratedColumn<String>(
              'localized_title', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<LocalizedString?>(
              $MoviesTableTable.$converterlocalizedTitlen);
  static const VerificationMeta _localizedPosterUrlMeta =
      const VerificationMeta('localizedPosterUrl');
  @override
  late final GeneratedColumnWithTypeConverter<LocalizedString?, String>
      localizedPosterUrl = GeneratedColumn<String>(
              'localized_poster_url', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<LocalizedString?>(
              $MoviesTableTable.$converterlocalizedPosterUrln);
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
        localizedTitle,
        localizedPosterUrl
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
    context.handle(_originCountryMeta, const VerificationResult.success());
    if (data.containsKey('premiere_date')) {
      context.handle(
          _premiereDateMeta,
          premiereDate.isAcceptableOrUnknown(
              data['premiere_date']!, _premiereDateMeta));
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
    context.handle(_localizedTitleMeta, const VerificationResult.success());
    context.handle(_localizedPosterUrlMeta, const VerificationResult.success());
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
      originCountry: $MoviesTableTable.$converteroriginCountryn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}origin_country'])),
      premiereDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}premiere_date']),
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
      localizedTitle: $MoviesTableTable.$converterlocalizedTitlen.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}localized_title'])),
      localizedPosterUrl: $MoviesTableTable.$converterlocalizedPosterUrln
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}localized_poster_url'])),
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
  static TypeConverter<LocalizedString, String> $converterlocalizedTitle =
      localizedStringConverter;
  static TypeConverter<LocalizedString?, String?> $converterlocalizedTitlen =
      NullAwareTypeConverter.wrap($converterlocalizedTitle);
  static TypeConverter<LocalizedString, String> $converterlocalizedPosterUrl =
      localizedStringConverter;
  static TypeConverter<LocalizedString?, String?>
      $converterlocalizedPosterUrln =
      NullAwareTypeConverter.wrap($converterlocalizedPosterUrl);
}

class MoviesTableData extends DataClass implements Insertable<MoviesTableData> {
  final int id;
  final int tmdbId;
  final List<MovieGenreDto>? genres;
  final List<String>? originCountry;
  final DateTime? premiereDate;
  final RatingDataDto? tmdbRating;
  final int? userRating;
  final bool? isInWatchlist;
  final bool? isWatched;
  final DateTime createdAt;
  final DateTime updatedAt;
  final LocalizedString? localizedTitle;
  final LocalizedString? localizedPosterUrl;
  const MoviesTableData(
      {required this.id,
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
      this.localizedTitle,
      this.localizedPosterUrl});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['tmdb_id'] = Variable<int>(tmdbId);
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
    if (!nullToAbsent || localizedTitle != null) {
      map['localized_title'] = Variable<String>(
          $MoviesTableTable.$converterlocalizedTitlen.toSql(localizedTitle));
    }
    if (!nullToAbsent || localizedPosterUrl != null) {
      map['localized_poster_url'] = Variable<String>($MoviesTableTable
          .$converterlocalizedPosterUrln
          .toSql(localizedPosterUrl));
    }
    return map;
  }

  MoviesTableCompanion toCompanion(bool nullToAbsent) {
    return MoviesTableCompanion(
      id: Value(id),
      tmdbId: Value(tmdbId),
      genres:
          genres == null && nullToAbsent ? const Value.absent() : Value(genres),
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
      localizedTitle: localizedTitle == null && nullToAbsent
          ? const Value.absent()
          : Value(localizedTitle),
      localizedPosterUrl: localizedPosterUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(localizedPosterUrl),
    );
  }

  factory MoviesTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MoviesTableData(
      id: serializer.fromJson<int>(json['id']),
      tmdbId: serializer.fromJson<int>(json['tmdbId']),
      genres: serializer.fromJson<List<MovieGenreDto>?>(json['genres']),
      originCountry: serializer.fromJson<List<String>?>(json['originCountry']),
      premiereDate: serializer.fromJson<DateTime?>(json['premiereDate']),
      tmdbRating: serializer.fromJson<RatingDataDto?>(json['tmdbRating']),
      userRating: serializer.fromJson<int?>(json['userRating']),
      isInWatchlist: serializer.fromJson<bool?>(json['isInWatchlist']),
      isWatched: serializer.fromJson<bool?>(json['isWatched']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      localizedTitle:
          serializer.fromJson<LocalizedString?>(json['localizedTitle']),
      localizedPosterUrl:
          serializer.fromJson<LocalizedString?>(json['localizedPosterUrl']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'tmdbId': serializer.toJson<int>(tmdbId),
      'genres': serializer.toJson<List<MovieGenreDto>?>(genres),
      'originCountry': serializer.toJson<List<String>?>(originCountry),
      'premiereDate': serializer.toJson<DateTime?>(premiereDate),
      'tmdbRating': serializer.toJson<RatingDataDto?>(tmdbRating),
      'userRating': serializer.toJson<int?>(userRating),
      'isInWatchlist': serializer.toJson<bool?>(isInWatchlist),
      'isWatched': serializer.toJson<bool?>(isWatched),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'localizedTitle': serializer.toJson<LocalizedString?>(localizedTitle),
      'localizedPosterUrl':
          serializer.toJson<LocalizedString?>(localizedPosterUrl),
    };
  }

  MoviesTableData copyWith(
          {int? id,
          int? tmdbId,
          Value<List<MovieGenreDto>?> genres = const Value.absent(),
          Value<List<String>?> originCountry = const Value.absent(),
          Value<DateTime?> premiereDate = const Value.absent(),
          Value<RatingDataDto?> tmdbRating = const Value.absent(),
          Value<int?> userRating = const Value.absent(),
          Value<bool?> isInWatchlist = const Value.absent(),
          Value<bool?> isWatched = const Value.absent(),
          DateTime? createdAt,
          DateTime? updatedAt,
          Value<LocalizedString?> localizedTitle = const Value.absent(),
          Value<LocalizedString?> localizedPosterUrl = const Value.absent()}) =>
      MoviesTableData(
        id: id ?? this.id,
        tmdbId: tmdbId ?? this.tmdbId,
        genres: genres.present ? genres.value : this.genres,
        originCountry:
            originCountry.present ? originCountry.value : this.originCountry,
        premiereDate:
            premiereDate.present ? premiereDate.value : this.premiereDate,
        tmdbRating: tmdbRating.present ? tmdbRating.value : this.tmdbRating,
        userRating: userRating.present ? userRating.value : this.userRating,
        isInWatchlist:
            isInWatchlist.present ? isInWatchlist.value : this.isInWatchlist,
        isWatched: isWatched.present ? isWatched.value : this.isWatched,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        localizedTitle:
            localizedTitle.present ? localizedTitle.value : this.localizedTitle,
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
      localizedTitle,
      localizedPosterUrl);
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
          other.localizedTitle == this.localizedTitle &&
          other.localizedPosterUrl == this.localizedPosterUrl);
}

class MoviesTableCompanion extends UpdateCompanion<MoviesTableData> {
  final Value<int> id;
  final Value<int> tmdbId;
  final Value<List<MovieGenreDto>?> genres;
  final Value<List<String>?> originCountry;
  final Value<DateTime?> premiereDate;
  final Value<RatingDataDto?> tmdbRating;
  final Value<int?> userRating;
  final Value<bool?> isInWatchlist;
  final Value<bool?> isWatched;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
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
      if (localizedTitle != null) 'localized_title': localizedTitle,
      if (localizedPosterUrl != null)
        'localized_poster_url': localizedPosterUrl,
    });
  }

  MoviesTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? tmdbId,
      Value<List<MovieGenreDto>?>? genres,
      Value<List<String>?>? originCountry,
      Value<DateTime?>? premiereDate,
      Value<RatingDataDto?>? tmdbRating,
      Value<int?>? userRating,
      Value<bool?>? isInWatchlist,
      Value<bool?>? isWatched,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<LocalizedString?>? localizedTitle,
      Value<LocalizedString?>? localizedPosterUrl}) {
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
    if (localizedTitle.present) {
      map['localized_title'] = Variable<String>($MoviesTableTable
          .$converterlocalizedTitlen
          .toSql(localizedTitle.value));
    }
    if (localizedPosterUrl.present) {
      map['localized_poster_url'] = Variable<String>($MoviesTableTable
          .$converterlocalizedPosterUrln
          .toSql(localizedPosterUrl.value));
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
  static const VerificationMeta _localizedTitleMeta =
      const VerificationMeta('localizedTitle');
  @override
  late final GeneratedColumnWithTypeConverter<LocalizedString?, String>
      localizedTitle = GeneratedColumn<String>(
              'localized_title', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<LocalizedString?>(
              $SeriesTableTable.$converterlocalizedTitlen);
  static const VerificationMeta _localizedPosterUrlMeta =
      const VerificationMeta('localizedPosterUrl');
  @override
  late final GeneratedColumnWithTypeConverter<LocalizedString?, String>
      localizedPosterUrl = GeneratedColumn<String>(
              'localized_poster_url', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<LocalizedString?>(
              $SeriesTableTable.$converterlocalizedPosterUrln);
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
        localizedTitle,
        localizedPosterUrl
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
    context.handle(_localizedTitleMeta, const VerificationResult.success());
    context.handle(_localizedPosterUrlMeta, const VerificationResult.success());
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
      localizedTitle: $SeriesTableTable.$converterlocalizedTitlen.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}localized_title'])),
      localizedPosterUrl: $SeriesTableTable.$converterlocalizedPosterUrln
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}localized_poster_url'])),
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
  static TypeConverter<LocalizedString, String> $converterlocalizedTitle =
      localizedStringConverter;
  static TypeConverter<LocalizedString?, String?> $converterlocalizedTitlen =
      NullAwareTypeConverter.wrap($converterlocalizedTitle);
  static TypeConverter<LocalizedString, String> $converterlocalizedPosterUrl =
      localizedStringConverter;
  static TypeConverter<LocalizedString?, String?>
      $converterlocalizedPosterUrln =
      NullAwareTypeConverter.wrap($converterlocalizedPosterUrl);
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
  final LocalizedString? localizedTitle;
  final LocalizedString? localizedPosterUrl;
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
      required this.updatedAt,
      this.localizedTitle,
      this.localizedPosterUrl});
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
    if (!nullToAbsent || localizedTitle != null) {
      map['localized_title'] = Variable<String>(
          $SeriesTableTable.$converterlocalizedTitlen.toSql(localizedTitle));
    }
    if (!nullToAbsent || localizedPosterUrl != null) {
      map['localized_poster_url'] = Variable<String>($SeriesTableTable
          .$converterlocalizedPosterUrln
          .toSql(localizedPosterUrl));
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
      localizedTitle: localizedTitle == null && nullToAbsent
          ? const Value.absent()
          : Value(localizedTitle),
      localizedPosterUrl: localizedPosterUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(localizedPosterUrl),
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
      localizedTitle:
          serializer.fromJson<LocalizedString?>(json['localizedTitle']),
      localizedPosterUrl:
          serializer.fromJson<LocalizedString?>(json['localizedPosterUrl']),
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
      'localizedTitle': serializer.toJson<LocalizedString?>(localizedTitle),
      'localizedPosterUrl':
          serializer.toJson<LocalizedString?>(localizedPosterUrl),
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
          DateTime? updatedAt,
          Value<LocalizedString?> localizedTitle = const Value.absent(),
          Value<LocalizedString?> localizedPosterUrl = const Value.absent()}) =>
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
        localizedTitle:
            localizedTitle.present ? localizedTitle.value : this.localizedTitle,
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
      localizedTitle,
      localizedPosterUrl);
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
          other.localizedTitle == this.localizedTitle &&
          other.localizedPosterUrl == this.localizedPosterUrl);
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
      if (localizedTitle != null) 'localized_title': localizedTitle,
      if (localizedPosterUrl != null)
        'localized_poster_url': localizedPosterUrl,
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
      Value<DateTime>? updatedAt,
      Value<LocalizedString?>? localizedTitle,
      Value<LocalizedString?>? localizedPosterUrl}) {
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
    if (localizedTitle.present) {
      map['localized_title'] = Variable<String>($SeriesTableTable
          .$converterlocalizedTitlen
          .toSql(localizedTitle.value));
    }
    if (localizedPosterUrl.present) {
      map['localized_poster_url'] = Variable<String>($SeriesTableTable
          .$converterlocalizedPosterUrln
          .toSql(localizedPosterUrl.value));
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
  static const VerificationMeta _moviesSyncedAtMeta =
      const VerificationMeta('moviesSyncedAt');
  @override
  late final GeneratedColumn<DateTime> moviesSyncedAt =
      GeneratedColumn<DateTime>('movies_synced_at', aliasedName, false,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: currentDateAndTime);
  static const VerificationMeta _seriesSyncedAtMeta =
      const VerificationMeta('seriesSyncedAt');
  @override
  late final GeneratedColumn<DateTime> seriesSyncedAt =
      GeneratedColumn<DateTime>('series_synced_at', aliasedName, false,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns =>
      [id, uid, email, moviesSyncedAt, seriesSyncedAt];
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
    if (data.containsKey('movies_synced_at')) {
      context.handle(
          _moviesSyncedAtMeta,
          moviesSyncedAt.isAcceptableOrUnknown(
              data['movies_synced_at']!, _moviesSyncedAtMeta));
    }
    if (data.containsKey('series_synced_at')) {
      context.handle(
          _seriesSyncedAtMeta,
          seriesSyncedAt.isAcceptableOrUnknown(
              data['series_synced_at']!, _seriesSyncedAtMeta));
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
      moviesSyncedAt: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}movies_synced_at'])!,
      seriesSyncedAt: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}series_synced_at'])!,
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
  const SyncUserTableData(
      {required this.id,
      required this.uid,
      required this.email,
      required this.moviesSyncedAt,
      required this.seriesSyncedAt});
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

  factory SyncUserTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
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

  SyncUserTableData copyWith(
          {int? id,
          String? uid,
          String? email,
          DateTime? moviesSyncedAt,
          DateTime? seriesSyncedAt}) =>
      SyncUserTableData(
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
  })  : uid = Value(uid),
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

  SyncUserTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? uid,
      Value<String>? email,
      Value<DateTime>? moviesSyncedAt,
      Value<DateTime>? seriesSyncedAt}) {
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
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _isFirstLaunchMeta =
      const VerificationMeta('isFirstLaunch');
  @override
  late final GeneratedColumn<bool> isFirstLaunch = GeneratedColumn<bool>(
      'is_first_launch', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_first_launch" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [id, isFirstLaunch];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'settings_table';
  @override
  VerificationContext validateIntegrity(Insertable<SettingsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('is_first_launch')) {
      context.handle(
          _isFirstLaunchMeta,
          isFirstLaunch.isAcceptableOrUnknown(
              data['is_first_launch']!, _isFirstLaunchMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SettingsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SettingsTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      isFirstLaunch: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_first_launch']),
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

  factory SettingsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
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

  SettingsTableData copyWith(
          {int? id, Value<bool?> isFirstLaunch = const Value.absent()}) =>
      SettingsTableData(
        id: id ?? this.id,
        isFirstLaunch:
            isFirstLaunch.present ? isFirstLaunch.value : this.isFirstLaunch,
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

  SettingsTableCompanion copyWith(
      {Value<int>? id, Value<bool?>? isFirstLaunch}) {
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
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _yearMeta = const VerificationMeta('year');
  @override
  late final GeneratedColumn<int> year = GeneratedColumn<int>(
      'year', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _sortByMeta = const VerificationMeta('sortBy');
  @override
  late final GeneratedColumnWithTypeConverter<SortByDto?, String> sortBy =
      GeneratedColumn<String>('sort_by', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<SortByDto?>($MoviesFilterTableTable.$convertersortByn);
  static const VerificationMeta _withCountriesMeta =
      const VerificationMeta('withCountries');
  @override
  late final GeneratedColumnWithTypeConverter<List<CountryDto>?, String>
      withCountries = GeneratedColumn<String>(
              'with_countries', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<CountryDto>?>(
              $MoviesFilterTableTable.$converterwithCountriesn);
  static const VerificationMeta _withGenresMeta =
      const VerificationMeta('withGenres');
  @override
  late final GeneratedColumnWithTypeConverter<List<MovieGenreDto>?, String>
      withGenres = GeneratedColumn<String>('with_genres', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<MovieGenreDto>?>(
              $MoviesFilterTableTable.$converterwithGenresn);
  static const VerificationMeta _withoutGenresMeta =
      const VerificationMeta('withoutGenres');
  @override
  late final GeneratedColumnWithTypeConverter<List<MovieGenreDto>?, String>
      withoutGenres = GeneratedColumn<String>(
              'without_genres', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<MovieGenreDto>?>(
              $MoviesFilterTableTable.$converterwithoutGenresn);
  @override
  List<GeneratedColumn> get $columns =>
      [id, year, sortBy, withCountries, withGenres, withoutGenres];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'movies_filter_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<MoviesFilterTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('year')) {
      context.handle(
          _yearMeta, year.isAcceptableOrUnknown(data['year']!, _yearMeta));
    }
    context.handle(_sortByMeta, const VerificationResult.success());
    context.handle(_withCountriesMeta, const VerificationResult.success());
    context.handle(_withGenresMeta, const VerificationResult.success());
    context.handle(_withoutGenresMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MoviesFilterTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MoviesFilterTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      year: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}year']),
      sortBy: $MoviesFilterTableTable.$convertersortByn.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sort_by'])),
      withCountries: $MoviesFilterTableTable.$converterwithCountriesn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}with_countries'])),
      withGenres: $MoviesFilterTableTable.$converterwithGenresn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}with_genres'])),
      withoutGenres: $MoviesFilterTableTable.$converterwithoutGenresn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}without_genres'])),
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
      filterCountryConverter;
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
  final int? year;
  final SortByDto? sortBy;
  final List<CountryDto>? withCountries;
  final List<MovieGenreDto>? withGenres;
  final List<MovieGenreDto>? withoutGenres;
  const MoviesFilterTableData(
      {required this.id,
      this.year,
      this.sortBy,
      this.withCountries,
      this.withGenres,
      this.withoutGenres});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || year != null) {
      map['year'] = Variable<int>(year);
    }
    if (!nullToAbsent || sortBy != null) {
      map['sort_by'] = Variable<String>(
          $MoviesFilterTableTable.$convertersortByn.toSql(sortBy));
    }
    if (!nullToAbsent || withCountries != null) {
      map['with_countries'] = Variable<String>($MoviesFilterTableTable
          .$converterwithCountriesn
          .toSql(withCountries));
    }
    if (!nullToAbsent || withGenres != null) {
      map['with_genres'] = Variable<String>(
          $MoviesFilterTableTable.$converterwithGenresn.toSql(withGenres));
    }
    if (!nullToAbsent || withoutGenres != null) {
      map['without_genres'] = Variable<String>($MoviesFilterTableTable
          .$converterwithoutGenresn
          .toSql(withoutGenres));
    }
    return map;
  }

  MoviesFilterTableCompanion toCompanion(bool nullToAbsent) {
    return MoviesFilterTableCompanion(
      id: Value(id),
      year: year == null && nullToAbsent ? const Value.absent() : Value(year),
      sortBy:
          sortBy == null && nullToAbsent ? const Value.absent() : Value(sortBy),
      withCountries: withCountries == null && nullToAbsent
          ? const Value.absent()
          : Value(withCountries),
      withGenres: withGenres == null && nullToAbsent
          ? const Value.absent()
          : Value(withGenres),
      withoutGenres: withoutGenres == null && nullToAbsent
          ? const Value.absent()
          : Value(withoutGenres),
    );
  }

  factory MoviesFilterTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MoviesFilterTableData(
      id: serializer.fromJson<int>(json['id']),
      year: serializer.fromJson<int?>(json['year']),
      sortBy: serializer.fromJson<SortByDto?>(json['sortBy']),
      withCountries:
          serializer.fromJson<List<CountryDto>?>(json['withCountries']),
      withGenres: serializer.fromJson<List<MovieGenreDto>?>(json['withGenres']),
      withoutGenres:
          serializer.fromJson<List<MovieGenreDto>?>(json['withoutGenres']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'year': serializer.toJson<int?>(year),
      'sortBy': serializer.toJson<SortByDto?>(sortBy),
      'withCountries': serializer.toJson<List<CountryDto>?>(withCountries),
      'withGenres': serializer.toJson<List<MovieGenreDto>?>(withGenres),
      'withoutGenres': serializer.toJson<List<MovieGenreDto>?>(withoutGenres),
    };
  }

  MoviesFilterTableData copyWith(
          {int? id,
          Value<int?> year = const Value.absent(),
          Value<SortByDto?> sortBy = const Value.absent(),
          Value<List<CountryDto>?> withCountries = const Value.absent(),
          Value<List<MovieGenreDto>?> withGenres = const Value.absent(),
          Value<List<MovieGenreDto>?> withoutGenres = const Value.absent()}) =>
      MoviesFilterTableData(
        id: id ?? this.id,
        year: year.present ? year.value : this.year,
        sortBy: sortBy.present ? sortBy.value : this.sortBy,
        withCountries:
            withCountries.present ? withCountries.value : this.withCountries,
        withGenres: withGenres.present ? withGenres.value : this.withGenres,
        withoutGenres:
            withoutGenres.present ? withoutGenres.value : this.withoutGenres,
      );
  MoviesFilterTableData copyWithCompanion(MoviesFilterTableCompanion data) {
    return MoviesFilterTableData(
      id: data.id.present ? data.id.value : this.id,
      year: data.year.present ? data.year.value : this.year,
      sortBy: data.sortBy.present ? data.sortBy.value : this.sortBy,
      withCountries: data.withCountries.present
          ? data.withCountries.value
          : this.withCountries,
      withGenres:
          data.withGenres.present ? data.withGenres.value : this.withGenres,
      withoutGenres: data.withoutGenres.present
          ? data.withoutGenres.value
          : this.withoutGenres,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MoviesFilterTableData(')
          ..write('id: $id, ')
          ..write('year: $year, ')
          ..write('sortBy: $sortBy, ')
          ..write('withCountries: $withCountries, ')
          ..write('withGenres: $withGenres, ')
          ..write('withoutGenres: $withoutGenres')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, year, sortBy, withCountries, withGenres, withoutGenres);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MoviesFilterTableData &&
          other.id == this.id &&
          other.year == this.year &&
          other.sortBy == this.sortBy &&
          other.withCountries == this.withCountries &&
          other.withGenres == this.withGenres &&
          other.withoutGenres == this.withoutGenres);
}

class MoviesFilterTableCompanion
    extends UpdateCompanion<MoviesFilterTableData> {
  final Value<int> id;
  final Value<int?> year;
  final Value<SortByDto?> sortBy;
  final Value<List<CountryDto>?> withCountries;
  final Value<List<MovieGenreDto>?> withGenres;
  final Value<List<MovieGenreDto>?> withoutGenres;
  const MoviesFilterTableCompanion({
    this.id = const Value.absent(),
    this.year = const Value.absent(),
    this.sortBy = const Value.absent(),
    this.withCountries = const Value.absent(),
    this.withGenres = const Value.absent(),
    this.withoutGenres = const Value.absent(),
  });
  MoviesFilterTableCompanion.insert({
    this.id = const Value.absent(),
    this.year = const Value.absent(),
    this.sortBy = const Value.absent(),
    this.withCountries = const Value.absent(),
    this.withGenres = const Value.absent(),
    this.withoutGenres = const Value.absent(),
  });
  static Insertable<MoviesFilterTableData> custom({
    Expression<int>? id,
    Expression<int>? year,
    Expression<String>? sortBy,
    Expression<String>? withCountries,
    Expression<String>? withGenres,
    Expression<String>? withoutGenres,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (year != null) 'year': year,
      if (sortBy != null) 'sort_by': sortBy,
      if (withCountries != null) 'with_countries': withCountries,
      if (withGenres != null) 'with_genres': withGenres,
      if (withoutGenres != null) 'without_genres': withoutGenres,
    });
  }

  MoviesFilterTableCompanion copyWith(
      {Value<int>? id,
      Value<int?>? year,
      Value<SortByDto?>? sortBy,
      Value<List<CountryDto>?>? withCountries,
      Value<List<MovieGenreDto>?>? withGenres,
      Value<List<MovieGenreDto>?>? withoutGenres}) {
    return MoviesFilterTableCompanion(
      id: id ?? this.id,
      year: year ?? this.year,
      sortBy: sortBy ?? this.sortBy,
      withCountries: withCountries ?? this.withCountries,
      withGenres: withGenres ?? this.withGenres,
      withoutGenres: withoutGenres ?? this.withoutGenres,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (year.present) {
      map['year'] = Variable<int>(year.value);
    }
    if (sortBy.present) {
      map['sort_by'] = Variable<String>(
          $MoviesFilterTableTable.$convertersortByn.toSql(sortBy.value));
    }
    if (withCountries.present) {
      map['with_countries'] = Variable<String>($MoviesFilterTableTable
          .$converterwithCountriesn
          .toSql(withCountries.value));
    }
    if (withGenres.present) {
      map['with_genres'] = Variable<String>($MoviesFilterTableTable
          .$converterwithGenresn
          .toSql(withGenres.value));
    }
    if (withoutGenres.present) {
      map['without_genres'] = Variable<String>($MoviesFilterTableTable
          .$converterwithoutGenresn
          .toSql(withoutGenres.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoviesFilterTableCompanion(')
          ..write('id: $id, ')
          ..write('year: $year, ')
          ..write('sortBy: $sortBy, ')
          ..write('withCountries: $withCountries, ')
          ..write('withGenres: $withGenres, ')
          ..write('withoutGenres: $withoutGenres')
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
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _yearMeta = const VerificationMeta('year');
  @override
  late final GeneratedColumn<int> year = GeneratedColumn<int>(
      'year', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _sortByMeta = const VerificationMeta('sortBy');
  @override
  late final GeneratedColumnWithTypeConverter<SortByDto?, String> sortBy =
      GeneratedColumn<String>('sort_by', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<SortByDto?>($SeriesFilterTableTable.$convertersortByn);
  static const VerificationMeta _withCountriesMeta =
      const VerificationMeta('withCountries');
  @override
  late final GeneratedColumnWithTypeConverter<List<CountryDto>?, String>
      withCountries = GeneratedColumn<String>(
              'with_countries', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<CountryDto>?>(
              $SeriesFilterTableTable.$converterwithCountriesn);
  static const VerificationMeta _withGenresMeta =
      const VerificationMeta('withGenres');
  @override
  late final GeneratedColumnWithTypeConverter<List<SeriesGenreDto>?, String>
      withGenres = GeneratedColumn<String>('with_genres', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<SeriesGenreDto>?>(
              $SeriesFilterTableTable.$converterwithGenresn);
  static const VerificationMeta _withoutGenresMeta =
      const VerificationMeta('withoutGenres');
  @override
  late final GeneratedColumnWithTypeConverter<List<SeriesGenreDto>?, String>
      withoutGenres = GeneratedColumn<String>(
              'without_genres', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<SeriesGenreDto>?>(
              $SeriesFilterTableTable.$converterwithoutGenresn);
  @override
  List<GeneratedColumn> get $columns =>
      [id, year, sortBy, withCountries, withGenres, withoutGenres];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'series_filter_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<SeriesFilterTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('year')) {
      context.handle(
          _yearMeta, year.isAcceptableOrUnknown(data['year']!, _yearMeta));
    }
    context.handle(_sortByMeta, const VerificationResult.success());
    context.handle(_withCountriesMeta, const VerificationResult.success());
    context.handle(_withGenresMeta, const VerificationResult.success());
    context.handle(_withoutGenresMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SeriesFilterTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SeriesFilterTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      year: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}year']),
      sortBy: $SeriesFilterTableTable.$convertersortByn.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sort_by'])),
      withCountries: $SeriesFilterTableTable.$converterwithCountriesn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}with_countries'])),
      withGenres: $SeriesFilterTableTable.$converterwithGenresn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}with_genres'])),
      withoutGenres: $SeriesFilterTableTable.$converterwithoutGenresn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}without_genres'])),
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
      filterCountryConverter;
  static TypeConverter<List<CountryDto>?, String?> $converterwithCountriesn =
      NullAwareTypeConverter.wrap($converterwithCountries);
  static TypeConverter<List<SeriesGenreDto>, String> $converterwithGenres =
      seriesGenresConverter;
  static TypeConverter<List<SeriesGenreDto>?, String?> $converterwithGenresn =
      NullAwareTypeConverter.wrap($converterwithGenres);
  static TypeConverter<List<SeriesGenreDto>, String> $converterwithoutGenres =
      seriesGenresConverter;
  static TypeConverter<List<SeriesGenreDto>?, String?>
      $converterwithoutGenresn =
      NullAwareTypeConverter.wrap($converterwithoutGenres);
}

class SeriesFilterTableData extends DataClass
    implements Insertable<SeriesFilterTableData> {
  final int id;
  final int? year;
  final SortByDto? sortBy;
  final List<CountryDto>? withCountries;
  final List<SeriesGenreDto>? withGenres;
  final List<SeriesGenreDto>? withoutGenres;
  const SeriesFilterTableData(
      {required this.id,
      this.year,
      this.sortBy,
      this.withCountries,
      this.withGenres,
      this.withoutGenres});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || year != null) {
      map['year'] = Variable<int>(year);
    }
    if (!nullToAbsent || sortBy != null) {
      map['sort_by'] = Variable<String>(
          $SeriesFilterTableTable.$convertersortByn.toSql(sortBy));
    }
    if (!nullToAbsent || withCountries != null) {
      map['with_countries'] = Variable<String>($SeriesFilterTableTable
          .$converterwithCountriesn
          .toSql(withCountries));
    }
    if (!nullToAbsent || withGenres != null) {
      map['with_genres'] = Variable<String>(
          $SeriesFilterTableTable.$converterwithGenresn.toSql(withGenres));
    }
    if (!nullToAbsent || withoutGenres != null) {
      map['without_genres'] = Variable<String>($SeriesFilterTableTable
          .$converterwithoutGenresn
          .toSql(withoutGenres));
    }
    return map;
  }

  SeriesFilterTableCompanion toCompanion(bool nullToAbsent) {
    return SeriesFilterTableCompanion(
      id: Value(id),
      year: year == null && nullToAbsent ? const Value.absent() : Value(year),
      sortBy:
          sortBy == null && nullToAbsent ? const Value.absent() : Value(sortBy),
      withCountries: withCountries == null && nullToAbsent
          ? const Value.absent()
          : Value(withCountries),
      withGenres: withGenres == null && nullToAbsent
          ? const Value.absent()
          : Value(withGenres),
      withoutGenres: withoutGenres == null && nullToAbsent
          ? const Value.absent()
          : Value(withoutGenres),
    );
  }

  factory SeriesFilterTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SeriesFilterTableData(
      id: serializer.fromJson<int>(json['id']),
      year: serializer.fromJson<int?>(json['year']),
      sortBy: serializer.fromJson<SortByDto?>(json['sortBy']),
      withCountries:
          serializer.fromJson<List<CountryDto>?>(json['withCountries']),
      withGenres:
          serializer.fromJson<List<SeriesGenreDto>?>(json['withGenres']),
      withoutGenres:
          serializer.fromJson<List<SeriesGenreDto>?>(json['withoutGenres']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'year': serializer.toJson<int?>(year),
      'sortBy': serializer.toJson<SortByDto?>(sortBy),
      'withCountries': serializer.toJson<List<CountryDto>?>(withCountries),
      'withGenres': serializer.toJson<List<SeriesGenreDto>?>(withGenres),
      'withoutGenres': serializer.toJson<List<SeriesGenreDto>?>(withoutGenres),
    };
  }

  SeriesFilterTableData copyWith(
          {int? id,
          Value<int?> year = const Value.absent(),
          Value<SortByDto?> sortBy = const Value.absent(),
          Value<List<CountryDto>?> withCountries = const Value.absent(),
          Value<List<SeriesGenreDto>?> withGenres = const Value.absent(),
          Value<List<SeriesGenreDto>?> withoutGenres = const Value.absent()}) =>
      SeriesFilterTableData(
        id: id ?? this.id,
        year: year.present ? year.value : this.year,
        sortBy: sortBy.present ? sortBy.value : this.sortBy,
        withCountries:
            withCountries.present ? withCountries.value : this.withCountries,
        withGenres: withGenres.present ? withGenres.value : this.withGenres,
        withoutGenres:
            withoutGenres.present ? withoutGenres.value : this.withoutGenres,
      );
  SeriesFilterTableData copyWithCompanion(SeriesFilterTableCompanion data) {
    return SeriesFilterTableData(
      id: data.id.present ? data.id.value : this.id,
      year: data.year.present ? data.year.value : this.year,
      sortBy: data.sortBy.present ? data.sortBy.value : this.sortBy,
      withCountries: data.withCountries.present
          ? data.withCountries.value
          : this.withCountries,
      withGenres:
          data.withGenres.present ? data.withGenres.value : this.withGenres,
      withoutGenres: data.withoutGenres.present
          ? data.withoutGenres.value
          : this.withoutGenres,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SeriesFilterTableData(')
          ..write('id: $id, ')
          ..write('year: $year, ')
          ..write('sortBy: $sortBy, ')
          ..write('withCountries: $withCountries, ')
          ..write('withGenres: $withGenres, ')
          ..write('withoutGenres: $withoutGenres')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, year, sortBy, withCountries, withGenres, withoutGenres);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SeriesFilterTableData &&
          other.id == this.id &&
          other.year == this.year &&
          other.sortBy == this.sortBy &&
          other.withCountries == this.withCountries &&
          other.withGenres == this.withGenres &&
          other.withoutGenres == this.withoutGenres);
}

class SeriesFilterTableCompanion
    extends UpdateCompanion<SeriesFilterTableData> {
  final Value<int> id;
  final Value<int?> year;
  final Value<SortByDto?> sortBy;
  final Value<List<CountryDto>?> withCountries;
  final Value<List<SeriesGenreDto>?> withGenres;
  final Value<List<SeriesGenreDto>?> withoutGenres;
  const SeriesFilterTableCompanion({
    this.id = const Value.absent(),
    this.year = const Value.absent(),
    this.sortBy = const Value.absent(),
    this.withCountries = const Value.absent(),
    this.withGenres = const Value.absent(),
    this.withoutGenres = const Value.absent(),
  });
  SeriesFilterTableCompanion.insert({
    this.id = const Value.absent(),
    this.year = const Value.absent(),
    this.sortBy = const Value.absent(),
    this.withCountries = const Value.absent(),
    this.withGenres = const Value.absent(),
    this.withoutGenres = const Value.absent(),
  });
  static Insertable<SeriesFilterTableData> custom({
    Expression<int>? id,
    Expression<int>? year,
    Expression<String>? sortBy,
    Expression<String>? withCountries,
    Expression<String>? withGenres,
    Expression<String>? withoutGenres,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (year != null) 'year': year,
      if (sortBy != null) 'sort_by': sortBy,
      if (withCountries != null) 'with_countries': withCountries,
      if (withGenres != null) 'with_genres': withGenres,
      if (withoutGenres != null) 'without_genres': withoutGenres,
    });
  }

  SeriesFilterTableCompanion copyWith(
      {Value<int>? id,
      Value<int?>? year,
      Value<SortByDto?>? sortBy,
      Value<List<CountryDto>?>? withCountries,
      Value<List<SeriesGenreDto>?>? withGenres,
      Value<List<SeriesGenreDto>?>? withoutGenres}) {
    return SeriesFilterTableCompanion(
      id: id ?? this.id,
      year: year ?? this.year,
      sortBy: sortBy ?? this.sortBy,
      withCountries: withCountries ?? this.withCountries,
      withGenres: withGenres ?? this.withGenres,
      withoutGenres: withoutGenres ?? this.withoutGenres,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (year.present) {
      map['year'] = Variable<int>(year.value);
    }
    if (sortBy.present) {
      map['sort_by'] = Variable<String>(
          $SeriesFilterTableTable.$convertersortByn.toSql(sortBy.value));
    }
    if (withCountries.present) {
      map['with_countries'] = Variable<String>($SeriesFilterTableTable
          .$converterwithCountriesn
          .toSql(withCountries.value));
    }
    if (withGenres.present) {
      map['with_genres'] = Variable<String>($SeriesFilterTableTable
          .$converterwithGenresn
          .toSql(withGenres.value));
    }
    if (withoutGenres.present) {
      map['without_genres'] = Variable<String>($SeriesFilterTableTable
          .$converterwithoutGenresn
          .toSql(withoutGenres.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SeriesFilterTableCompanion(')
          ..write('id: $id, ')
          ..write('year: $year, ')
          ..write('sortBy: $sortBy, ')
          ..write('withCountries: $withCountries, ')
          ..write('withGenres: $withGenres, ')
          ..write('withoutGenres: $withoutGenres')
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
        seriesFilterTable
      ];
}

typedef $$MoviesTableTableCreateCompanionBuilder = MoviesTableCompanion
    Function({
  Value<int> id,
  required int tmdbId,
  Value<List<MovieGenreDto>?> genres,
  Value<List<String>?> originCountry,
  Value<DateTime?> premiereDate,
  Value<RatingDataDto?> tmdbRating,
  Value<int?> userRating,
  Value<bool?> isInWatchlist,
  Value<bool?> isWatched,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<LocalizedString?> localizedTitle,
  Value<LocalizedString?> localizedPosterUrl,
});
typedef $$MoviesTableTableUpdateCompanionBuilder = MoviesTableCompanion
    Function({
  Value<int> id,
  Value<int> tmdbId,
  Value<List<MovieGenreDto>?> genres,
  Value<List<String>?> originCountry,
  Value<DateTime?> premiereDate,
  Value<RatingDataDto?> tmdbRating,
  Value<int?> userRating,
  Value<bool?> isInWatchlist,
  Value<bool?> isWatched,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<LocalizedString?> localizedTitle,
  Value<LocalizedString?> localizedPosterUrl,
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

  ColumnWithTypeConverterFilters<List<String>?, List<String>, String>
      get originCountry => $composableBuilder(
          column: $table.originCountry,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<DateTime> get premiereDate => $composableBuilder(
      column: $table.premiereDate, builder: (column) => ColumnFilters(column));

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

  ColumnWithTypeConverterFilters<LocalizedString?, LocalizedString, String>
      get localizedTitle => $composableBuilder(
          column: $table.localizedTitle,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<LocalizedString?, LocalizedString, String>
      get localizedPosterUrl => $composableBuilder(
          column: $table.localizedPosterUrl,
          builder: (column) => ColumnWithTypeConverterFilters(column));
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

  ColumnOrderings<String> get originCountry => $composableBuilder(
      column: $table.originCountry,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get premiereDate => $composableBuilder(
      column: $table.premiereDate,
      builder: (column) => ColumnOrderings(column));

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

  ColumnOrderings<String> get localizedTitle => $composableBuilder(
      column: $table.localizedTitle,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get localizedPosterUrl => $composableBuilder(
      column: $table.localizedPosterUrl,
      builder: (column) => ColumnOrderings(column));
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

  GeneratedColumnWithTypeConverter<List<String>?, String> get originCountry =>
      $composableBuilder(
          column: $table.originCountry, builder: (column) => column);

  GeneratedColumn<DateTime> get premiereDate => $composableBuilder(
      column: $table.premiereDate, builder: (column) => column);

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

  GeneratedColumnWithTypeConverter<LocalizedString?, String>
      get localizedTitle => $composableBuilder(
          column: $table.localizedTitle, builder: (column) => column);

  GeneratedColumnWithTypeConverter<LocalizedString?, String>
      get localizedPosterUrl => $composableBuilder(
          column: $table.localizedPosterUrl, builder: (column) => column);
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
            Value<List<String>?> originCountry = const Value.absent(),
            Value<DateTime?> premiereDate = const Value.absent(),
            Value<RatingDataDto?> tmdbRating = const Value.absent(),
            Value<int?> userRating = const Value.absent(),
            Value<bool?> isInWatchlist = const Value.absent(),
            Value<bool?> isWatched = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<LocalizedString?> localizedTitle = const Value.absent(),
            Value<LocalizedString?> localizedPosterUrl = const Value.absent(),
          }) =>
              MoviesTableCompanion(
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
            localizedTitle: localizedTitle,
            localizedPosterUrl: localizedPosterUrl,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int tmdbId,
            Value<List<MovieGenreDto>?> genres = const Value.absent(),
            Value<List<String>?> originCountry = const Value.absent(),
            Value<DateTime?> premiereDate = const Value.absent(),
            Value<RatingDataDto?> tmdbRating = const Value.absent(),
            Value<int?> userRating = const Value.absent(),
            Value<bool?> isInWatchlist = const Value.absent(),
            Value<bool?> isWatched = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<LocalizedString?> localizedTitle = const Value.absent(),
            Value<LocalizedString?> localizedPosterUrl = const Value.absent(),
          }) =>
              MoviesTableCompanion.insert(
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
            localizedTitle: localizedTitle,
            localizedPosterUrl: localizedPosterUrl,
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
  Value<LocalizedString?> localizedTitle,
  Value<LocalizedString?> localizedPosterUrl,
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
  Value<LocalizedString?> localizedTitle,
  Value<LocalizedString?> localizedPosterUrl,
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

  ColumnWithTypeConverterFilters<LocalizedString?, LocalizedString, String>
      get localizedTitle => $composableBuilder(
          column: $table.localizedTitle,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<LocalizedString?, LocalizedString, String>
      get localizedPosterUrl => $composableBuilder(
          column: $table.localizedPosterUrl,
          builder: (column) => ColumnWithTypeConverterFilters(column));
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

  ColumnOrderings<String> get localizedTitle => $composableBuilder(
      column: $table.localizedTitle,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get localizedPosterUrl => $composableBuilder(
      column: $table.localizedPosterUrl,
      builder: (column) => ColumnOrderings(column));
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

  GeneratedColumnWithTypeConverter<LocalizedString?, String>
      get localizedTitle => $composableBuilder(
          column: $table.localizedTitle, builder: (column) => column);

  GeneratedColumnWithTypeConverter<LocalizedString?, String>
      get localizedPosterUrl => $composableBuilder(
          column: $table.localizedPosterUrl, builder: (column) => column);
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
            Value<LocalizedString?> localizedTitle = const Value.absent(),
            Value<LocalizedString?> localizedPosterUrl = const Value.absent(),
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
            localizedTitle: localizedTitle,
            localizedPosterUrl: localizedPosterUrl,
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
            Value<LocalizedString?> localizedTitle = const Value.absent(),
            Value<LocalizedString?> localizedPosterUrl = const Value.absent(),
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
            localizedTitle: localizedTitle,
            localizedPosterUrl: localizedPosterUrl,
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
  Value<DateTime> moviesSyncedAt,
  Value<DateTime> seriesSyncedAt,
});
typedef $$SyncUserTableTableUpdateCompanionBuilder = SyncUserTableCompanion
    Function({
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
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get uid => $composableBuilder(
      column: $table.uid, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get moviesSyncedAt => $composableBuilder(
      column: $table.moviesSyncedAt,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get seriesSyncedAt => $composableBuilder(
      column: $table.seriesSyncedAt,
      builder: (column) => ColumnFilters(column));
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

  ColumnOrderings<DateTime> get moviesSyncedAt => $composableBuilder(
      column: $table.moviesSyncedAt,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get seriesSyncedAt => $composableBuilder(
      column: $table.seriesSyncedAt,
      builder: (column) => ColumnOrderings(column));
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
      column: $table.moviesSyncedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get seriesSyncedAt => $composableBuilder(
      column: $table.seriesSyncedAt, builder: (column) => column);
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
            Value<DateTime> moviesSyncedAt = const Value.absent(),
            Value<DateTime> seriesSyncedAt = const Value.absent(),
          }) =>
              SyncUserTableCompanion(
            id: id,
            uid: uid,
            email: email,
            moviesSyncedAt: moviesSyncedAt,
            seriesSyncedAt: seriesSyncedAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String uid,
            required String email,
            Value<DateTime> moviesSyncedAt = const Value.absent(),
            Value<DateTime> seriesSyncedAt = const Value.absent(),
          }) =>
              SyncUserTableCompanion.insert(
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
typedef $$SettingsTableTableCreateCompanionBuilder = SettingsTableCompanion
    Function({
  Value<int> id,
  Value<bool?> isFirstLaunch,
});
typedef $$SettingsTableTableUpdateCompanionBuilder = SettingsTableCompanion
    Function({
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
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isFirstLaunch => $composableBuilder(
      column: $table.isFirstLaunch, builder: (column) => ColumnFilters(column));
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
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isFirstLaunch => $composableBuilder(
      column: $table.isFirstLaunch,
      builder: (column) => ColumnOrderings(column));
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
      column: $table.isFirstLaunch, builder: (column) => column);
}

class $$SettingsTableTableTableManager extends RootTableManager<
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
      BaseReferences<_$AppLocalDatabase, $SettingsTableTable, SettingsTableData>
    ),
    SettingsTableData,
    PrefetchHooks Function()> {
  $$SettingsTableTableTableManager(
      _$AppLocalDatabase db, $SettingsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SettingsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SettingsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SettingsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<bool?> isFirstLaunch = const Value.absent(),
          }) =>
              SettingsTableCompanion(
            id: id,
            isFirstLaunch: isFirstLaunch,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<bool?> isFirstLaunch = const Value.absent(),
          }) =>
              SettingsTableCompanion.insert(
            id: id,
            isFirstLaunch: isFirstLaunch,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SettingsTableTableProcessedTableManager = ProcessedTableManager<
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
      BaseReferences<_$AppLocalDatabase, $SettingsTableTable, SettingsTableData>
    ),
    SettingsTableData,
    PrefetchHooks Function()>;
typedef $$MoviesFilterTableTableCreateCompanionBuilder
    = MoviesFilterTableCompanion Function({
  Value<int> id,
  Value<int?> year,
  Value<SortByDto?> sortBy,
  Value<List<CountryDto>?> withCountries,
  Value<List<MovieGenreDto>?> withGenres,
  Value<List<MovieGenreDto>?> withoutGenres,
});
typedef $$MoviesFilterTableTableUpdateCompanionBuilder
    = MoviesFilterTableCompanion Function({
  Value<int> id,
  Value<int?> year,
  Value<SortByDto?> sortBy,
  Value<List<CountryDto>?> withCountries,
  Value<List<MovieGenreDto>?> withGenres,
  Value<List<MovieGenreDto>?> withoutGenres,
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
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get year => $composableBuilder(
      column: $table.year, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<SortByDto?, SortByDto, String> get sortBy =>
      $composableBuilder(
          column: $table.sortBy,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<CountryDto>?, List<CountryDto>, String>
      get withCountries => $composableBuilder(
          column: $table.withCountries,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<MovieGenreDto>?, List<MovieGenreDto>,
          String>
      get withGenres => $composableBuilder(
          column: $table.withGenres,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<MovieGenreDto>?, List<MovieGenreDto>,
          String>
      get withoutGenres => $composableBuilder(
          column: $table.withoutGenres,
          builder: (column) => ColumnWithTypeConverterFilters(column));
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
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get year => $composableBuilder(
      column: $table.year, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get sortBy => $composableBuilder(
      column: $table.sortBy, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get withCountries => $composableBuilder(
      column: $table.withCountries,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get withGenres => $composableBuilder(
      column: $table.withGenres, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get withoutGenres => $composableBuilder(
      column: $table.withoutGenres,
      builder: (column) => ColumnOrderings(column));
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

  GeneratedColumn<int> get year =>
      $composableBuilder(column: $table.year, builder: (column) => column);

  GeneratedColumnWithTypeConverter<SortByDto?, String> get sortBy =>
      $composableBuilder(column: $table.sortBy, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<CountryDto>?, String>
      get withCountries => $composableBuilder(
          column: $table.withCountries, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<MovieGenreDto>?, String>
      get withGenres => $composableBuilder(
          column: $table.withGenres, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<MovieGenreDto>?, String>
      get withoutGenres => $composableBuilder(
          column: $table.withoutGenres, builder: (column) => column);
}

class $$MoviesFilterTableTableTableManager extends RootTableManager<
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
      BaseReferences<_$AppLocalDatabase, $MoviesFilterTableTable,
          MoviesFilterTableData>
    ),
    MoviesFilterTableData,
    PrefetchHooks Function()> {
  $$MoviesFilterTableTableTableManager(
      _$AppLocalDatabase db, $MoviesFilterTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MoviesFilterTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MoviesFilterTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MoviesFilterTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> year = const Value.absent(),
            Value<SortByDto?> sortBy = const Value.absent(),
            Value<List<CountryDto>?> withCountries = const Value.absent(),
            Value<List<MovieGenreDto>?> withGenres = const Value.absent(),
            Value<List<MovieGenreDto>?> withoutGenres = const Value.absent(),
          }) =>
              MoviesFilterTableCompanion(
            id: id,
            year: year,
            sortBy: sortBy,
            withCountries: withCountries,
            withGenres: withGenres,
            withoutGenres: withoutGenres,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> year = const Value.absent(),
            Value<SortByDto?> sortBy = const Value.absent(),
            Value<List<CountryDto>?> withCountries = const Value.absent(),
            Value<List<MovieGenreDto>?> withGenres = const Value.absent(),
            Value<List<MovieGenreDto>?> withoutGenres = const Value.absent(),
          }) =>
              MoviesFilterTableCompanion.insert(
            id: id,
            year: year,
            sortBy: sortBy,
            withCountries: withCountries,
            withGenres: withGenres,
            withoutGenres: withoutGenres,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MoviesFilterTableTableProcessedTableManager = ProcessedTableManager<
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
      BaseReferences<_$AppLocalDatabase, $MoviesFilterTableTable,
          MoviesFilterTableData>
    ),
    MoviesFilterTableData,
    PrefetchHooks Function()>;
typedef $$SeriesFilterTableTableCreateCompanionBuilder
    = SeriesFilterTableCompanion Function({
  Value<int> id,
  Value<int?> year,
  Value<SortByDto?> sortBy,
  Value<List<CountryDto>?> withCountries,
  Value<List<SeriesGenreDto>?> withGenres,
  Value<List<SeriesGenreDto>?> withoutGenres,
});
typedef $$SeriesFilterTableTableUpdateCompanionBuilder
    = SeriesFilterTableCompanion Function({
  Value<int> id,
  Value<int?> year,
  Value<SortByDto?> sortBy,
  Value<List<CountryDto>?> withCountries,
  Value<List<SeriesGenreDto>?> withGenres,
  Value<List<SeriesGenreDto>?> withoutGenres,
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
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get year => $composableBuilder(
      column: $table.year, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<SortByDto?, SortByDto, String> get sortBy =>
      $composableBuilder(
          column: $table.sortBy,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<CountryDto>?, List<CountryDto>, String>
      get withCountries => $composableBuilder(
          column: $table.withCountries,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<SeriesGenreDto>?, List<SeriesGenreDto>,
          String>
      get withGenres => $composableBuilder(
          column: $table.withGenres,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<SeriesGenreDto>?, List<SeriesGenreDto>,
          String>
      get withoutGenres => $composableBuilder(
          column: $table.withoutGenres,
          builder: (column) => ColumnWithTypeConverterFilters(column));
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
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get year => $composableBuilder(
      column: $table.year, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get sortBy => $composableBuilder(
      column: $table.sortBy, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get withCountries => $composableBuilder(
      column: $table.withCountries,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get withGenres => $composableBuilder(
      column: $table.withGenres, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get withoutGenres => $composableBuilder(
      column: $table.withoutGenres,
      builder: (column) => ColumnOrderings(column));
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

  GeneratedColumn<int> get year =>
      $composableBuilder(column: $table.year, builder: (column) => column);

  GeneratedColumnWithTypeConverter<SortByDto?, String> get sortBy =>
      $composableBuilder(column: $table.sortBy, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<CountryDto>?, String>
      get withCountries => $composableBuilder(
          column: $table.withCountries, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<SeriesGenreDto>?, String>
      get withGenres => $composableBuilder(
          column: $table.withGenres, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<SeriesGenreDto>?, String>
      get withoutGenres => $composableBuilder(
          column: $table.withoutGenres, builder: (column) => column);
}

class $$SeriesFilterTableTableTableManager extends RootTableManager<
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
      BaseReferences<_$AppLocalDatabase, $SeriesFilterTableTable,
          SeriesFilterTableData>
    ),
    SeriesFilterTableData,
    PrefetchHooks Function()> {
  $$SeriesFilterTableTableTableManager(
      _$AppLocalDatabase db, $SeriesFilterTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SeriesFilterTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SeriesFilterTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SeriesFilterTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> year = const Value.absent(),
            Value<SortByDto?> sortBy = const Value.absent(),
            Value<List<CountryDto>?> withCountries = const Value.absent(),
            Value<List<SeriesGenreDto>?> withGenres = const Value.absent(),
            Value<List<SeriesGenreDto>?> withoutGenres = const Value.absent(),
          }) =>
              SeriesFilterTableCompanion(
            id: id,
            year: year,
            sortBy: sortBy,
            withCountries: withCountries,
            withGenres: withGenres,
            withoutGenres: withoutGenres,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> year = const Value.absent(),
            Value<SortByDto?> sortBy = const Value.absent(),
            Value<List<CountryDto>?> withCountries = const Value.absent(),
            Value<List<SeriesGenreDto>?> withGenres = const Value.absent(),
            Value<List<SeriesGenreDto>?> withoutGenres = const Value.absent(),
          }) =>
              SeriesFilterTableCompanion.insert(
            id: id,
            year: year,
            sortBy: sortBy,
            withCountries: withCountries,
            withGenres: withGenres,
            withoutGenres: withoutGenres,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SeriesFilterTableTableProcessedTableManager = ProcessedTableManager<
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
      BaseReferences<_$AppLocalDatabase, $SeriesFilterTableTable,
          SeriesFilterTableData>
    ),
    SeriesFilterTableData,
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
  $$SettingsTableTableTableManager get settingsTable =>
      $$SettingsTableTableTableManager(_db, _db.settingsTable);
  $$MoviesFilterTableTableTableManager get moviesFilterTable =>
      $$MoviesFilterTableTableTableManager(_db, _db.moviesFilterTable);
  $$SeriesFilterTableTableTableManager get seriesFilterTable =>
      $$SeriesFilterTableTableTableManager(_db, _db.seriesFilterTable);
}
