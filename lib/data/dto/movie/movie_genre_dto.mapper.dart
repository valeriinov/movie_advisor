// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'movie_genre_dto.dart';

class MovieGenreDtoMapper extends EnumMapper<MovieGenreDto> {
  MovieGenreDtoMapper._();

  static MovieGenreDtoMapper? _instance;
  static MovieGenreDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MovieGenreDtoMapper._());
    }
    return _instance!;
  }

  static MovieGenreDto fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  MovieGenreDto decode(dynamic value) {
    switch (value) {
      case 28:
        return MovieGenreDto.action;
      case 12:
        return MovieGenreDto.adventure;
      case 16:
        return MovieGenreDto.animation;
      case 35:
        return MovieGenreDto.comedy;
      case 80:
        return MovieGenreDto.crime;
      case 99:
        return MovieGenreDto.documentary;
      case 18:
        return MovieGenreDto.drama;
      case 10751:
        return MovieGenreDto.family;
      case 14:
        return MovieGenreDto.fantasy;
      case 36:
        return MovieGenreDto.history;
      case 27:
        return MovieGenreDto.horror;
      case 10402:
        return MovieGenreDto.music;
      case 9648:
        return MovieGenreDto.mystery;
      case 10749:
        return MovieGenreDto.romance;
      case 878:
        return MovieGenreDto.scienceFiction;
      case 10770:
        return MovieGenreDto.tvMovie;
      case 53:
        return MovieGenreDto.thriller;
      case 10752:
        return MovieGenreDto.war;
      case 37:
        return MovieGenreDto.western;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(MovieGenreDto self) {
    switch (self) {
      case MovieGenreDto.action:
        return 28;
      case MovieGenreDto.adventure:
        return 12;
      case MovieGenreDto.animation:
        return 16;
      case MovieGenreDto.comedy:
        return 35;
      case MovieGenreDto.crime:
        return 80;
      case MovieGenreDto.documentary:
        return 99;
      case MovieGenreDto.drama:
        return 18;
      case MovieGenreDto.family:
        return 10751;
      case MovieGenreDto.fantasy:
        return 14;
      case MovieGenreDto.history:
        return 36;
      case MovieGenreDto.horror:
        return 27;
      case MovieGenreDto.music:
        return 10402;
      case MovieGenreDto.mystery:
        return 9648;
      case MovieGenreDto.romance:
        return 10749;
      case MovieGenreDto.scienceFiction:
        return 878;
      case MovieGenreDto.tvMovie:
        return 10770;
      case MovieGenreDto.thriller:
        return 53;
      case MovieGenreDto.war:
        return 10752;
      case MovieGenreDto.western:
        return 37;
    }
  }
}

extension MovieGenreDtoMapperExtension on MovieGenreDto {
  dynamic toValue() {
    MovieGenreDtoMapper.ensureInitialized();
    return MapperContainer.globals.toValue<MovieGenreDto>(this);
  }
}
