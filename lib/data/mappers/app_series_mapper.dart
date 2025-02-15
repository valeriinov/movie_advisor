import '../../domain/entities/rating/rating.dart';
import '../../domain/entities/series/series_data.dart';
import '../../domain/entities/series/series_genre.dart';
import '../../domain/entities/series/series_short_data.dart';
import '../dto/rating/rating_data_dto.dart';
import '../dto/series/series_data_dto.dart';
import '../dto/series/series_genre_dto.dart';
import '../dto/series/series_short_data_dto.dart';
import 'app_cast_mapper.dart';
import 'app_mapper.dart';
import 'app_rating_mapper.dart';

final class AppSeriesMapper extends AppMapper {
  final AppRatingMapper _ratingMapper;
  final AppCastMapper _castMapper;

  AppSeriesMapper(
      {required AppRatingMapper ratingMapper,
      required AppCastMapper castMapper})
      : _ratingMapper = ratingMapper,
        _castMapper = castMapper;

  List<SeriesData> mapSeriesDataListDtoToDomain(List<SeriesDataDto> dtos) {
    return dtos.map(mapSeriesDataDtoToDomain).toList();
  }

  SeriesData mapSeriesDataDtoToDomain(SeriesDataDto dto) {
    return SeriesData(
      id: dto.id ?? -1,
      backdropUrl: dto.backdropPath ?? '',
      posterUrl: dto.posterPath ?? '',
      genres: _mapSeriesGenresDtoToDomain(dto.genres ?? dto.genresAlt),
      originCountry: dto.originCountry ?? [],
      originalLanguage: dto.originalLanguage ?? '',
      originalTitle: dto.originalName ?? '',
      premiereDate: dto.firstAirDate,
      title: dto.name ?? '',
      overview: dto.overview ?? '',
      tmdbRating: _ratingMapper.mapSeriesDataDtoToTMDBRating(dto),
      cast: dto.credits != null
          ? _castMapper.mapCreditsDataDtoToDomain(dto.credits!)
          : [],
      userRating: dto.userRating ?? 0,
      isInWatchlist: dto.isInWatchlist ?? false,
      isWatched: dto.isWatched ?? false,
    );
  }

  List<SeriesShortData> mapSeriesDataListDtoToShortDomain(
      List<SeriesDataDto> dtos) {
    return dtos.map(_mapSeriesDataDtoToShortDomain).toList();
  }

  SeriesShortData _mapSeriesDataDtoToShortDomain(SeriesDataDto dto) {
    return SeriesShortData(
      id: dto.id ?? -1,
      posterUrl: dto.posterPath ?? '',
      genres: _mapSeriesGenresDtoToDomain(dto.genres),
      premiereDate: dto.firstAirDate,
      title: dto.name ?? '',
      tmdbRating: _ratingMapper.mapSeriesDataDtoToTMDBRating(dto),
      userRating: dto.userRating ?? 0,
      isInWatchlist: dto.isInWatchlist ?? false,
      isWatched: dto.isWatched ?? false,
    );
  }

  List<SeriesShortData> mapSeriesShortDataListDtoToDomain(
      List<SeriesShortDataDto> dtos) {
    return dtos.map(_mapSeriesShortDataDtoToDomain).toList();
  }

  SeriesShortData _mapSeriesShortDataDtoToDomain(SeriesShortDataDto dto) {
    return SeriesShortData(
      id: dto.id ?? -1,
      posterUrl: dto.posterUrl ?? '',
      genres: _mapSeriesGenresDtoToDomain(dto.genres),
      premiereDate: dto.premiereDate,
      title: dto.title ?? '',
      tmdbRating: _ratingMapper.mapRatingDtoToTMDBRating(dto.tmdbRating),
      userRating: dto.userRating ?? 0,
      isInWatchlist: dto.isInWatchlist ?? false,
      isWatched: dto.isWatched ?? false,
    );
  }

  List<SeriesGenre> _mapSeriesGenresDtoToDomain(List<SeriesGenreDto>? dtos) {
    return dtos?.map(_mapSeriesGenreDtoToDomain).toList() ?? [];
  }

  SeriesGenre _mapSeriesGenreDtoToDomain(SeriesGenreDto? dto) {
    return SeriesGenre.values.firstWhere(
      (e) => e.name == dto?.name,
      orElse: () => SeriesGenre.none,
    );
  }

  SeriesShortDataDto mapSeriesShortDataToDto(SeriesShortData data) {
    return SeriesShortDataDto(
      id: data.id,
      posterUrl: data.posterUrl,
      genres: _mapSeriesGenresToDto(data.genres),
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

  List<SeriesGenreDto> _mapSeriesGenresToDto(List<SeriesGenre> genres) {
    return genres.map(_mapSeriesGenreToDto).toList();
  }

  SeriesGenreDto _mapSeriesGenreToDto(SeriesGenre genre) {
    return SeriesGenreDto.values.firstWhere(
      (e) => e.name == genre.name,
      orElse: () => SeriesGenreDto.none,
    );
  }
}
