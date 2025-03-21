import '../../common/utils/ext/int/pagination_handler.dart';
import '../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../domain/entities/rating/rating.dart';
import '../../domain/entities/series/series_data.dart';
import '../../domain/entities/series/series_short_data.dart';
import '../dto/rating/rating_data_dto.dart';
import '../dto/series/series_data_dto.dart';
import '../dto/series/series_response_data_dto.dart';
import '../dto/series/series_short_data_dto.dart';
import '../dto/series/series_short_response_data_dto.dart';
import 'app_countries_mapper_ext.dart';
import 'app_credits_mapper.dart';
import 'app_genres_mapper_ext.dart';
import 'app_mapper.dart';
import 'app_rating_mapper.dart';
import 'app_video_mapper.dart';

final class AppSeriesMapper extends AppMapper {
  final AppRatingMapper _ratingMapper;
  final AppCreditsMapper _creditsMapper;
  final AppVideoMapper _videoMapper;

  AppSeriesMapper({
    required AppRatingMapper ratingMapper,
    required AppCreditsMapper creditsMapper,
    required AppVideoMapper videoMapper,
  }) : _ratingMapper = ratingMapper,
       _creditsMapper = creditsMapper,
       _videoMapper = videoMapper;

  PaginatedSeries mapSeriesShortResponseDataToDomain(
    SeriesShortResponseDataDto dto,
  ) {
    return PaginatedSeries(
      items: mapSeriesShortDataListDtoToDomain(dto.results ?? []),
      currentPage: dto.page ?? 1,
      isLastPage: dto.page.isLastPage(dto.totalPages),
    );
  }

  PaginatedSeries mapSeriesResponseDataToDomain(SeriesResponseDataDto dto) {
    return PaginatedSeries(
      items: mapSeriesDataListDtoToShortDomain(dto.results ?? []),
      currentPage: dto.page ?? 1,
      isLastPage: dto.page.isLastPage(dto.totalPages),
    );
  }

  List<SeriesData> mapSeriesDataListDtoToDomain(List<SeriesDataDto> dtos) {
    return dtos.map(mapSeriesDataDtoToDomain).toList();
  }

  SeriesData mapSeriesDataDtoToDomain(SeriesDataDto dto) {
    return SeriesData(
      id: dto.id ?? -1,
      backdropUrl: dto.backdropPath ?? '',
      posterUrl: dto.posterPath ?? '',
      genres: (dto.genres ?? dto.genresAlt).toDomain(),
      originCountry: dto.originCountry.toDomain(),
      originalLanguage: dto.originalLanguage ?? '',
      originalTitle: dto.originalName ?? '',
      premiereDate: dto.firstAirDate,
      title: dto.name ?? '',
      overview: dto.overview ?? '',
      tmdbRating: _ratingMapper.mapSeriesDataDtoToTMDBRating(dto),
      cast:
          dto.credits != null
              ? _creditsMapper.mapCreditsDataDtoToCastDataList(dto.credits!)
              : [],
      crew:
          dto.credits != null
              ? _creditsMapper.mapCreditsDataDtoToCrewDataList(dto.credits!)
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

  List<SeriesShortData> mapSeriesDataListDtoToShortDomain(
    List<SeriesDataDto> dtos,
  ) {
    return dtos.map(_mapSeriesDataDtoToShortDomain).toList();
  }

  SeriesShortData _mapSeriesDataDtoToShortDomain(SeriesDataDto dto) {
    return SeriesShortData(
      id: dto.id ?? -1,
      posterUrl: dto.posterPath ?? '',
      genres: dto.genres.toDomain(),
      originCountry: dto.originCountry.toDomain(),
      premiereDate: dto.firstAirDate,
      title: dto.name ?? '',
      tmdbRating: _ratingMapper.mapSeriesDataDtoToTMDBRating(dto),
      userRating: dto.userRating ?? 0,
      isInWatchlist: dto.isInWatchlist ?? false,
      isWatched: dto.isWatched ?? false,
    );
  }

  List<SeriesShortData> mapSeriesShortDataListDtoToDomain(
    List<SeriesShortDataDto> dtos,
  ) {
    return dtos.map(mapSeriesShortDataDtoToDomain).toList();
  }

  SeriesShortData mapSeriesShortDataDtoToDomain(SeriesShortDataDto dto) {
    return SeriesShortData(
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
    );
  }

  SeriesShortDataDto mapSeriesShortDataToDto(SeriesShortData data) {
    return SeriesShortDataDto(
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
