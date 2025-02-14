import 'package:drift/drift.dart';

import '../../dto/rating/rating_data_dto.dart';

final TypeConverter<RatingDataDto, String> ratingConverter =
TypeConverter.json2(
  fromJson: (json) => RatingDataDto.fromJson(json as Map<String, dynamic>),
  toJson: (rating) => rating.toJson(),
);