import 'package:dart_mappable/dart_mappable.dart';

part 'movie_genre_dto.mapper.dart';

@MappableEnum(mode: ValuesMode.indexed, defaultValue: MovieGenreDto.none)
enum MovieGenreDto {
  @MappableValue(28)
  action,
  @MappableValue(12)
  adventure,
  @MappableValue(16)
  animation,
  @MappableValue(35)
  comedy,
  @MappableValue(80)
  crime,
  @MappableValue(99)
  documentary,
  @MappableValue(18)
  drama,
  @MappableValue(10751)
  family,
  @MappableValue(14)
  fantasy,
  @MappableValue(36)
  history,
  @MappableValue(27)
  horror,
  @MappableValue(10402)
  music,
  @MappableValue(9648)
  mystery,
  @MappableValue(10749)
  romance,
  @MappableValue(878)
  scienceFiction,
  @MappableValue(10770)
  tvMovie,
  @MappableValue(53)
  thriller,
  @MappableValue(10752)
  war,
  @MappableValue(37)
  western,
  @MappableValue(-1)
  none,
}
