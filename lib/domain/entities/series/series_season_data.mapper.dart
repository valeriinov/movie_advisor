// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'series_season_data.dart';

class SeriesSeasonDataMapper extends ClassMapperBase<SeriesSeasonData> {
  SeriesSeasonDataMapper._();

  static SeriesSeasonDataMapper? _instance;
  static SeriesSeasonDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SeriesSeasonDataMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SeriesSeasonData';

  static int _$seasonNumber(SeriesSeasonData v) => v.seasonNumber;
  static const Field<SeriesSeasonData, int> _f$seasonNumber = Field(
    'seasonNumber',
    _$seasonNumber,
  );
  static int _$episodeCount(SeriesSeasonData v) => v.episodeCount;
  static const Field<SeriesSeasonData, int> _f$episodeCount = Field(
    'episodeCount',
    _$episodeCount,
  );

  @override
  final MappableFields<SeriesSeasonData> fields = const {
    #seasonNumber: _f$seasonNumber,
    #episodeCount: _f$episodeCount,
  };

  static SeriesSeasonData _instantiate(DecodingData data) {
    return SeriesSeasonData(
      seasonNumber: data.dec(_f$seasonNumber),
      episodeCount: data.dec(_f$episodeCount),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static SeriesSeasonData fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SeriesSeasonData>(map);
  }

  static SeriesSeasonData fromJsonString(String json) {
    return ensureInitialized().decodeJson<SeriesSeasonData>(json);
  }
}

mixin SeriesSeasonDataMappable {
  String toJsonString() {
    return SeriesSeasonDataMapper.ensureInitialized()
        .encodeJson<SeriesSeasonData>(this as SeriesSeasonData);
  }

  Map<String, dynamic> toJson() {
    return SeriesSeasonDataMapper.ensureInitialized()
        .encodeMap<SeriesSeasonData>(this as SeriesSeasonData);
  }

  SeriesSeasonDataCopyWith<SeriesSeasonData, SeriesSeasonData, SeriesSeasonData>
  get copyWith =>
      _SeriesSeasonDataCopyWithImpl<SeriesSeasonData, SeriesSeasonData>(
        this as SeriesSeasonData,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return SeriesSeasonDataMapper.ensureInitialized().stringifyValue(
      this as SeriesSeasonData,
    );
  }

  @override
  bool operator ==(Object other) {
    return SeriesSeasonDataMapper.ensureInitialized().equalsValue(
      this as SeriesSeasonData,
      other,
    );
  }

  @override
  int get hashCode {
    return SeriesSeasonDataMapper.ensureInitialized().hashValue(
      this as SeriesSeasonData,
    );
  }
}

extension SeriesSeasonDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SeriesSeasonData, $Out> {
  SeriesSeasonDataCopyWith<$R, SeriesSeasonData, $Out>
  get $asSeriesSeasonData =>
      $base.as((v, t, t2) => _SeriesSeasonDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SeriesSeasonDataCopyWith<$R, $In extends SeriesSeasonData, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? seasonNumber, int? episodeCount});
  SeriesSeasonDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _SeriesSeasonDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SeriesSeasonData, $Out>
    implements SeriesSeasonDataCopyWith<$R, SeriesSeasonData, $Out> {
  _SeriesSeasonDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SeriesSeasonData> $mapper =
      SeriesSeasonDataMapper.ensureInitialized();
  @override
  $R call({int? seasonNumber, int? episodeCount}) => $apply(
    FieldCopyWithData({
      if (seasonNumber != null) #seasonNumber: seasonNumber,
      if (episodeCount != null) #episodeCount: episodeCount,
    }),
  );
  @override
  SeriesSeasonData $make(CopyWithData data) => SeriesSeasonData(
    seasonNumber: data.get(#seasonNumber, or: $value.seasonNumber),
    episodeCount: data.get(#episodeCount, or: $value.episodeCount),
  );

  @override
  SeriesSeasonDataCopyWith<$R2, SeriesSeasonData, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _SeriesSeasonDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

