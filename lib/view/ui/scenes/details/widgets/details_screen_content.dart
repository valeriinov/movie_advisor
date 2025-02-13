import 'package:flutter/material.dart';

import '../../../../../domain/entities/base_media/media_data.dart';
import '../../../widgets/sliver_refresh_indicator.dart';
import 'details_header.dart';

class DetailsScreenContent extends StatelessWidget {
  final MediaData data;
  final Future<void> Function()? onRefresh;

  const DetailsScreenContent({
    super.key,
    required this.data,
    this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverRefreshIndicator(
          onRefresh: onRefresh,
        ),
        DetailsHeader(data: data),
      ],
    );
  }
}
