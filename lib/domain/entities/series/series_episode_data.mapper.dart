// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'series_episode_data.dart';

class SeriesEpisodeDataMapper extends ClassMapperBase<SeriesEpisodeData> {
  SeriesEpisodeDataMapper._();

  static SeriesEpisodeDataMapper? _instance;
  static SeriesEpisodeDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SeriesEpisodeDataMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SeriesEpisodeData';

  static int _$seasonNumber(SeriesEpisodeData v) => v.seasonNumber;
  static const Field<SeriesEpisodeData, int> _f$seasonNumber = Field(
    'seasonNumber',
    _$seasonNumber,
  );
  static int _$episodeNumber(SeriesEpisodeData v) => v.episodeNumber;
  static const Field<SeriesEpisodeData, int> _f$episodeNumber = Field(
    'episodeNumber',
    _$episodeNumber,
  );
  static DateTime? _$airDate(SeriesEpisodeData v) => v.airDate;
  static const Field<SeriesEpisodeData, DateTime> _f$airDate = Field(
    'airDate',
    _$airDate,
  );

  @override
  final MappableFields<SeriesEpisodeData> fields = const {
    #seasonNumber: _f$seasonNumber,
    #episodeNumber: _f$episodeNumber,
    #airDate: _f$airDate,
  };

  static SeriesEpisodeData _instantiate(DecodingData data) {
    return SeriesEpisodeData(
      seasonNumber: data.dec(_f$seasonNumber),
      episodeNumber: data.dec(_f$episodeNumber),
      airDate: data.dec(_f$airDate),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static SeriesEpisodeData fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SeriesEpisodeData>(map);
  }

  static SeriesEpisodeData fromJsonString(String json) {
    return ensureInitialized().decodeJson<SeriesEpisodeData>(json);
  }
}

mixin SeriesEpisodeDataMappable {
  String toJsonString() {
    return SeriesEpisodeDataMapper.ensureInitialized()
        .encodeJson<SeriesEpisodeData>(this as SeriesEpisodeData);
  }

  Map<String, dynamic> toJson() {
    return SeriesEpisodeDataMapper.ensureInitialized()
        .encodeMap<SeriesEpisodeData>(this as SeriesEpisodeData);
  }

  SeriesEpisodeDataCopyWith<
    SeriesEpisodeData,
    SeriesEpisodeData,
    SeriesEpisodeData
  >
  get copyWith =>
      _SeriesEpisodeDataCopyWithImpl<SeriesEpisodeData, SeriesEpisodeData>(
        this as SeriesEpisodeData,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return SeriesEpisodeDataMapper.ensureInitialized().stringifyValue(
      this as SeriesEpisodeData,
    );
  }

  @override
  bool operator ==(Object other) {
    return SeriesEpisodeDataMapper.ensureInitialized().equalsValue(
      this as SeriesEpisodeData,
      other,
    );
  }

  @override
  int get hashCode {
    return SeriesEpisodeDataMapper.ensureInitialized().hashValue(
      this as SeriesEpisodeData,
    );
  }
}

extension SeriesEpisodeDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SeriesEpisodeData, $Out> {
  SeriesEpisodeDataCopyWith<$R, SeriesEpisodeData, $Out>
  get $asSeriesEpisodeData => $base.as(
    (v, t, t2) => _SeriesEpisodeDataCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class SeriesEpisodeDataCopyWith<
  $R,
  $In extends SeriesEpisodeData,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? seasonNumber, int? episodeNumber, DateTime? airDate});
  SeriesEpisodeDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _SeriesEpisodeDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SeriesEpisodeData, $Out>
    implements SeriesEpisodeDataCopyWith<$R, SeriesEpisodeData, $Out> {
  _SeriesEpisodeDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SeriesEpisodeData> $mapper =
      SeriesEpisodeDataMapper.ensureInitialized();
  @override
  $R call({int? seasonNumber, int? episodeNumber, Object? airDate = $none}) =>
      $apply(
        FieldCopyWithData({
          if (seasonNumber != null) #seasonNumber: seasonNumber,
          if (episodeNumber != null) #episodeNumber: episodeNumber,
          if (airDate != $none) #airDate: airDate,
        }),
      );
  @override
  SeriesEpisodeData $make(CopyWithData data) => SeriesEpisodeData(
    seasonNumber: data.get(#seasonNumber, or: $value.seasonNumber),
    episodeNumber: data.get(#episodeNumber, or: $value.episodeNumber),
    airDate: data.get(#airDate, or: $value.airDate),
  );

  @override
  SeriesEpisodeDataCopyWith<$R2, SeriesEpisodeData, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _SeriesEpisodeDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

