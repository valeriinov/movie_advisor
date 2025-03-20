import '../../domain/entities/movie/movie_genre.dart';
import '../../domain/entities/series/series_genre.dart';
import '../dto/movie/movie_genre_dto.dart';
import '../dto/series/series_genre_dto.dart';

extension AppGenresMovieDtoMapper on List<MovieGenre> {
  List<MovieGenreDto> toDto() {
    return map((e) => e.toDto()).toList();
  }
}

extension AppGenreMovieDtoMapper on MovieGenre {
  MovieGenreDto toDto() {
    return MovieGenreDto.values.firstWhere(
      (e) => e.name == name,
      orElse: () => MovieGenreDto.none,
    );
  }
}

extension AppGenresMovieMapper on List<MovieGenreDto>? {
  List<MovieGenre> toDomain() {
    return this?.map((e) => e.toDomain()).toList() ?? [];
  }
}

extension AppGenreMovieMapper on MovieGenreDto {
  MovieGenre toDomain() {
    return MovieGenre.values.firstWhere(
      (e) => e.name == name,
      orElse: () => MovieGenre.none,
    );
  }
}

extension AppGenresSeriesDtoMapper on List<SeriesGenre> {
  List<SeriesGenreDto> toDto() {
    return map((e) => e.toDto()).toList();
  }
}

extension AppGenreSeriesDtoMapper on SeriesGenre {
  SeriesGenreDto toDto() {
    return SeriesGenreDto.values.firstWhere(
      (e) => e.name == name,
      orElse: () => SeriesGenreDto.none,
    );
  }
}

extension AppGenresSeriesMapper on List<SeriesGenreDto>? {
  List<SeriesGenre> toDomain() {
    return this?.map((e) => e.toDomain()).toList() ?? [];
  }
}

extension AppGenreSeriesMapper on SeriesGenreDto {
  SeriesGenre toDomain() {
    return SeriesGenre.values.firstWhere(
      (e) => e.name == name,
      orElse: () => SeriesGenre.none,
    );
  }
}
