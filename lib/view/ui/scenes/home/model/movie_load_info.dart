import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/mappable_entity.dart';
import '../../../../../domain/entities/movie/movie_short_data.dart';
import '../../../../../domain/entities/pagination/list_with_pagination_data.dart';

part 'movie_load_info.mapper.dart';

@mappableEntity
class MovieLoadInfo with MovieLoadInfoMappable {
  final bool isInitialized;
  final bool isNextPageLoading;
  final ListWithPaginationData<MovieShortData> moviesData;

  const MovieLoadInfo({
    this.isInitialized = false,
    this.isNextPageLoading = false,
    this.moviesData = const ListWithPaginationData<MovieShortData>(items: []),
  });

  MovieLoadInfo copyWithHandledData({
    bool? isInitialized,
    bool isNextPageLoading = false,
    ListWithPaginationData<MovieShortData>? data,
  }) {
    final isInitializedValue = isInitialized ?? this.isInitialized;

    final preparedData = switch (data) {
      null => moviesData,
      _ => data.copyWithUpdateItems(moviesData.items)
    };

    return copyWith(
      isInitialized: isInitializedValue,
      isNextPageLoading: isNextPageLoading,
      moviesData: preparedData,
    );
  }
}
