import '../../domain/entities/movie/movie_data.dart';
import '../../domain/entities/movie/movie_genre.dart';
import '../../domain/entities/movie/movie_short_data.dart';
import '../../domain/entities/rating/rating.dart';
import '../dto/movie/movie_data_dto.dart';
import '../dto/movie/movie_genre_dto.dart';
import 'app_mapper.dart';

final class AppMoviesMapper extends AppMapper {
  List<MovieData> mapMovieDataListDtoToDomain(List<MovieDataDto> dtos) {
    return dtos.map(mapMovieDataDtoToDomain).toList();
  }

  MovieData mapMovieDataDtoToDomain(MovieDataDto dto) {
    return MovieData(
      id: dto.id ?? -1,
      backdropUrl: dto.backdropPath ?? '',
      posterUrl: dto.posterPath ?? '',
      genres: _mapMovieGenresDtoToDomain(dto.genres),
      originalLanguage: dto.originalLanguage ?? '',
      originalTitle: dto.originalTitle ?? '',
      releaseDate: dto.releaseDate ?? DateTime.now(),
      title: dto.title ?? '',
      overview: dto.overview ?? '',
      tmdbRating: _mapMovieDataDtoToTMDBRating(dto),
      userRating: dto.userRating ?? 0,
      isInWatchlist: dto.isInWatchlist ?? false,
      isWatched: dto.isWatched ?? false,
    );
  }

  List<MovieShortData> mapMovieShortDataListDtoToDomain(
      List<MovieDataDto> dtos) {
    return dtos.map(_mapMovieShortDataDtoToDomain).toList();
  }

  MovieShortData _mapMovieShortDataDtoToDomain(MovieDataDto dto) {
    return MovieShortData(
      id: dto.id ?? -1,
      posterUrl: dto.posterPath ?? '',
      genres: _mapMovieGenresDtoToDomain(dto.genres),
      releaseDate: dto.releaseDate ?? DateTime.now(),
      title: dto.title ?? '',
      tmdbRating: _mapMovieDataDtoToTMDBRating(dto),
      userRating: dto.userRating ?? 0,
      isInWatchlist: dto.isInWatchlist ?? false,
      isWatched: dto.isWatched ?? false,
    );
  }

  List<MovieGenre> _mapMovieGenresDtoToDomain(List<MovieGenreDto>? dtos) {
    return dtos?.map(_mapMovieGenreDtoToDomain).toList() ?? [];
  }

  MovieGenre _mapMovieGenreDtoToDomain(MovieGenreDto? dto) {
    return MovieGenre.values.firstWhere(
      (e) => e.name == dto?.name,
      orElse: () => MovieGenre.none,
    );
  }

  TMDBRating _mapMovieDataDtoToTMDBRating(MovieDataDto dto) {
    return TMDBRating(
      popularity: dto.popularity,
      voteAverage: dto.voteAverage ?? 0,
      voteCount: dto.voteCount ?? 0,
    );
  }

  MovieDataDto mapMovieDataToDto(MovieData data) {
    return MovieDataDto(
      id: data.id,
      backdropPath: data.backdropUrl,
      posterPath: data.posterUrl,
      genres: _mapMovieGenresToDto(data.genres),
      originalLanguage: data.originalLanguage,
      originalTitle: data.originalTitle,
      releaseDate: data.releaseDate,
      title: data.title,
      overview: data.overview,
      popularity: data.tmdbRating.popularity,
      voteAverage: data.tmdbRating.voteAverage,
      voteCount: data.tmdbRating.voteCount,
      userRating: data.userRating,
      isInWatchlist: data.isInWatchlist,
      isWatched: data.isWatched,
    );
  }

  List<MovieGenreDto> _mapMovieGenresToDto(List<MovieGenre> genres) {
    return genres.map(_mapMovieGenreToDto).toList();
  }

  MovieGenreDto _mapMovieGenreToDto(MovieGenre genre) {
    return MovieGenreDto.values.firstWhere(
      (e) => e.name == genre.name,
      orElse: () => MovieGenreDto.none,
    );
  }
}
