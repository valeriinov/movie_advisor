// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'rating.dart';

class TMDBRatingMapper extends ClassMapperBase<TMDBRating> {
  TMDBRatingMapper._();

  static TMDBRatingMapper? _instance;
  static TMDBRatingMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TMDBRatingMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TMDBRating';

  static double? _$popularity(TMDBRating v) => v.popularity;
  static const Field<TMDBRating, double> _f$popularity =
      Field('popularity', _$popularity, opt: true);
  static double _$voteAverage(TMDBRating v) => v.voteAverage;
  static const Field<TMDBRating, double> _f$voteAverage =
      Field('voteAverage', _$voteAverage, opt: true, def: 0);
  static int _$voteCount(TMDBRating v) => v.voteCount;
  static const Field<TMDBRating, int> _f$voteCount =
      Field('voteCount', _$voteCount, opt: true, def: 0);

  @override
  final MappableFields<TMDBRating> fields = const {
    #popularity: _f$popularity,
    #voteAverage: _f$voteAverage,
    #voteCount: _f$voteCount,
  };

  static TMDBRating _instantiate(DecodingData data) {
    return TMDBRating(
        popularity: data.dec(_f$popularity),
        voteAverage: data.dec(_f$voteAverage),
        voteCount: data.dec(_f$voteCount));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin TMDBRatingMappable {
  TMDBRatingCopyWith<TMDBRating, TMDBRating, TMDBRating> get copyWith =>
      _TMDBRatingCopyWithImpl(this as TMDBRating, $identity, $identity);
  @override
  String toString() {
    return TMDBRatingMapper.ensureInitialized()
        .stringifyValue(this as TMDBRating);
  }

  @override
  bool operator ==(Object other) {
    return TMDBRatingMapper.ensureInitialized()
        .equalsValue(this as TMDBRating, other);
  }

  @override
  int get hashCode {
    return TMDBRatingMapper.ensureInitialized().hashValue(this as TMDBRating);
  }
}

extension TMDBRatingValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TMDBRating, $Out> {
  TMDBRatingCopyWith<$R, TMDBRating, $Out> get $asTMDBRating =>
      $base.as((v, t, t2) => _TMDBRatingCopyWithImpl(v, t, t2));
}

abstract class TMDBRatingCopyWith<$R, $In extends TMDBRating, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({double? popularity, double? voteAverage, int? voteCount});
  TMDBRatingCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TMDBRatingCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TMDBRating, $Out>
    implements TMDBRatingCopyWith<$R, TMDBRating, $Out> {
  _TMDBRatingCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TMDBRating> $mapper =
      TMDBRatingMapper.ensureInitialized();
  @override
  $R call({Object? popularity = $none, double? voteAverage, int? voteCount}) =>
      $apply(FieldCopyWithData({
        if (popularity != $none) #popularity: popularity,
        if (voteAverage != null) #voteAverage: voteAverage,
        if (voteCount != null) #voteCount: voteCount
      }));
  @override
  TMDBRating $make(CopyWithData data) => TMDBRating(
      popularity: data.get(#popularity, or: $value.popularity),
      voteAverage: data.get(#voteAverage, or: $value.voteAverage),
      voteCount: data.get(#voteCount, or: $value.voteCount));

  @override
  TMDBRatingCopyWith<$R2, TMDBRating, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TMDBRatingCopyWithImpl($value, $cast, t);
}
