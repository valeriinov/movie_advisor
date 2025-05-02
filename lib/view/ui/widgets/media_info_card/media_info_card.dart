import 'package:flutter/material.dart';

import '../../../../domain/entities/base_media/media_short_data.dart';
import 'widgets/media_info_content.dart';
import 'widgets/media_info_wrapper.dart';

class MediaInfoCard extends StatelessWidget {
  final MediaShortData itemData;
  final VoidCallback? onTap;

  const MediaInfoCard({super.key, required this.itemData, this.onTap});

  @override
  Widget build(BuildContext context) {
    return MediaInfoWrapper(
      posterUrl: itemData.posterUrl,
      mediaInfoContent: MediaInfoContent(itemData: itemData),
      onTap: onTap,
    );
  }
}
