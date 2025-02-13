import 'package:dart_mappable/dart_mappable.dart';

part 'search_filter_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class SearchFilterDataDto with SearchFilterDataDtoMappable {
  final String? query;

  const SearchFilterDataDto({
    this.query,
  });

  factory SearchFilterDataDto.fromJson(Map<String, dynamic> json) =>
      SearchFilterDataDtoMapper.fromJson(json);
}
