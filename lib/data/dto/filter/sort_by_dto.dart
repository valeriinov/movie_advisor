import 'package:dart_mappable/dart_mappable.dart';

part 'sort_by_dto.mapper.dart';

@MappableEnum(mode: ValuesMode.indexed, defaultValue: SortByDto.popularityDesc)
enum SortByDto {
  @MappableValue('popularity.asc')
  popularityAsc,
  @MappableValue('popularity.desc')
  popularityDesc,
  @MappableValue('primary_release_date.asc')
  releaseDateAsc,
  @MappableValue('primary_release_date.desc')
  releaseDateDesc,
  @MappableValue('revenue.asc')
  revenueAsc,
  @MappableValue('revenue.desc')
  revenueDesc,
  @MappableValue('vote_average.asc')
  voteAverageAsc,
  @MappableValue('vote_average.desc')
  voteAverageDesc,
}
