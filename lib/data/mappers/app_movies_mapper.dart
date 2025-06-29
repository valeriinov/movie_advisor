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
import 'app_countries_mapper_ext.dart';
import 'app_credits_mapper.dart';
import 'app_genres_mapper_ext.dart';
import 'app_mapper.dart';
import 'app_rating_mapper.dart';
import 'app_video_mapper.dart';

final class AppMoviesMapper extends AppMapper {
  final AppRatingMapper _ratingMapper;
  final AppCreditsMapper _creditsMapper;
  final AppVideoMapper _videoMapper;

  AppMoviesMapper({
    required AppRatingMapper ratingMapper,
    required AppCreditsMapper creditsMapper,
    required AppVideoMapper videoMapper,
  }) : _ratingMapper = ratingMapper,
       _creditsMapper = creditsMapper,
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
      originCountry: dto.originCountry.toDomain(),
      originalLanguage: dto.originalLanguage ?? '',
      originalTitle: dto.originalTitle ?? '',
      premiereDate: dto.releaseDate,
      title: dto.title ?? '',
      overview: dto.overview ?? '',
      tmdbRating: _ratingMapper.mapMovieDataDtoToTMDBRating(dto),
      cast: dto.credits != null
          ? _creditsMapper.mapCreditsDataDtoToCastDataList(dto.credits!)
          : [],
      crew: dto.credits != null
          ? _creditsMapper.mapCreditsDataDtoToCrewDataList(dto.credits!)
          : [],
      videos: dto.videos != null
          ? _videoMapper.mapVideosDataDtoTiDomain(dto.videos!)
          : [],
      revenue: dto.revenue ?? 0,
      userRating: dto.userRating ?? 0,
      isInWatchlist: dto.isInWatchlist ?? false,
      isWatched: dto.isWatched ?? false,
      watchlistAddedAt: dto.watchlistAddedAt,
      lastWatchedAt: dto.lastWatchedAt,
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
      originCountry: dto.originCountry.toDomain(),
      premiereDate: dto.releaseDate,
      title: dto.title ?? '',
      tmdbRating: _ratingMapper.mapMovieDataDtoToTMDBRating(dto),
      userRating: dto.userRating ?? 0,
      isInWatchlist: dto.isInWatchlist ?? false,
      isWatched: dto.isWatched ?? false,
      watchlistAddedAt: dto.watchlistAddedAt,
      lastWatchedAt: dto.lastWatchedAt,
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
      originCountry: dto.originCountry.toDomain(),
      premiereDate: dto.premiereDate,
      title: dto.title ?? '',
      tmdbRating: _ratingMapper.mapRatingDtoToTMDBRating(dto.tmdbRating),
      userRating: dto.userRating ?? 0,
      isInWatchlist: dto.isInWatchlist ?? false,
      isWatched: dto.isWatched ?? false,
      watchlistAddedAt: dto.watchlistAddedAt,
      lastWatchedAt: dto.lastWatchedAt,
    );
  }

  MovieShortDataDto mapMovieShortDataToDto(MovieShortData data) {
    return MovieShortDataDto(
      id: data.id,
      posterUrl: data.posterUrl,
      genres: data.genres.toDto(),
      originCountry: data.originCountry.toDto(),
      premiereDate: data.premiereDate,
      title: data.title,
      tmdbRating: _mapRatingToDto(data.tmdbRating),
      userRating: data.userRating,
      isInWatchlist: data.isInWatchlist,
      isWatched: data.isWatched,
      watchlistAddedAt: data.watchlistAddedAt,
      lastWatchedAt: data.lastWatchedAt,
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
