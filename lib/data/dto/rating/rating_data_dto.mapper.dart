// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'rating_data_dto.dart';

class RatingDataDtoMapper extends ClassMapperBase<RatingDataDto> {
  RatingDataDtoMapper._();

  static RatingDataDtoMapper? _instance;
  static RatingDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RatingDataDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RatingDataDto';

  static double? _$popularity(RatingDataDto v) => v.popularity;
  static const Field<RatingDataDto, double> _f$popularity =
      Field('popularity', _$popularity, opt: true);
  static double? _$voteAverage(RatingDataDto v) => v.voteAverage;
  static const Field<RatingDataDto, double> _f$voteAverage =
      Field('voteAverage', _$voteAverage, key: r'vote_average', opt: true);
  static int? _$voteCount(RatingDataDto v) => v.voteCount;
  static const Field<RatingDataDto, int> _f$voteCount =
      Field('voteCount', _$voteCount, key: r'vote_count', opt: true);

  @override
  final MappableFields<RatingDataDto> fields = const {
    #popularity: _f$popularity,
    #voteAverage: _f$voteAverage,
    #voteCount: _f$voteCount,
  };
  @override
  final bool ignoreNull = true;

  static RatingDataDto _instantiate(DecodingData data) {
    return RatingDataDto(
        popularity: data.dec(_f$popularity),
        voteAverage: data.dec(_f$voteAverage),
        voteCount: data.dec(_f$voteCount));
  }

  @override
  final Function instantiate = _instantiate;

  static RatingDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RatingDataDto>(map);
  }

  static RatingDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<RatingDataDto>(json);
  }
}

mixin RatingDataDtoMappable {
  String toJsonString() {
    return RatingDataDtoMapper.ensureInitialized()
        .encodeJson<RatingDataDto>(this as RatingDataDto);
  }

  Map<String, dynamic> toJson() {
    return RatingDataDtoMapper.ensureInitialized()
        .encodeMap<RatingDataDto>(this as RatingDataDto);
  }

  RatingDataDtoCopyWith<RatingDataDto, RatingDataDto, RatingDataDto>
      get copyWith => _RatingDataDtoCopyWithImpl(
          this as RatingDataDto, $identity, $identity);
  @override
  String toString() {
    return RatingDataDtoMapper.ensureInitialized()
        .stringifyValue(this as RatingDataDto);
  }

  @override
  bool operator ==(Object other) {
    return RatingDataDtoMapper.ensureInitialized()
        .equalsValue(this as RatingDataDto, other);
  }

  @override
  int get hashCode {
    return RatingDataDtoMapper.ensureInitialized()
        .hashValue(this as RatingDataDto);
  }
}

extension RatingDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RatingDataDto, $Out> {
  RatingDataDtoCopyWith<$R, RatingDataDto, $Out> get $asRatingDataDto =>
      $base.as((v, t, t2) => _RatingDataDtoCopyWithImpl(v, t, t2));
}

abstract class RatingDataDtoCopyWith<$R, $In extends RatingDataDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({double? popularity, double? voteAverage, int? voteCount});
  RatingDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RatingDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RatingDataDto, $Out>
    implements RatingDataDtoCopyWith<$R, RatingDataDto, $Out> {
  _RatingDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RatingDataDto> $mapper =
      RatingDataDtoMapper.ensureInitialized();
  @override
  $R call(
          {Object? popularity = $none,
          Object? voteAverage = $none,
          Object? voteCount = $none}) =>
      $apply(FieldCopyWithData({
        if (popularity != $none) #popularity: popularity,
        if (voteAverage != $none) #voteAverage: voteAverage,
        if (voteCount != $none) #voteCount: voteCount
      }));
  @override
  RatingDataDto $make(CopyWithData data) => RatingDataDto(
      popularity: data.get(#popularity, or: $value.popularity),
      voteAverage: data.get(#voteAverage, or: $value.voteAverage),
      voteCount: data.get(#voteCount, or: $value.voteCount));

  @override
  RatingDataDtoCopyWith<$R2, RatingDataDto, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _RatingDataDtoCopyWithImpl($value, $cast, t);
}
