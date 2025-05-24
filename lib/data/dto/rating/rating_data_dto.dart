import 'package:dart_mappable/dart_mappable.dart';

part 'rating_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class RatingDataDto with RatingDataDtoMappable {
  final double? popularity;
  final double? voteAverage;
  final int? voteCount;

  const RatingDataDto({this.popularity, this.voteAverage, this.voteCount});

  factory RatingDataDto.fromJson(Map<String, dynamic> json) =>
      RatingDataDtoMapper.fromJson(json);
}
