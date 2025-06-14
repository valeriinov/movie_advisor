import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_utils/ext/flutter_ext/widget/gap_creator.dart';

import '../../base/content_mode_view_model/content_mode.dart';
import '../../resources/base_theme/components/base_components_styles_ext.dart';
import '../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../resources/ext/movie_genre_desc.dart';
import '../../resources/ext/series_genre_desc.dart';
import '../../resources/locale_keys.g.dart';
import 'filter_checkbox_list_tile.dart';

class FilterGenresContainer extends HookWidget {
  final String title;
  final ContentMode contentMode;
  final List<String> disabledGenresDesc;
  final List<String> selectedGenresDesc;
  final Function(String desc) onTapGenre;

  const FilterGenresContainer({
    super.key,
    required this.title,
    required this.contentMode,
    required this.disabledGenresDesc,
    required this.selectedGenresDesc,
    required this.onTapGenre,
  });

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;
    final styles = context.baseComponentsStyles;
    final langCode = context.locale.languageCode;

    final descriptions = useMemoized(() => _getGenreDescriptions(langCode), [
      contentMode,
      langCode,
    ]);

    return ExpansionTile(
      title: Text(title, style: styles.expTileTitleTextStyle),
      subtitle: Text(_getSubtitle(), style: styles.expTileSubtTextStyle),
      children: [
        ...descriptions.map(
          (desc) => FilterCheckboxListTile(
            label: desc,
            value: selectedGenresDesc.contains(desc),
            onChanged: !disabledGenresDesc.contains(desc)
                ? (_) => onTapGenre(desc)
                : null,
          ),
        ),
        dimens.spSmall.gapVert(),
      ],
    );
  }

  List<String> _getGenreDescriptions(String langCode) {
    return switch (contentMode) {
      ContentMode.movies => MovieGenreAlphabet.values(
        langCode,
      ).map((e) => e.desc).toList(),
      ContentMode.series => SeriesGenreAlphabet.values(
        langCode,
      ).map((e) => e.desc).toList(),
    };
  }

  String _getSubtitle() {
    final itemsCount = selectedGenresDesc.length;

    return itemsCount == 0
        ? LocaleKeys.filterDescAll.tr()
        : '${LocaleKeys.filterSelectedDesc.tr()} ($itemsCount)';
  }
}
