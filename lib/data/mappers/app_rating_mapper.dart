import '../../domain/entities/rating/rating.dart';
import '../dto/movie/movie_data_dto.dart' show MovieDataDto;
import '../dto/rating/rating_data_dto.dart';
import '../dto/series/series_data_dto.dart';
import 'app_mapper.dart';

final class AppRatingMapper extends AppMapper {
  TMDBRating mapMovieDataDtoToTMDBRating(MovieDataDto dto) {
    return TMDBRating(
      popularity: dto.popularity,
      voteAverage: dto.voteAverage ?? 0,
      voteCount: dto.voteCount ?? 0,
    );
  }

  TMDBRating mapSeriesDataDtoToTMDBRating(SeriesDataDto dto) {
    return TMDBRating(
      popularity: dto.popularity,
      voteAverage: dto.voteAverage ?? 0,
      voteCount: dto.voteCount ?? 0,
    );
  }

  TMDBRating mapRatingDtoToTMDBRating(RatingDataDto? dto) {
    return TMDBRating(
      popularity: dto?.popularity,
      voteAverage: dto?.voteAverage ?? 0,
      voteCount: dto?.voteCount ?? 0,
    );
  }

  RatingDataDto mapRatingToDto(Rating rating) {
    return RatingDataDto(
      popularity: rating.popularity,
      voteAverage: rating.voteAverage,
      voteCount: rating.voteCount,
    );
  }
}
