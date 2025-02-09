import 'package:flutter/material.dart';
import 'package:flutter_utils/ext/flutter_ext/widget/gap_creator.dart';

import '../../../../domain/entities/base_media/media_short_data.dart';
import '../../resources/base_theme/components/base_components_styles_ext.dart';
import '../../resources/base_theme/dimens/base_dimens_ext.dart';
import 'suggestion_item.dart';

class SuggestionsContainer extends StatelessWidget {
  final List<MediaShortData> suggestions;
  final void Function(int id)? onTap;

  const SuggestionsContainer({
    super.key,
    required this.suggestions,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;
    final styles = context.baseComponentsStyles;
    final posterSize = styles.posterLargeSize;

    return SliverToBoxAdapter(
      child: SizedBox(
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
          separatorBuilder: (_, __) => dimens.spLarge.gapHor(),
        ),
      ),
    );
  }
}
