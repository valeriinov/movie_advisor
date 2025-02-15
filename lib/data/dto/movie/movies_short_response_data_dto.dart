import 'package:dart_mappable/dart_mappable.dart';

import '../data_list_response.dart';
import 'movie_short_data_dto.dart';

part 'movies_short_response_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class MoviesShortResponseDataDto extends DataListResponse<MovieShortDataDto>
    with MoviesShortResponseDataDtoMappable {
  const MoviesShortResponseDataDto({
    super.page,
    super.results,
    super.totalPages,
  });

  factory MoviesShortResponseDataDto.fromJson(Map<String, dynamic> json) =>
      MoviesShortResponseDataDtoMapper.fromJson(json);
}
