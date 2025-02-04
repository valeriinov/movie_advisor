import 'package:dart_mappable/dart_mappable.dart';

part 'series_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class SeriesDataDto with SeriesDataDtoMappable {
  final int? id;
  final String? backdropPath;
  final List<int>? genreIds;
  final List<String>? originCountry;
  final String? originalLanguage;
  final String? originalName;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final DateTime? firstAirDate;
  final String? name;
  final double? voteAverage;
  final int? voteCount;

  const SeriesDataDto({
    this.id,
    this.backdropPath,
    this.genreIds,
    this.originCountry,
    this.originalLanguage,
    this.originalName,
    this.overview,
    this.popularity,
    this.posterPath,
    this.firstAirDate,
    this.name,
    this.voteAverage,
    this.voteCount,
  });

  factory SeriesDataDto.fromJson(Map<String, dynamic> json) =>
      SeriesDataDtoMapper.fromJson(json);
}
