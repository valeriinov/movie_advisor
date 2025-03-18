import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/ext/flutter_ext/widget/edge_insets_creator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../../../domain/entities/filter/filter_data.dart';
import '../../../../../domain/entities/filter/movies_filter_data.dart';
import '../../../../../domain/entities/filter/series_filter_data.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../resources/app_images.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/ext/sort_by_desc.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/no_always_scroll_wrapper.dart';
import '../filter_view_model/filter_view_model.dart';
import 'filter_button.dart';

class FloatingFilterBar<T extends MediaShortData, F extends FilterData, G>
    extends ConsumerWidget {
  final FilterVMProvider<T, F, G> provider;

  const FloatingFilterBar({super.key, required this.provider});

  @override
  Widget build(context, ref) {
    final dimens = context.baseDimens;

    final fixedHeight = kToolbarHeight + (dimens.spLarge / 2);

    final vsp = ref.vspFromADProvider(provider);

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
                onTap: () {},
              ),
              FilterButton(
                iconPath: AppImages.genreIcon,
                title: LocaleKeys.filterWithGenres.tr(),
                subtitle: _getWithDescription(_getWithGenresCount(filter)),
                onTap: () {},
              ),
              FilterButton(
                iconPath: AppImages.genreIcon,
                title: LocaleKeys.filterWithoutGenres.tr(),
                subtitle: _getWithoutDescription(
                  _getWithoutGenresCount(filter),
                ),
                onTap: () {},
              ),
              FilterButton(
                iconPath: AppImages.earthIcon,
                title: LocaleKeys.filterWithCountries.tr(),
                subtitle: _getWithDescription(filter.withCountries.length),
                onTap: () {},
              ),
              FilterButton(
                iconPath: AppImages.earthIcon,
                title: LocaleKeys.filterWithoutCountries.tr(),
                subtitle: _getWithoutDescription(
                  filter.withoutCountries.length,
                ),
                onTap: () {},
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
