import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../../../domain/entities/base_media/media_data.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../widgets/sliver_refresh_indicator.dart';
import 'details_header.dart';
import 'details_props_container.dart';

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
    final dimens = context.baseDimens;

    return CustomScrollView(
      slivers: [
        SliverRefreshIndicator(
          onRefresh: onRefresh,
        ),
        DetailsHeader(data: data),
        SliverPadding(padding: dimens.spMedium.insVert()),
        DetailsPropsContainer(data: data),
      ],
    );
  }
}
