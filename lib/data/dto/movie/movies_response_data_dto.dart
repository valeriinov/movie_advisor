import 'package:dart_mappable/dart_mappable.dart';

import '../data_list_response.dart';
import 'movie_data_dto.dart';

part 'movies_response_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class MoviesResponseDataDto extends DataListResponse<MovieDataDto>
    with MoviesResponseDataDtoMappable {
  const MoviesResponseDataDto({super.page, super.results, super.totalPages});

  factory MoviesResponseDataDto.fromJson(Map<String, dynamic> json) =>
      MoviesResponseDataDtoMapper.fromJson(json);
}
