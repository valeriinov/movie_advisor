import 'package:dart_mappable/dart_mappable.dart';

import '../data_list_response.dart';
import 'series_short_data_dto.dart';

part 'series_short_response_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class SeriesShortResponseDataDto extends DataListResponse<SeriesShortDataDto>
    with SeriesShortResponseDataDtoMappable {
  const SeriesShortResponseDataDto({
    super.page,
    super.results,
    super.totalPages,
  });

  factory SeriesShortResponseDataDto.fromJson(Map<String, dynamic> json) =>
      SeriesShortResponseDataDtoMapper.fromJson(json);
}
