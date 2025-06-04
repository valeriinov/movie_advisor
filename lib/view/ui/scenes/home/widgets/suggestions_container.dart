import 'package:flutter/material.dart';
import 'package:flutter_utils/ext/flutter_ext/widget/gap_creator.dart';

import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../resources/app_images.dart';
import '../../../resources/base_theme/components/base_components_styles_ext.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/base_theme/durations/base_durations_ext.dart';
import '../../../widgets/empty_list_container.dart';
import 'suggestion_item.dart';

class SuggestionsContainer extends StatelessWidget {
  final bool isSkeletonVisible;
  final List<MediaShortData> suggestions;
  final String emptyListTitle;
  final String emptyListSubtitle;
  final void Function(int id)? onTap;

  const SuggestionsContainer({
    super.key,
    required this.isSkeletonVisible,
    required this.suggestions,
    required this.emptyListTitle,
    required this.emptyListSubtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final durations = context.baseDurations;
    final dimens = context.baseDimens;
    final styles = context.baseComponentsStyles;
    final posterSize = styles.posterLargeSize;

    return SliverToBoxAdapter(
      child: AnimatedSwitcher(
        duration: durations.animSwitchPrim,
        child: _isEmpty()
            ? _buildEmptyList()
            : SizedBox(
                height: posterSize.height + 25, // bottom number offset
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: suggestions.length,
                  padding: dimens.padHorPrimIns,
                  itemBuilder: (context, index) {
                    final suggestion = suggestions[index];
                    final number = index + 1;

                    return SuggestionItem(
                      number: number,
                      posterUrl: suggestion.posterUrl,
                      onTap: onTap != null ? () => onTap!(suggestion.id) : null,
                    );
                  },
                  separatorBuilder: (_, _) => dimens.spLarge.gapHor(),
                ),
              ),
      ),
    );
  }

  bool _isEmpty() {
    return !isSkeletonVisible && suggestions.isEmpty;
  }

  Widget _buildEmptyList() {
    return EmptyListContainer(
      imagePath: AppImages.errorListImage,
      title: emptyListTitle,
      subtitle: emptyListSubtitle,
    );
  }
}
