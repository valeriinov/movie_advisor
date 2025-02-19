// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'movies_short_response_data_dto.dart';

class MoviesShortResponseDataDtoMapper
    extends ClassMapperBase<MoviesShortResponseDataDto> {
  MoviesShortResponseDataDtoMapper._();

  static MoviesShortResponseDataDtoMapper? _instance;
  static MoviesShortResponseDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = MoviesShortResponseDataDtoMapper._());
      MovieShortDataDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MoviesShortResponseDataDto';

  static int? _$page(MoviesShortResponseDataDto v) => v.page;
  static const Field<MoviesShortResponseDataDto, int> _f$page =
      Field('page', _$page, opt: true);
  static List<MovieShortDataDto>? _$results(MoviesShortResponseDataDto v) =>
      v.results;
  static const Field<MoviesShortResponseDataDto, List<MovieShortDataDto>>
      _f$results = Field('results', _$results, opt: true);
  static int? _$totalPages(MoviesShortResponseDataDto v) => v.totalPages;
  static const Field<MoviesShortResponseDataDto, int> _f$totalPages =
      Field('totalPages', _$totalPages, key: r'total_pages', opt: true);

  @override
  final MappableFields<MoviesShortResponseDataDto> fields = const {
    #page: _f$page,
    #results: _f$results,
    #totalPages: _f$totalPages,
  };
  @override
  final bool ignoreNull = true;

  static MoviesShortResponseDataDto _instantiate(DecodingData data) {
    return MoviesShortResponseDataDto(
        page: data.dec(_f$page),
        results: data.dec(_f$results),
        totalPages: data.dec(_f$totalPages));
  }

  @override
  final Function instantiate = _instantiate;

  static MoviesShortResponseDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MoviesShortResponseDataDto>(map);
  }

  static MoviesShortResponseDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<MoviesShortResponseDataDto>(json);
  }
}

mixin MoviesShortResponseDataDtoMappable {
  String toJsonString() {
    return MoviesShortResponseDataDtoMapper.ensureInitialized()
        .encodeJson<MoviesShortResponseDataDto>(
            this as MoviesShortResponseDataDto);
  }

  Map<String, dynamic> toJson() {
    return MoviesShortResponseDataDtoMapper.ensureInitialized()
        .encodeMap<MoviesShortResponseDataDto>(
            this as MoviesShortResponseDataDto);
  }

  MoviesShortResponseDataDtoCopyWith<MoviesShortResponseDataDto,
          MoviesShortResponseDataDto, MoviesShortResponseDataDto>
      get copyWith => _MoviesShortResponseDataDtoCopyWithImpl(
          this as MoviesShortResponseDataDto, $identity, $identity);
  @override
  String toString() {
    return MoviesShortResponseDataDtoMapper.ensureInitialized()
        .stringifyValue(this as MoviesShortResponseDataDto);
  }

  @override
  bool operator ==(Object other) {
    return MoviesShortResponseDataDtoMapper.ensureInitialized()
        .equalsValue(this as MoviesShortResponseDataDto, other);
  }

  @override
  int get hashCode {
    return MoviesShortResponseDataDtoMapper.ensureInitialized()
        .hashValue(this as MoviesShortResponseDataDto);
  }
}

extension MoviesShortResponseDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MoviesShortResponseDataDto, $Out> {
  MoviesShortResponseDataDtoCopyWith<$R, MoviesShortResponseDataDto, $Out>
      get $asMoviesShortResponseDataDto => $base
          .as((v, t, t2) => _MoviesShortResponseDataDtoCopyWithImpl(v, t, t2));
}

abstract class MoviesShortResponseDataDtoCopyWith<
    $R,
    $In extends MoviesShortResponseDataDto,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, MovieShortDataDto,
          MovieShortDataDtoCopyWith<$R, MovieShortDataDto, MovieShortDataDto>>?
      get results;
  $R call({int? page, List<MovieShortDataDto>? results, int? totalPages});
  MoviesShortResponseDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MoviesShortResponseDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MoviesShortResponseDataDto, $Out>
    implements
        MoviesShortResponseDataDtoCopyWith<$R, MoviesShortResponseDataDto,
            $Out> {
  _MoviesShortResponseDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MoviesShortResponseDataDto> $mapper =
      MoviesShortResponseDataDtoMapper.ensureInitialized();
  @override
  ListCopyWith<$R, MovieShortDataDto,
          MovieShortDataDtoCopyWith<$R, MovieShortDataDto, MovieShortDataDto>>?
      get results => $value.results != null
          ? ListCopyWith($value.results!, (v, t) => v.copyWith.$chain(t),
              (v) => call(results: v))
          : null;
  @override
  $R call(
          {Object? page = $none,
          Object? results = $none,
          Object? totalPages = $none}) =>
      $apply(FieldCopyWithData({
        if (page != $none) #page: page,
        if (results != $none) #results: results,
        if (totalPages != $none) #totalPages: totalPages
      }));
  @override
  MoviesShortResponseDataDto $make(CopyWithData data) =>
      MoviesShortResponseDataDto(
          page: data.get(#page, or: $value.page),
          results: data.get(#results, or: $value.results),
          totalPages: data.get(#totalPages, or: $value.totalPages));

  @override
  MoviesShortResponseDataDtoCopyWith<$R2, MoviesShortResponseDataDto, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _MoviesShortResponseDataDtoCopyWithImpl($value, $cast, t);
}
