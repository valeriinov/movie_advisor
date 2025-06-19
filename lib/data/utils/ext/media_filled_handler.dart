import 'package:flutter_utils/flutter_utils.dart';

import '../../dto/movie/movie_data_dto.dart';
import '../../dto/series/series_data_dto.dart';

extension MovieFilledHandler on MovieDataDto {
  bool get isFilled {
    return id != null &&
        title.isNotNullAndNotEmpty &&
        genres.isNotNullAndNotEmpty &&
        overview.isNotNullAndNotEmpty &&
        posterPath.isNotNullAndNotEmpty &&
        releaseDate != null;
  }
}

extension SeriesFilledHandler on SeriesDataDto {
  bool get isFilled {
    return id != null &&
        name.isNotNullAndNotEmpty &&
        genres.isNotNullAndNotEmpty &&
        overview.isNotNullAndNotEmpty &&
        posterPath.isNotNullAndNotEmpty &&
        firstAirDate != null;
  }
}
