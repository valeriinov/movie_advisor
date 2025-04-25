import '../../domain/entities/person/gender.dart';
import '../../domain/entities/person/person_credits_data.dart';
import '../../domain/entities/person/person_data.dart';
import '../../domain/entities/person/person_mov_cred_data.dart';
import '../../domain/entities/person/person_ser_cred_data.dart';
import '../../domain/entities/rating/rating.dart';
import '../dto/credits/crew_job_dto.dart';
import '../dto/person/gender_dto.dart';
import '../dto/person/person_credits_data_dto.dart';
import '../dto/person/person_data_dto.dart';
import '../dto/person/person_mov_cred_data_dto.dart';
import '../dto/person/person_ser_cred_data_dto.dart';
import 'app_crew_mapper_ext.dart';
import 'app_genres_mapper_ext.dart';
import 'app_mapper.dart';

final class AppPersonMapper extends AppMapper {
  PersonData mapPersonDataDtoToDomain(PersonDataDto dto) {
    return PersonData(
      id: dto.id ?? -1,
      name: dto.name ?? '',
      profilePath: dto.profilePath ?? '',
      placeOfBirth: dto.placeOfBirth ?? '',
      gender: _mapGenderDtoToDomain(dto.gender),
      biography: dto.biography ?? '',
      birthday: dto.birthday,
      deathDay: dto.deathDay,
      movieCredits: _mapMovieCreditsDtoToDomain(dto.movieCredits),
      seriesCredits: _mapSeriesCreditsDtoToDomain(dto.seriesCredits),
    );
  }

  PersonCreditsMovie _mapMovieCreditsDtoToDomain(PersonCreditsMovieDto? dto) {
    final crew =
        dto?.crew?.where((e) => e.crewJob != CrewJobDto.unknown).toList();

    return PersonCreditsMovie(
      cast: _mapMovieCreditsDataDtoToDomain(dto?.cast),
      crew: _mapMovieCreditsDataDtoToDomain(crew ?? []),
    );
  }

  List<PersonMovCredData> _mapMovieCreditsDataDtoToDomain(
    List<PersonMovCredDataDto>? dto,
  ) {
    return dto?.map(_mapPersonMovCredDataDtoToDomain).toList() ?? [];
  }

  PersonMovCredData _mapPersonMovCredDataDtoToDomain(PersonMovCredDataDto dto) {
    return PersonMovCredData(
      id: dto.id ?? -1,
      posterUrl: dto.posterPath ?? '',
      title: dto.title ?? '',
      genres: dto.genres.toDomain(),
      premiereDate: dto.releaseDate,
      tmdbRating: TMDBRating(
        popularity: dto.popularity,
        voteAverage: dto.voteAverage ?? 0,
        voteCount: dto.voteCount ?? 0,
      ),
      userRating: dto.userRating ?? 0,
      isInWatchlist: dto.isInWatchlist ?? false,
      isWatched: dto.isWatched ?? false,
      actCharacter: dto.actCharacter,
      crewJob: dto.crewJob?.toDomain(),
    );
  }

  PersonCreditsSeries _mapSeriesCreditsDtoToDomain(
    PersonCreditsSeriesDto? dto,
  ) {
    final crew =
        dto?.crew?.where((e) => e.crewJob != CrewJobDto.unknown).toList();

    return PersonCreditsSeries(
      cast: _mapSeriesCreditsDataDtoToDomain(dto?.cast),
      crew: _mapSeriesCreditsDataDtoToDomain(crew ?? []),
    );
  }

  List<PersonSerCredData> _mapSeriesCreditsDataDtoToDomain(
    List<PersonSerCredDataDto>? dto,
  ) {
    return dto?.map(_mapPersonSerCredDataDtoToDomain).toList() ?? [];
  }

  PersonSerCredData _mapPersonSerCredDataDtoToDomain(PersonSerCredDataDto dto) {
    return PersonSerCredData(
      id: dto.id ?? -1,
      posterUrl: dto.posterPath ?? '',
      title: dto.title ?? '',
      genres: dto.genres.toDomain(),
      premiereDate: dto.releaseDate,
      tmdbRating: TMDBRating(
        popularity: dto.popularity,
        voteAverage: dto.voteAverage ?? 0,
        voteCount: dto.voteCount ?? 0,
      ),
      userRating: dto.userRating ?? 0,
      isInWatchlist: dto.isInWatchlist ?? false,
      isWatched: dto.isWatched ?? false,
      actCharacter: dto.actCharacter,
      crewJob: dto.crewJob?.toDomain(),
    );
  }

  Gender _mapGenderDtoToDomain(GenderDto? dto) {
    return Gender.values.firstWhere(
      (e) => e.name == dto?.name,
      orElse: () => Gender.none,
    );
  }
}
