import 'package:dart_mappable/dart_mappable.dart';

part 'series_genre_dto.mapper.dart';

@MappableEnum(
  mode: ValuesMode.indexed,
  defaultValue: SeriesGenreDto.none,
)
enum SeriesGenreDto {
  @MappableValue(10759)
  actionAndAdventure,
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
  @MappableValue(10762)
  kids,
  @MappableValue(9648)
  mystery,
  @MappableValue(10763)
  news,
  @MappableValue(10764)
  reality,
  @MappableValue(10765)
  sciFiAndFantasy,
  @MappableValue(10766)
  soap,
  @MappableValue(10767)
  talk,
  @MappableValue(10768)
  warAndPolitics,
  @MappableValue(37)
  western,
  @MappableValue(-1)
  none;
}
