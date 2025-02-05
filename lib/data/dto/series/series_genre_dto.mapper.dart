// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'series_genre_dto.dart';

class SeriesGenreDtoMapper extends EnumMapper<SeriesGenreDto> {
  SeriesGenreDtoMapper._();

  static SeriesGenreDtoMapper? _instance;
  static SeriesGenreDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SeriesGenreDtoMapper._());
    }
    return _instance!;
  }

  static SeriesGenreDto fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  SeriesGenreDto decode(dynamic value) {
    switch (value) {
      case 10759:
        return SeriesGenreDto.actionAndAdventure;
      case 16:
        return SeriesGenreDto.animation;
      case 35:
        return SeriesGenreDto.comedy;
      case 80:
        return SeriesGenreDto.crime;
      case 99:
        return SeriesGenreDto.documentary;
      case 18:
        return SeriesGenreDto.drama;
      case 10751:
        return SeriesGenreDto.family;
      case 10762:
        return SeriesGenreDto.kids;
      case 9648:
        return SeriesGenreDto.mystery;
      case 10763:
        return SeriesGenreDto.news;
      case 10764:
        return SeriesGenreDto.reality;
      case 10765:
        return SeriesGenreDto.sciFiAndFantasy;
      case 10766:
        return SeriesGenreDto.soap;
      case 10767:
        return SeriesGenreDto.talk;
      case 10768:
        return SeriesGenreDto.warAndPolitics;
      case 37:
        return SeriesGenreDto.western;
      case -1:
        return SeriesGenreDto.none;
      default:
        return SeriesGenreDto.values[16];
    }
  }

  @override
  dynamic encode(SeriesGenreDto self) {
    switch (self) {
      case SeriesGenreDto.actionAndAdventure:
        return 10759;
      case SeriesGenreDto.animation:
        return 16;
      case SeriesGenreDto.comedy:
        return 35;
      case SeriesGenreDto.crime:
        return 80;
      case SeriesGenreDto.documentary:
        return 99;
      case SeriesGenreDto.drama:
        return 18;
      case SeriesGenreDto.family:
        return 10751;
      case SeriesGenreDto.kids:
        return 10762;
      case SeriesGenreDto.mystery:
        return 9648;
      case SeriesGenreDto.news:
        return 10763;
      case SeriesGenreDto.reality:
        return 10764;
      case SeriesGenreDto.sciFiAndFantasy:
        return 10765;
      case SeriesGenreDto.soap:
        return 10766;
      case SeriesGenreDto.talk:
        return 10767;
      case SeriesGenreDto.warAndPolitics:
        return 10768;
      case SeriesGenreDto.western:
        return 37;
      case SeriesGenreDto.none:
        return -1;
    }
  }
}

extension SeriesGenreDtoMapperExtension on SeriesGenreDto {
  dynamic toValue() {
    SeriesGenreDtoMapper.ensureInitialized();
    return MapperContainer.globals.toValue<SeriesGenreDto>(this);
  }
}
