import '../../domain/entities/rating/rating.dart';
import '../../domain/entities/series/series_data.dart';
import '../../domain/entities/series/series_genre.dart';
import '../../domain/entities/series/series_short_data.dart';
import '../dto/series/series_data_dto.dart';
import '../dto/series/series_genre_dto.dart';
import 'app_mapper.dart';

final class AppSeriesMapper extends AppMapper {
  List<SeriesData> mapSeriesDataListDtoToDomain(List<SeriesDataDto> dtos) {
    return dtos.map(mapSeriesDataDtoToDomain).toList();
  }

  SeriesData mapSeriesDataDtoToDomain(SeriesDataDto dto) {
    return SeriesData(
      id: dto.id ?? -1,
      backdropUrl: dto.backdropPath ?? '',
      posterUrl: dto.posterPath ?? '',
      genres: _mapSeriesGenresDtoToDomain(dto.genres),
      originCountry: dto.originCountry ?? [],
      originalLanguage: dto.originalLanguage ?? '',
      originalTitle: dto.originalName ?? '',
      premiereDate: dto.firstAirDate,
      title: dto.name ?? '',
      overview: dto.overview ?? '',
      tmdbRating: _mapSeriesDataDtoToTMDBRating(dto),
      userRating: dto.userRating ?? 0,
      isInWatchlist: dto.isInWatchlist ?? false,
      isWatched: dto.isWatched ?? false,
    );
  }

  List<SeriesShortData> mapSeriesShortDataListDtoToDomain(
      List<SeriesDataDto> dtos) {
    return dtos.map(_mapSeriesShortDataDtoToDomain).toList();
  }

  SeriesShortData _mapSeriesShortDataDtoToDomain(SeriesDataDto dto) {
    return SeriesShortData(
      id: dto.id ?? -1,
      posterUrl: dto.posterPath ?? '',
      genres: _mapSeriesGenresDtoToDomain(dto.genres),
      premiereDate: dto.firstAirDate,
      title: dto.name ?? '',
      tmdbRating: _mapSeriesDataDtoToTMDBRating(dto),
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

  TMDBRating _mapSeriesDataDtoToTMDBRating(SeriesDataDto dto) {
    return TMDBRating(
      popularity: dto.popularity,
      voteAverage: dto.voteAverage ?? 0,
      voteCount: dto.voteCount ?? 0,
    );
  }

  List<SeriesDataDto> mapSeriesDataListToDto(List<SeriesData> data) {
    return data.map(mapSeriesDataToDto).toList();
  }

  SeriesDataDto mapSeriesDataToDto(SeriesData data) {
    return SeriesDataDto(
      id: data.id,
      backdropPath: data.backdropUrl,
      posterPath: data.posterUrl,
      genres: _mapSeriesGenresToDto(data.genres),
      originCountry: data.originCountry,
      originalLanguage: data.originalLanguage,
      originalName: data.originalTitle,
      firstAirDate: data.premiereDate,
      name: data.title,
      overview: data.overview,
      popularity: data.tmdbRating.popularity,
      voteAverage: data.tmdbRating.voteAverage,
      voteCount: data.tmdbRating.voteCount,
      userRating: data.userRating,
      isInWatchlist: data.isInWatchlist,
      isWatched: data.isWatched,
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
