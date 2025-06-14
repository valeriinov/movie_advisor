import 'package:dart_mappable/dart_mappable.dart';

part 'watched_sort_by_dto.mapper.dart';

@MappableEnum(
  mode: ValuesMode.named,
  caseStyle: CaseStyle.snakeCase,
  defaultValue: WatchedSortByDto.watchedDateDesc,
)
enum WatchedSortByDto {
  watchedDateAsc,
  watchedDateDesc,
  premiereDateAsc,
  premiereDateDesc,
  tmdbRateAsc,
  tmdbRateDesc,
  userRateAsc,
  userRateDesc,
}
