// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'series_season_data_dto.dart';

class SeriesSeasonDataDtoMapper extends ClassMapperBase<SeriesSeasonDataDto> {
  SeriesSeasonDataDtoMapper._();

  static SeriesSeasonDataDtoMapper? _instance;
  static SeriesSeasonDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SeriesSeasonDataDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SeriesSeasonDataDto';

  static int? _$seasonNumber(SeriesSeasonDataDto v) => v.seasonNumber;
  static const Field<SeriesSeasonDataDto, int> _f$seasonNumber = Field(
    'seasonNumber',
    _$seasonNumber,
    key: r'season_number',
    opt: true,
  );
  static int? _$episodeCount(SeriesSeasonDataDto v) => v.episodeCount;
  static const Field<SeriesSeasonDataDto, int> _f$episodeCount = Field(
    'episodeCount',
    _$episodeCount,
    key: r'episode_count',
    opt: true,
  );

  @override
  final MappableFields<SeriesSeasonDataDto> fields = const {
    #seasonNumber: _f$seasonNumber,
    #episodeCount: _f$episodeCount,
  };
  @override
  final bool ignoreNull = true;

  static SeriesSeasonDataDto _instantiate(DecodingData data) {
    return SeriesSeasonDataDto(
      seasonNumber: data.dec(_f$seasonNumber),
      episodeCount: data.dec(_f$episodeCount),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static SeriesSeasonDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SeriesSeasonDataDto>(map);
  }

  static SeriesSeasonDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<SeriesSeasonDataDto>(json);
  }
}

mixin SeriesSeasonDataDtoMappable {
  String toJsonString() {
    return SeriesSeasonDataDtoMapper.ensureInitialized()
        .encodeJson<SeriesSeasonDataDto>(this as SeriesSeasonDataDto);
  }

  Map<String, dynamic> toJson() {
    return SeriesSeasonDataDtoMapper.ensureInitialized()
        .encodeMap<SeriesSeasonDataDto>(this as SeriesSeasonDataDto);
  }

  SeriesSeasonDataDtoCopyWith<
    SeriesSeasonDataDto,
    SeriesSeasonDataDto,
    SeriesSeasonDataDto
  >
  get copyWith =>
      _SeriesSeasonDataDtoCopyWithImpl<
        SeriesSeasonDataDto,
        SeriesSeasonDataDto
      >(this as SeriesSeasonDataDto, $identity, $identity);
  @override
  String toString() {
    return SeriesSeasonDataDtoMapper.ensureInitialized().stringifyValue(
      this as SeriesSeasonDataDto,
    );
  }

  @override
  bool operator ==(Object other) {
    return SeriesSeasonDataDtoMapper.ensureInitialized().equalsValue(
      this as SeriesSeasonDataDto,
      other,
    );
  }

  @override
  int get hashCode {
    return SeriesSeasonDataDtoMapper.ensureInitialized().hashValue(
      this as SeriesSeasonDataDto,
    );
  }
}

extension SeriesSeasonDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SeriesSeasonDataDto, $Out> {
  SeriesSeasonDataDtoCopyWith<$R, SeriesSeasonDataDto, $Out>
  get $asSeriesSeasonDataDto => $base.as(
    (v, t, t2) => _SeriesSeasonDataDtoCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class SeriesSeasonDataDtoCopyWith<
  $R,
  $In extends SeriesSeasonDataDto,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? seasonNumber, int? episodeCount});
  SeriesSeasonDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _SeriesSeasonDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SeriesSeasonDataDto, $Out>
    implements SeriesSeasonDataDtoCopyWith<$R, SeriesSeasonDataDto, $Out> {
  _SeriesSeasonDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SeriesSeasonDataDto> $mapper =
      SeriesSeasonDataDtoMapper.ensureInitialized();
  @override
  $R call({Object? seasonNumber = $none, Object? episodeCount = $none}) =>
      $apply(
        FieldCopyWithData({
          if (seasonNumber != $none) #seasonNumber: seasonNumber,
          if (episodeCount != $none) #episodeCount: episodeCount,
        }),
      );
  @override
  SeriesSeasonDataDto $make(CopyWithData data) => SeriesSeasonDataDto(
    seasonNumber: data.get(#seasonNumber, or: $value.seasonNumber),
    episodeCount: data.get(#episodeCount, or: $value.episodeCount),
  );

  @override
  SeriesSeasonDataDtoCopyWith<$R2, SeriesSeasonDataDto, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _SeriesSeasonDataDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

