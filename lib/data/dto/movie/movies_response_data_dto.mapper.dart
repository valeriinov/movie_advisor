// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'movies_response_data_dto.dart';

class MoviesResponseDataDtoMapper
    extends ClassMapperBase<MoviesResponseDataDto> {
  MoviesResponseDataDtoMapper._();

  static MoviesResponseDataDtoMapper? _instance;
  static MoviesResponseDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MoviesResponseDataDtoMapper._());
      MovieDataDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MoviesResponseDataDto';

  static int? _$page(MoviesResponseDataDto v) => v.page;
  static const Field<MoviesResponseDataDto, int> _f$page = Field(
    'page',
    _$page,
    opt: true,
  );
  static List<MovieDataDto>? _$results(MoviesResponseDataDto v) => v.results;
  static const Field<MoviesResponseDataDto, List<MovieDataDto>> _f$results =
      Field('results', _$results, opt: true);
  static int? _$totalPages(MoviesResponseDataDto v) => v.totalPages;
  static const Field<MoviesResponseDataDto, int> _f$totalPages = Field(
    'totalPages',
    _$totalPages,
    key: r'total_pages',
    opt: true,
  );

  @override
  final MappableFields<MoviesResponseDataDto> fields = const {
    #page: _f$page,
    #results: _f$results,
    #totalPages: _f$totalPages,
  };
  @override
  final bool ignoreNull = true;

  static MoviesResponseDataDto _instantiate(DecodingData data) {
    return MoviesResponseDataDto(
      page: data.dec(_f$page),
      results: data.dec(_f$results),
      totalPages: data.dec(_f$totalPages),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MoviesResponseDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MoviesResponseDataDto>(map);
  }

  static MoviesResponseDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<MoviesResponseDataDto>(json);
  }
}

mixin MoviesResponseDataDtoMappable {
  String toJsonString() {
    return MoviesResponseDataDtoMapper.ensureInitialized()
        .encodeJson<MoviesResponseDataDto>(this as MoviesResponseDataDto);
  }

  Map<String, dynamic> toJson() {
    return MoviesResponseDataDtoMapper.ensureInitialized()
        .encodeMap<MoviesResponseDataDto>(this as MoviesResponseDataDto);
  }

  MoviesResponseDataDtoCopyWith<
    MoviesResponseDataDto,
    MoviesResponseDataDto,
    MoviesResponseDataDto
  >
  get copyWith =>
      _MoviesResponseDataDtoCopyWithImpl<
        MoviesResponseDataDto,
        MoviesResponseDataDto
      >(this as MoviesResponseDataDto, $identity, $identity);
  @override
  String toString() {
    return MoviesResponseDataDtoMapper.ensureInitialized().stringifyValue(
      this as MoviesResponseDataDto,
    );
  }

  @override
  bool operator ==(Object other) {
    return MoviesResponseDataDtoMapper.ensureInitialized().equalsValue(
      this as MoviesResponseDataDto,
      other,
    );
  }

  @override
  int get hashCode {
    return MoviesResponseDataDtoMapper.ensureInitialized().hashValue(
      this as MoviesResponseDataDto,
    );
  }
}

extension MoviesResponseDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MoviesResponseDataDto, $Out> {
  MoviesResponseDataDtoCopyWith<$R, MoviesResponseDataDto, $Out>
  get $asMoviesResponseDataDto => $base.as(
    (v, t, t2) => _MoviesResponseDataDtoCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class MoviesResponseDataDtoCopyWith<
  $R,
  $In extends MoviesResponseDataDto,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    MovieDataDto,
    MovieDataDtoCopyWith<$R, MovieDataDto, MovieDataDto>
  >?
  get results;
  $R call({int? page, List<MovieDataDto>? results, int? totalPages});
  MoviesResponseDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MoviesResponseDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MoviesResponseDataDto, $Out>
    implements MoviesResponseDataDtoCopyWith<$R, MoviesResponseDataDto, $Out> {
  _MoviesResponseDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MoviesResponseDataDto> $mapper =
      MoviesResponseDataDtoMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    MovieDataDto,
    MovieDataDtoCopyWith<$R, MovieDataDto, MovieDataDto>
  >?
  get results => $value.results != null
      ? ListCopyWith(
          $value.results!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(results: v),
        )
      : null;
  @override
  $R call({
    Object? page = $none,
    Object? results = $none,
    Object? totalPages = $none,
  }) => $apply(
    FieldCopyWithData({
      if (page != $none) #page: page,
      if (results != $none) #results: results,
      if (totalPages != $none) #totalPages: totalPages,
    }),
  );
  @override
  MoviesResponseDataDto $make(CopyWithData data) => MoviesResponseDataDto(
    page: data.get(#page, or: $value.page),
    results: data.get(#results, or: $value.results),
    totalPages: data.get(#totalPages, or: $value.totalPages),
  );

  @override
  MoviesResponseDataDtoCopyWith<$R2, MoviesResponseDataDto, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _MoviesResponseDataDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
