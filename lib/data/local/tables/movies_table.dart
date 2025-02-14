import 'package:drift/drift.dart';

import '../../dto/movie/movie_genre_dto.dart';
import '../utils/rating_converter.dart';

class MoviesTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get tmdbId => integer().unique()();

  TextColumn get genres => text().map(movieGenresConverter).nullable()();

  DateTimeColumn get premiereDate => dateTime().nullable()();

  TextColumn get title => text().nullable()();

  TextColumn get tmdbRating => text().map(ratingConverter).nullable()();

  IntColumn get userRating => integer().nullable()();

  BoolColumn get isInWatchlist => boolean().nullable()();

  BoolColumn get isWatched => boolean().nullable()();
}

final TypeConverter<List<MovieGenreDto>, String> movieGenresConverter =
    TypeConverter.json2(
  fromJson: (json) => (json as List<dynamic>)
      .map((e) => MovieGenreDtoMapper.fromValue(e))
      .toList(),
  toJson: (services) => services.map((e) => e.toValue()).toList(),
);
