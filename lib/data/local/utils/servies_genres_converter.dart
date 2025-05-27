import 'package:drift/drift.dart';

import '../../dto/series/series_genre_dto.dart';

final TypeConverter<List<SeriesGenreDto>, String> seriesGenresConverter =
    TypeConverter.json2(
      fromJson: (json) => (json as List<dynamic>)
          .map((e) => SeriesGenreDtoMapper.fromValue(e))
          .toList(),
      toJson: (services) => services.map((e) => e.toValue()).toList(),
    );
