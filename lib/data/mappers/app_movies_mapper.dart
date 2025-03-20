import '../../common/utils/ext/int/pagination_handler.dart';
import '../../domain/entities/movie/movie_data.dart';
import '../../domain/entities/movie/movie_short_data.dart';
import '../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../domain/entities/rating/rating.dart';
import '../dto/movie/movie_data_dto.dart';
import '../dto/movie/movie_short_data_dto.dart';
import '../dto/movie/movies_response_data_dto.dart';
import '../dto/movie/movies_short_response_data_dto.dart';
import '../dto/rating/rating_data_dto.dart';
import 'app_cast_mapper.dart';
import 'app_genres_mapper_ext.dart';
import 'app_mapper.dart';
import 'app_rating_mapper.dart';
import 'app_video_mapper.dart';

final class AppMoviesMapper extends AppMapper {
  final AppRatingMapper _ratingMapper;
  final AppCastMapper _castMapper;
  final AppVideoMapper _videoMapper;

  AppMoviesMapper({
    required AppRatingMapper ratingMapper,
    required AppCastMapper castMapper,
    required AppVideoMapper videoMapper,
  }) : _ratingMapper = ratingMapper,
       _castMapper = castMapper,
       _videoMapper = videoMapper;

  PaginatedMovies mapMoviesShortResponseDataToDomain(
    MoviesShortResponseDataDto dto,
  ) {
    return PaginatedMovies(
      items: mapMovieShortDataListDtoToDomain(dto.results ?? []),
      currentPage: dto.page ?? 1,
      isLastPage: dto.page.isLastPage(dto.totalPages),
    );
  }

  PaginatedMovies mapMoviesResponseDataToDomain(MoviesResponseDataDto dto) {
    return PaginatedMovies(
      items: mapMovieDataListDtoToShortDomain(dto.results ?? []),
      currentPage: dto.page ?? 1,
      isLastPage: dto.page.isLastPage(dto.totalPages),
    );
  }

  List<MovieData> mapMovieDataListDtoToDomain(List<MovieDataDto> dtos) {
    return dtos.map(mapMovieDataDtoToDomain).toList();
  }

  MovieData mapMovieDataDtoToDomain(MovieDataDto dto) {
    return MovieData(
      id: dto.id ?? -1,
      backdropUrl: dto.backdropPath ?? '',
      posterUrl: dto.posterPath ?? '',
      genres: (dto.genres ?? dto.genresAlt).toDomain(),
      originCountry: dto.originCountry ?? [],
      originalLanguage: dto.originalLanguage ?? '',
      originalTitle: dto.originalTitle ?? '',
      premiereDate: dto.releaseDate,
      title: dto.title ?? '',
      overview: dto.overview ?? '',
      tmdbRating: _ratingMapper.mapMovieDataDtoToTMDBRating(dto),
      cast:
          dto.credits != null
              ? _castMapper.mapCreditsDataDtoToDomain(dto.credits!)
              : [],
      videos:
          dto.videos != null
              ? _videoMapper.mapVideosDataDtoTiDomain(dto.videos!)
              : [],
      userRating: dto.userRating ?? 0,
      isInWatchlist: dto.isInWatchlist ?? false,
      isWatched: dto.isWatched ?? false,
    );
  }

  List<MovieShortData> mapMovieDataListDtoToShortDomain(
    List<MovieDataDto> dtos,
  ) {
    return dtos.map(_mapMovieDataDtoToShortDomain).toList();
  }

  MovieShortData _mapMovieDataDtoToShortDomain(MovieDataDto dto) {
    return MovieShortData(
      id: dto.id ?? -1,
      posterUrl: dto.posterPath ?? '',
      genres: dto.genres.toDomain(),
      originCountry: dto.originCountry ?? [],
      premiereDate: dto.releaseDate,
      title: dto.title ?? '',
      tmdbRating: _ratingMapper.mapMovieDataDtoToTMDBRating(dto),
      userRating: dto.userRating ?? 0,
      isInWatchlist: dto.isInWatchlist ?? false,
      isWatched: dto.isWatched ?? false,
    );
  }

  List<MovieShortData> mapMovieShortDataListDtoToDomain(
    List<MovieShortDataDto> dtos,
  ) {
    return dtos.map(mapMovieShortDataDtoToDomain).toList();
  }

  MovieShortData mapMovieShortDataDtoToDomain(MovieShortDataDto dto) {
    return MovieShortData(
      id: dto.id ?? -1,
      posterUrl: dto.posterUrl ?? '',
      genres: dto.genres.toDomain(),
      originCountry: dto.originCountry ?? [],
      premiereDate: dto.premiereDate,
      title: dto.title ?? '',
      tmdbRating: _ratingMapper.mapRatingDtoToTMDBRating(dto.tmdbRating),
      userRating: dto.userRating ?? 0,
      isInWatchlist: dto.isInWatchlist ?? false,
      isWatched: dto.isWatched ?? false,
    );
  }

  MovieShortDataDto mapMovieShortDataToDto(MovieShortData data) {
    return MovieShortDataDto(
      id: data.id,
      posterUrl: data.posterUrl,
      genres: data.genres.toDto(),
      originCountry: data.originCountry,
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
}
