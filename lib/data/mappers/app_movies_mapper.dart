import '../../domain/entities/movie/movie_data.dart';
import '../../domain/entities/movie/movie_genre.dart';
import '../../domain/entities/movie/movie_short_data.dart';
import '../../domain/entities/rating/rating.dart';
import '../dto/movie/movie_data_dto.dart';
import '../dto/movie/movie_genre_dto.dart';
import '../dto/movie/movie_short_data_dto.dart';
import '../dto/rating/rating_data_dto.dart';
import 'app_cast_mapper.dart';
import 'app_mapper.dart';

final class AppMoviesMapper extends AppMapper {
  final AppCastMapper _castMapper;

  AppMoviesMapper({required AppCastMapper castMapper})
      : _castMapper = castMapper;

  List<MovieData> mapMovieDataListDtoToDomain(List<MovieDataDto> dtos) {
    return dtos.map(mapMovieDataDtoToDomain).toList();
  }

  MovieData mapMovieDataDtoToDomain(MovieDataDto dto) {
    return MovieData(
      id: dto.id ?? -1,
      backdropUrl: dto.backdropPath ?? '',
      posterUrl: dto.posterPath ?? '',
      genres: _mapMovieGenresDtoToDomain(dto.genres ?? dto.genresAlt),
      originCountry: [],
      originalLanguage: dto.originalLanguage ?? '',
      originalTitle: dto.originalTitle ?? '',
      premiereDate: dto.releaseDate,
      title: dto.title ?? '',
      overview: dto.overview ?? '',
      tmdbRating: _mapMovieDataDtoToTMDBRating(dto),
      cast: dto.credits != null
          ? _castMapper.mapCreditsDataDtoToDomain(dto.credits!)
          : [],
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
      premiereDate: dto.releaseDate,
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

  MovieShortDataDto mapMovieDataToDto(MovieData data) {
    return MovieShortDataDto(
      id: data.id,
      posterUrl: data.posterUrl,
      genres: _mapMovieGenresToDto(data.genres),
      premiereDate: data.premiereDate,
      title: data.title,
      tmdbRating: _mapRatingToDto(data.tmdbRating),
      userRating: data.userRating,
      isInWatchlist: data.isInWatchlist,
      isWatched: data.isWatched,
    );
  }

  RatingDataDto _mapRatingToDto(Rating rating) {
    return RatingDataDto(
      popularity: rating.popularity,
      voteAverage: rating.voteAverage,
      voteCount: rating.voteCount,
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
