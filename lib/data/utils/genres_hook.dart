import 'package:dart_mappable/dart_mappable.dart';

import '../dto/movie/movie_genre_dto.dart';
import '../dto/series/series_genre_dto.dart';

class MovieGenresHook extends MappingHook {
  const MovieGenresHook();

  @override
  dynamic beforeDecode(dynamic value) {
    if (value is! List) return value;

    return value
        .whereType<Map<String, dynamic>>()
        .map((v) => MovieGenreDtoMapper.fromValue(v['id']))
        .whereType<MovieGenreDto>()
        .toList();
  }
}

class SeriesGenreHook extends MappingHook {
  const SeriesGenreHook();

  @override
  dynamic beforeDecode(dynamic value) {
    if (value is! List) return value;

    return value
        .whereType<Map<String, dynamic>>()
        .map((v) => SeriesGenreDtoMapper.fromValue(v['id']))
        .whereType<SeriesGenreDto>()
        .toList();
  }
}
