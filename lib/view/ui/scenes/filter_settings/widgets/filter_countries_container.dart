import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../domain/entities/base_media/country.dart';
import '../../../resources/base_theme/components/base_components_styles_ext.dart';
import '../../../resources/ext/country_desc.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/filter_checkbox_list_tile.dart';

class FilterCountriesContainer extends StatelessWidget {
  final List<Country> selectedCountries;
  final Function(Country country) onTapCountry;

  const FilterCountriesContainer({
    super.key,
    required this.selectedCountries,
    required this.onTapCountry,
  });

  @override
  Widget build(BuildContext context) {
    final styles = context.baseComponentsStyles;

    return ExpansionTile(
      title: Text(
        LocaleKeys.filterWithCountries.tr(),
        style: styles.expTileTitleTextStyle,
      ),
      subtitle: Text(_getSubtitle(), style: styles.expTileSubtTextStyle),
      children: Country.valuesWithoutNone
          .map(
            (country) => FilterCheckboxListTile(
              label: country.desc,
              value: selectedCountries.contains(country),
              onChanged: (_) => onTapCountry(country),
            ),
          )
          .toList(),
    );
  }

  String _getSubtitle() {
    final itemsCount = selectedCountries.length;

    return itemsCount == 0
        ? LocaleKeys.filterDescAll.tr()
        : '${LocaleKeys.filterSelectedDesc.tr()} ($itemsCount)';
  }
}
