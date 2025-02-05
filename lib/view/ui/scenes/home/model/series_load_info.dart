import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/mappable_entity.dart';
import '../../../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../../../domain/entities/series/series_short_data.dart';

part 'series_load_info.mapper.dart';

@mappableEntity
class SeriesLoadInfo with SeriesLoadInfoMappable {
  final bool isInitialized;
  final bool isNextPageLoading;
  final ListWithPaginationData<SeriesShortData> seriesData;

  const SeriesLoadInfo({
    this.isInitialized = false,
    this.isNextPageLoading = false,
    this.seriesData = const ListWithPaginationData<SeriesShortData>(items: []),
  });

  SeriesLoadInfo copyWithHandledData({
    bool? isInitialized,
    bool isNextPageLoading = false,
    ListWithPaginationData<SeriesShortData>? data,
  }) {
    final isInitializedValue = isInitialized ?? this.isInitialized;

    final preparedData = switch (data) {
      null => seriesData,
      _ => data.copyWithUpdateItems(seriesData.items)
    };

    return copyWith(
      isInitialized: isInitializedValue,
      isNextPageLoading: isNextPageLoading,
      seriesData: preparedData,
    );
  }
}
