import 'package:dart_mappable/dart_mappable.dart';

import '../../../domain/entities/mappable_entity.dart';
import '../../../domain/entities/movie/movie_short_data.dart';
import '../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../domain/entities/series/series_short_data.dart';

part 'media_load_info.mapper.dart';

/// {@category StateManagement}
///
/// A type alias for [MediaLoadInfo] with paginated [MovieShortData].
typedef MovieLoadInfo = MediaLoadInfo<MovieShortData>;

/// {@category StateManagement}
///
/// A type alias for [MediaLoadInfo] with paginated [SeriesShortData].
typedef SeriesLoadInfo = MediaLoadInfo<SeriesShortData>;

/// {@category StateManagement}
///
/// Represents the loading state of paginated media content.
///
/// This class holds information about whether the media data is initialized,
/// whether the next page is currently loading, and the actual paginated data.
@mappableEntity
class MediaLoadInfo<T> with MediaLoadInfoMappable<T> {
  /// Whether the media data has been initialized.
  final bool isInitialized;

  /// Whether the next page is currently being loaded.
  final bool isNextPageLoading;

  /// The paginated media data.
  final ListWithPaginationData<T> mediaData;

  MediaLoadInfo({
    this.isInitialized = false,
    this.isNextPageLoading = false,
    ListWithPaginationData<T>? mediaData,
  }) : mediaData = mediaData ?? ListWithPaginationData<T>(items: []);

  /// Returns a new instance with updated media data while handling pagination logic.
  ///
  /// The [isInitialized] parameter determines whether the media data is considered initialized.
  /// If `null`, the current value is used.
  ///
  /// The [isNextPageLoading] parameter indicates whether the next page is currently being loaded.
  ///
  /// The [isNewPageLoaded] parameter determines how the media data is updated.
  /// If `true` and this is not the first page, new items are merged with previous items.
  /// If `false` or this is the first page, previous items are not applied, and only new items are used.
  ///
  /// The [data] parameter is the new media data to be applied.
  /// If `null`, the current media data is used without modifications.
  MediaLoadInfo<T> copyWithHandledData({
    bool? isInitialized,
    bool isNextPageLoading = false,
    bool isNewPageLoaded = false,
    ListWithPaginationData<T>? data,
  }) {
    final isInitializedValue = isInitialized ?? this.isInitialized;

    final preparedData = switch (data) {
      null => mediaData,
      _ => data.copyWithUpdateItems(
        mediaData.items,
        isNewPageLoaded: isNewPageLoaded,
      ),
    };

    return copyWith(
      isInitialized: isInitializedValue,
      isNextPageLoading: isNextPageLoading,
      mediaData: preparedData,
    );
  }
}
