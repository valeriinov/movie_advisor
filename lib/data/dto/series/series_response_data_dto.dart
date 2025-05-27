import 'package:dart_mappable/dart_mappable.dart';

import 'series_data_dto.dart';
import '../data_list_response.dart';

part 'series_response_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class SeriesResponseDataDto extends DataListResponse<SeriesDataDto>
    with SeriesResponseDataDtoMappable {
  const SeriesResponseDataDto({super.page, super.results, super.totalPages});

  factory SeriesResponseDataDto.fromJson(Map<String, dynamic> json) =>
      SeriesResponseDataDtoMapper.fromJson(json);
}
