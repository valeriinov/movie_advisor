import 'package:dart_mappable/dart_mappable.dart';

import '../dto/movie/movie_genre_dto.dart';

class GenresHook extends MappingHook {
  const GenresHook();

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
