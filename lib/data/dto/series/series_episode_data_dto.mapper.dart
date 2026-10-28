// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'series_episode_data_dto.dart';

class SeriesEpisodeDataDtoMapper extends ClassMapperBase<SeriesEpisodeDataDto> {
  SeriesEpisodeDataDtoMapper._();

  static SeriesEpisodeDataDtoMapper? _instance;
  static SeriesEpisodeDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SeriesEpisodeDataDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SeriesEpisodeDataDto';

  static int? _$seasonNumber(SeriesEpisodeDataDto v) => v.seasonNumber;
  static const Field<SeriesEpisodeDataDto, int> _f$seasonNumber = Field(
    'seasonNumber',
    _$seasonNumber,
    key: r'season_number',
    opt: true,
  );
  static int? _$episodeNumber(SeriesEpisodeDataDto v) => v.episodeNumber;
  static const Field<SeriesEpisodeDataDto, int> _f$episodeNumber = Field(
    'episodeNumber',
    _$episodeNumber,
    key: r'episode_number',
    opt: true,
  );
  static DateTime? _$airDate(SeriesEpisodeDataDto v) => v.airDate;
  static const Field<SeriesEpisodeDataDto, DateTime> _f$airDate = Field(
    'airDate',
    _$airDate,
    key: r'air_date',
    opt: true,
    hook: DateMapperHook(),
  );

  @override
  final MappableFields<SeriesEpisodeDataDto> fields = const {
    #seasonNumber: _f$seasonNumber,
    #episodeNumber: _f$episodeNumber,
    #airDate: _f$airDate,
  };
  @override
  final bool ignoreNull = true;

  static SeriesEpisodeDataDto _instantiate(DecodingData data) {
    return SeriesEpisodeDataDto(
      seasonNumber: data.dec(_f$seasonNumber),
      episodeNumber: data.dec(_f$episodeNumber),
      airDate: data.dec(_f$airDate),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static SeriesEpisodeDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SeriesEpisodeDataDto>(map);
  }

  static SeriesEpisodeDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<SeriesEpisodeDataDto>(json);
  }
}

mixin SeriesEpisodeDataDtoMappable {
  String toJsonString() {
    return SeriesEpisodeDataDtoMapper.ensureInitialized()
        .encodeJson<SeriesEpisodeDataDto>(this as SeriesEpisodeDataDto);
  }

  Map<String, dynamic> toJson() {
    return SeriesEpisodeDataDtoMapper.ensureInitialized()
        .encodeMap<SeriesEpisodeDataDto>(this as SeriesEpisodeDataDto);
  }

  SeriesEpisodeDataDtoCopyWith<
    SeriesEpisodeDataDto,
    SeriesEpisodeDataDto,
    SeriesEpisodeDataDto
  >
  get copyWith =>
      _SeriesEpisodeDataDtoCopyWithImpl<
        SeriesEpisodeDataDto,
        SeriesEpisodeDataDto
      >(this as SeriesEpisodeDataDto, $identity, $identity);
  @override
  String toString() {
    return SeriesEpisodeDataDtoMapper.ensureInitialized().stringifyValue(
      this as SeriesEpisodeDataDto,
    );
  }

  @override
  bool operator ==(Object other) {
    return SeriesEpisodeDataDtoMapper.ensureInitialized().equalsValue(
      this as SeriesEpisodeDataDto,
      other,
    );
  }

  @override
  int get hashCode {
    return SeriesEpisodeDataDtoMapper.ensureInitialized().hashValue(
      this as SeriesEpisodeDataDto,
    );
  }
}

extension SeriesEpisodeDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SeriesEpisodeDataDto, $Out> {
  SeriesEpisodeDataDtoCopyWith<$R, SeriesEpisodeDataDto, $Out>
  get $asSeriesEpisodeDataDto => $base.as(
    (v, t, t2) => _SeriesEpisodeDataDtoCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class SeriesEpisodeDataDtoCopyWith<
  $R,
  $In extends SeriesEpisodeDataDto,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? seasonNumber, int? episodeNumber, DateTime? airDate});
  SeriesEpisodeDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _SeriesEpisodeDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SeriesEpisodeDataDto, $Out>
    implements SeriesEpisodeDataDtoCopyWith<$R, SeriesEpisodeDataDto, $Out> {
  _SeriesEpisodeDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SeriesEpisodeDataDto> $mapper =
      SeriesEpisodeDataDtoMapper.ensureInitialized();
  @override
  $R call({
    Object? seasonNumber = $none,
    Object? episodeNumber = $none,
    Object? airDate = $none,
  }) => $apply(
    FieldCopyWithData({
      if (seasonNumber != $none) #seasonNumber: seasonNumber,
      if (episodeNumber != $none) #episodeNumber: episodeNumber,
      if (airDate != $none) #airDate: airDate,
    }),
  );
  @override
  SeriesEpisodeDataDto $make(CopyWithData data) => SeriesEpisodeDataDto(
    seasonNumber: data.get(#seasonNumber, or: $value.seasonNumber),
    episodeNumber: data.get(#episodeNumber, or: $value.episodeNumber),
    airDate: data.get(#airDate, or: $value.airDate),
  );

  @override
  SeriesEpisodeDataDtoCopyWith<$R2, SeriesEpisodeDataDto, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _SeriesEpisodeDataDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

