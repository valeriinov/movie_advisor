import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/mappable_entity.dart';
import '../../../../../domain/entities/movie/movie_short_data.dart';
import '../../../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../../../domain/entities/series/series_short_data.dart';

part 'media_load_info.mapper.dart';

typedef MovieLoadInfo = MediaLoadInfo<MovieShortData>;

typedef SeriesLoadInfo = MediaLoadInfo<SeriesShortData>;

@mappableEntity
class MediaLoadInfo<T> with MediaLoadInfoMappable<T> {
  final bool isInitialized;
  final bool isNextPageLoading;
  final ListWithPaginationData<T> mediaData;

  MediaLoadInfo({
    this.isInitialized = false,
    this.isNextPageLoading = false,
    ListWithPaginationData<T>? mediaData,
  }) : mediaData = mediaData ?? ListWithPaginationData<T>(items: []);

  MediaLoadInfo<T> copyWithHandledData({
    bool? isInitialized,
    bool isNextPageLoading = false,
    ListWithPaginationData<T>? data,
  }) {
    final isInitializedValue = isInitialized ?? this.isInitialized;

    final preparedData = switch (data) {
      null => mediaData,
      _ => data.copyWithUpdateItems(mediaData.items)
    };

    return copyWith(
      isInitialized: isInitializedValue,
      isNextPageLoading: isNextPageLoading,
      mediaData: preparedData,
    );
  }
}
