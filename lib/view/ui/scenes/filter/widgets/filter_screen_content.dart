import 'package:flutter/material.dart';

import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../base/media_load_info.dart';

class FilterScreenContent extends StatelessWidget {
  final bool isLoading;
  final bool isInitialized;
  final MediaLoadInfo<MediaShortData> results;
  final String emptyListTitle;
  final String emptyListSubtitle;
  final void Function(int id)? onItemSelect;
  final Future<void> Function()? onRefresh;
  final ScrollController? scrollController;

  bool get _hasEmptyList {
    return results.mediaData.items.isEmpty && isInitialized;
  }

  const FilterScreenContent({
    super.key,
    required this.isLoading,
    required this.isInitialized,
    required this.results,
    required this.emptyListTitle,
    required this.emptyListSubtitle,
    required this.onItemSelect,
    required this.onRefresh,
    this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    print('[RESULTS]: ${results.mediaData.items.length}');

    return CustomScrollView(controller: scrollController);
  }
}
