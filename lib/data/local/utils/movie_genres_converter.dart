import 'package:drift/drift.dart';

import '../../dto/movie/movie_genre_dto.dart';

final TypeConverter<List<MovieGenreDto>, String> movieGenresConverter =
    TypeConverter.json2(
      fromJson: (json) => (json as List<dynamic>)
          .map((e) => MovieGenreDtoMapper.fromValue(e))
          .toList(),
      toJson: (services) => services.map((e) => e.toValue()).toList(),
    );
