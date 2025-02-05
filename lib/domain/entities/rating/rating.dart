import 'package:dart_mappable/dart_mappable.dart';

import '../mappable_entity.dart';

part 'rating.mapper.dart';


sealed class Rating{
  final double? popularity;
  final double voteAverage;
  final int voteCount;

  const Rating({
    this.popularity,
    required this.voteAverage,
    required this.voteCount,
  });
}

@mappableEntity
final class TMDBRating extends Rating with TMDBRatingMappable {
  const TMDBRating({
    super.popularity,
    required super.voteAverage,
    required super.voteCount,
  });
}