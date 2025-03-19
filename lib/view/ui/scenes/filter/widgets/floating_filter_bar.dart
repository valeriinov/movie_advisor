import 'package:easy_localization/easy_localization.dart';
import 'package:filter_list/filter_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/ext/flutter_ext/widget/edge_insets_creator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../../../domain/entities/filter/country.dart';
import '../../../../../domain/entities/filter/filter_data.dart';
import '../../../../../domain/entities/filter/movies_filter_data.dart';
import '../../../../../domain/entities/filter/series_filter_data.dart';
import '../../../../../domain/entities/filter/sort_by.dart';
import '../../../../../domain/entities/movie/movie_genre.dart';
import '../../../../../domain/entities/series/series_genre.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../resources/app_images.dart';
import '../../../resources/base_theme/buttons/base_buttons_styles_ext.dart';
import '../../../resources/base_theme/colors/base_colors_ext.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/ext/country_desc.dart';
import '../../../resources/ext/movie_genre_desc.dart';
import '../../../resources/ext/series_genre_desc.dart';
import '../../../resources/ext/sort_by_desc.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/blurred_bottom_sheet.dart';
import '../../../widgets/no_always_scroll_wrapper.dart';
import '../filter_view_model/filter_view_model.dart';
import 'filter_bottom_sheet.dart';
import 'filter_button.dart';
import 'filter_chip.dart';
import 'sort_by_radio_group.dart';

class FloatingFilterBar<T extends MediaShortData, F extends FilterData, G>
    extends ConsumerWidget {
  final FilterVMProvider<T, F, G> provider;

  const FloatingFilterBar({super.key, required this.provider});

  @override
  Widget build(context, ref) {
    final dimens = context.baseDimens;

    final fixedHeight = kToolbarHeight + (dimens.spLarge / 2);

    final vsp = ref.vspFromADProvider(provider);
    final viewModel = vsp.viewModel;

    final filter = vsp.selectWatch((s) => s.filter);

    return SliverAppBar(
      floating: true,
      snap: true,
      primary: false,
      expandedHeight: fixedHeight,
      toolbarHeight: fixedHeight,
      automaticallyImplyLeading: false,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(bottom: dimens.spLarge / 2),
        title: NoAlwaysScrollWrapper(
          child: ListView(
            key: const PageStorageKey('floating-filter-bar-scroll'),
            scrollDirection: Axis.horizontal,
            padding: 4.insHor(),
            children: [
              FilterButton(
                iconPath: AppImages.sortIcon,
                title: LocaleKeys.filterSortBy.tr(),
                subtitle: filter.sortBy.desc,
                onTap:
                    () => _openSortByDialog(
                      context,
                      currentSortBy: filter.sortBy,
                      onSortByChanged: viewModel.updateSortBy,
                    ),
              ),
              FilterButton(
                iconPath: AppImages.genreIcon,
                title: LocaleKeys.filterWithGenres.tr(),
                subtitle: _getWithDescription(_getWithGenresCount(filter)),
                onTap:
                    () => _openGenresFilterDialog(
                      context,
                      title: LocaleKeys.withGenresDialog.tr(),
                      filter: filter,
                      genreIndexes: _getGenreIndexes(filter),
                      selectedGenreIndexes: _getSelectedGenreIndexes(filter),
                      onApply:
                          (ids) => viewModel.updateWithGenres(
                            _getGenresByIds(ids, filter),
                          ),
                    ),
              ),
              FilterButton(
                iconPath: AppImages.genreIcon,
                title: LocaleKeys.filterWithoutGenres.tr(),
                subtitle: _getWithoutDescription(
                  _getWithoutGenresCount(filter),
                ),
                onTap:
                    () => _openGenresFilterDialog(
                      context,
                      title: LocaleKeys.withoutGenresDialog.tr(),
                      filter: filter,
                      genreIndexes: _getGenreIndexes(filter),
                      selectedGenreIndexes: _getSelectedGenreIndexes(
                        filter,
                        withGenres: false,
                      ),
                      onApply:
                          (ids) => viewModel.updateWithoutGenres(
                            _getGenresByIds(ids, filter),
                          ),
                    ),
              ),
              FilterButton(
                iconPath: AppImages.earthIcon,
                title: LocaleKeys.filterWithCountries.tr(),
                subtitle: _getWithDescription(filter.withCountries.length),
                onTap:
                    () => _openCountriesFilterDialog(
                      context,
                      title: LocaleKeys.withCountriesDialog.tr(),
                      selectedCountries: filter.withCountries,
                      onApply: viewModel.updateWithCountries,
                    ),
              ),
              FilterButton(
                iconPath: AppImages.earthIcon,
                title: LocaleKeys.filterWithoutCountries.tr(),
                subtitle: _getWithoutDescription(
                  filter.withoutCountries.length,
                ),
                onTap:
                    () => _openCountriesFilterDialog(
                      context,
                      title: LocaleKeys.withoutCountriesDialog.tr(),
                      selectedCountries: filter.withoutCountries,
                      onApply: viewModel.updateWithoutCountries,
                    ),
              ),
              FilterButton(
                iconPath: AppImages.dateIcon,
                title: LocaleKeys.filterYear.tr(),
                subtitle:
                    filter.year != null
                        ? filter.year.toString()
                        : LocaleKeys.filterDescAll.tr(),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<int> _getGenreIndexes(F filter) {
    return switch (filter) {
      MoviesFilterData() => MovieGenre.valuesWithoutNone.map((e) => e.index),
      SeriesFilterData() => SeriesGenre.valuesWithoutNone.map((e) => e.index),
      _ => <int>[],
    }.toList();
  }

  List<int> _getSelectedGenreIndexes(F filter, {bool withGenres = true}) {
    return switch (filter) {
      MoviesFilterData() =>
        withGenres
            ? filter.withGenres.map((e) => e.index)
            : filter.withoutGenres.map((e) => e.index),
      SeriesFilterData() =>
        withGenres
            ? filter.withGenres.map((e) => e.index)
            : filter.withoutGenres.map((e) => e.index),
      _ => <int>[],
    }.toList();
  }

  List<G> _getGenresByIds(List<int> ids, F filter) {
    return [
      ...switch (filter) {
        MoviesFilterData() => ids.map((e) => MovieGenre.fromIndex(e) as G),
        SeriesFilterData() => ids.map((e) => SeriesGenre.fromIndex(e) as G),
        _ => <G>[],
      },
    ];
  }

  void _openSortByDialog(
    BuildContext ctx, {
    required SortBy currentSortBy,
    required void Function(SortBy) onSortByChanged,
  }) {
    showBlurredBottomSheet(
      isDismissible: false,
      context: ctx,
      useRootNavigator: true,
      child: FilterBottomSheet(
        title: LocaleKeys.sortByDialog.tr(),
        content: SortByRadioGroup(
          currentSortBy: currentSortBy,
          onSortByChanged: onSortByChanged,
        ),
      ),
    );
  }

  void _openGenresFilterDialog(
    BuildContext ctx, {
    required String title,
    required F filter,
    required List<int> genreIndexes,
    required List<int> selectedGenreIndexes,
    required Function(List<int>) onApply,
  }) {
    showBlurredBottomSheet(
      isDismissible: false,
      context: ctx,
      useRootNavigator: true,
      child: Builder(
        builder: (context) {
          return FilterBottomSheet(
            title: title,
            minHeight: 500,
            content: FilterListWidget(
              themeData: _createFilterListThemeData(context),
              hideSearchField: true,
              hideHeader: true,
              hideSelectedTextCount: true,
              listData: genreIndexes,
              selectedListData: selectedGenreIndexes,
              choiceChipLabel: (_) => '',
              validateSelectedItem: (list, i) => list?.contains(i) ?? false,
              onItemSearch: (_, __) => false,
              choiceChipBuilder: (_, i, isSelected) {
                if (i.runtimeType != int) return SizedBox.shrink();

                return FilterChipItem(
                  desc: _getGenreDescByIndex(i, filter: filter),
                  isSelected: isSelected ?? false,
                );
              },
              onApplyButtonClick: (list) {
                Navigator.of(context).pop();
                onApply(list ?? []);
              },
              controlButtons: const [ControlButtonType.Reset],
              resetButtonText: LocaleKeys.filterResetButton.tr(),
              applyButtonText: LocaleKeys.filterApplyButton.tr(),
            ),
          );
        },
      ),
    );
  }

  String _getGenreDescByIndex(int? index, {required F filter}) {
    return switch (filter) {
      MoviesFilterData() => MovieGenre.fromIndex(index ?? -1).desc,
      SeriesFilterData() => SeriesGenre.fromIndex(index ?? -1).desc,
      _ => '',
    };
  }

  void _openCountriesFilterDialog(
    BuildContext ctx, {
    required String title,
    required List<Country> selectedCountries,
    required Function(List<Country>) onApply,
  }) {
    showBlurredBottomSheet(
      isDismissible: false,
      context: ctx,
      useRootNavigator: true,
      child: Builder(
        builder: (context) {
          return FilterBottomSheet(
            title: title,
            content: FilterListWidget<Country>(
              themeData: _createFilterListThemeData(context),
              hideSearchField: true,
              hideHeader: true,
              hideSelectedTextCount: true,
              listData: Country.valuesWithoutNone,
              selectedListData: selectedCountries,
              choiceChipLabel: (_) => '',
              validateSelectedItem: (list, val) => list?.contains(val) ?? false,
              onItemSearch: (_, __) => false,
              choiceChipBuilder: (_, country, isSelected) {
                if (country.runtimeType != Country) return SizedBox.shrink();

                return FilterChipItem(
                  desc: (country as Country).desc,
                  isSelected: isSelected ?? false,
                );
              },
              onApplyButtonClick: (list) {
                Navigator.of(context).pop();
                onApply(list ?? []);
              },
              controlButtons: const [ControlButtonType.Reset],
              resetButtonText: LocaleKeys.filterResetButton.tr(),
              applyButtonText: LocaleKeys.filterApplyButton.tr(),
            ),
          );
        },
      ),
    );
  }

  FilterListThemeData _createFilterListThemeData(BuildContext context) {
    final colors = context.baseColors;
    final buttonStyles = context.baseButtonStyles;

    return FilterListThemeData(
      context,
      backgroundColor: colors.botSheetBg,
      controlButtonBarTheme: ControlButtonBarThemeData(
        context,
        controlButtonTheme: ControlButtonThemeData(
          borderRadius: buttonStyles.btnPrimBorderRadius,
          primaryButtonBackgroundColor: colors.btnFillPrimBg,
          textStyle: buttonStyles.fillBtnPrimTextStyle,
          primaryButtonTextStyle: buttonStyles.fillBtnPrimTextStyle.copyWith(
            color: colors.btnFillPrimFg,
          ),
        ),
      ),
    );
  }

  int _getWithGenresCount(F filter) {
    return switch (filter) {
      MoviesFilterData() => filter.withGenres.length,
      SeriesFilterData() => filter.withGenres.length,
      _ => -1,
    };
  }

  int _getWithoutGenresCount(F filter) {
    return switch (filter) {
      MoviesFilterData() => filter.withoutGenres.length,
      SeriesFilterData() => filter.withoutGenres.length,
      _ => -1,
    };
  }

  String _getWithDescription(int itemsCount) {
    return itemsCount == 0
        ? LocaleKeys.filterDescAll.tr()
        : '${LocaleKeys.filterSelectedDesc.tr()} ($itemsCount)';
  }

  String _getWithoutDescription(int itemsCount) {
    return itemsCount == 0
        ? LocaleKeys.filterDescNone.tr()
        : '${LocaleKeys.filterSelectedDesc.tr()} ($itemsCount)';
  }
}
