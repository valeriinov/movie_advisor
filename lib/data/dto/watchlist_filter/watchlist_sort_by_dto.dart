import 'package:dart_mappable/dart_mappable.dart';

part 'watchlist_sort_by_dto.mapper.dart';

@MappableEnum(
  mode: ValuesMode.named,
  caseStyle: CaseStyle.snakeCase,
  defaultValue: WatchlistSortByDto.addedDateAsc,
)
enum WatchlistSortByDto {
  addedDateAsc,
  addedDateDesc,
  premiereDateAsc,
  premiereDateDesc,
  tmdbRateAsc,
  tmdbRateDesc,
}
