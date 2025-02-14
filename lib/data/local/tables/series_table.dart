import 'package:drift/drift.dart';

import '../../dto/series/series_genre_dto.dart';
import '../utils/rating_converter.dart';

class SeriesTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get tmdbId => integer().unique()();

  TextColumn get genres => text().map(seriesGenresConverter).nullable()();

  DateTimeColumn get premiereDate => dateTime().nullable()();

  TextColumn get title => text().nullable()();

  TextColumn get tmdbRating => text().map(ratingConverter).nullable()();

  IntColumn get userRating => integer().nullable()();

  BoolColumn get isInWatchlist => boolean().nullable()();

  BoolColumn get isWatched => boolean().nullable()();
}

final TypeConverter<List<SeriesGenreDto>, String> seriesGenresConverter =
    TypeConverter.json2(
  fromJson: (json) => (json as List<dynamic>)
      .map((e) => SeriesGenreDtoMapper.fromValue(e))
      .toList(),
  toJson: (services) => services.map((e) => e.toValue()).toList(),
);
