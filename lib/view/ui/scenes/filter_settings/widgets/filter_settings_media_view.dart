import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../common/utils/ext/default_filter.dart';
import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../../../domain/entities/filter/filter_data.dart';
import '../../../../../domain/entities/filter/movies_filter_data.dart';
import '../../../../../domain/entities/filter/series_filter_data.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../base/view_model/ext/state_comparator.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/ext/movie_genre_desc.dart';
import '../../../resources/ext/series_genre_desc.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/bottom_safe_area.dart';
import '../../../widgets/dialogs/exit_dialog.dart';
import '../../../widgets/filter/filter_app_bar.dart';
import '../../../widgets/filter/filter_countries_container.dart';
import '../../../widgets/filter/filter_divider.dart';
import '../../../widgets/filter/filter_genres_container.dart';
import '../../../widgets/filter/filter_years_container.dart';
import '../../filter/filter_view_model/filter_view_model.dart';
import '../filter_settings_view_model/filter_settings_state.dart';
import '../filter_settings_view_model/filter_settings_view_model.dart';
import 'filter_user_lists_container.dart';

class FilterSettingsMediaView<T extends MediaShortData, F extends FilterData, G>
    extends HookConsumerWidget {
  final FilterSettingsVMProvider<F, G> filterSettingsProvider;
  final FilterVMProvider<T, F, G> filterProvider;
  final ContentMode contentMode;

  const FilterSettingsMediaView({
    super.key,
    required this.filterSettingsProvider,
    required this.filterProvider,
    required this.contentMode,
  });

  @override
  Widget build(context, ref) {
    final vsp = ref.vspFromADProvider(filterSettingsProvider);
    final viewModel = vsp.viewModel;
    final vspFilter = ref.vspFromADProvider(filterProvider);

    useEffect(() {
      _scheduleInitFilter(context, vspFilter, vsp);
      return null;
    }, []);

    vsp.handleState(
      listener: (prev, next) => _handleState(prev, next, context, vspFilter),
    );

    final hasUnsavedChanges = vsp.selectWatch((s) => s.isFilterChanged);
    final filter = vsp.selectWatch((s) => s.filter);

    final selectedWithGenresDesc = useMemoized(
      () => _getSelectedGenreDescriptions(filter),
      [filter],
    );
    final selectedWithoutGenresDesc = useMemoized(
      () => _getSelectedGenreDescriptions(filter, withGenres: false),
      [filter],
    );

    return Scaffold(
      appBar: FilterAppBar(
        onReset: !_isDefaultFilter(filter) ? viewModel.resetFilter : null,
        onSave: hasUnsavedChanges ? viewModel.setApplyStatus : null,
      ),
      body: BottomSafeArea(
        child: PopScope(
          onPopInvokedWithResult: (didPop, _) {
            if (didPop) return;
            _showExitDialog(context);
          },
          canPop: !hasUnsavedChanges,
          child: ListView(
            padding: _createScrPadding(context),
            children: [
              FilterDivider(),
              FilterGenresContainer(
                key: const PageStorageKey('filter-with-genres'),
                title: LocaleKeys.filterWithGenres.tr(),
                contentMode: contentMode,
                selectedGenresDesc: selectedWithGenresDesc,
                disabledGenresDesc: selectedWithoutGenresDesc,
                onTapGenre: (desc) => _updateWithGenres(vsp, desc),
              ),
              FilterDivider(),
              FilterGenresContainer(
                key: const PageStorageKey('filter-without-genres'),
                title: LocaleKeys.filterWithoutGenres.tr(),
                contentMode: contentMode,
                selectedGenresDesc: selectedWithoutGenresDesc,
                disabledGenresDesc: selectedWithGenresDesc,
                onTapGenre: (desc) => _updateWithoutGenres(vsp, desc),
              ),
              FilterDivider(),
              FilterCountriesContainer(
                key: const PageStorageKey('filter-with-countries'),
                selectedCountries: filter.withCountries,
                onTapCountry: viewModel.updateWithCountries,
              ),
              FilterDivider(),
              FilterUserListsContainer(
                key: const PageStorageKey('filter-user-lists'),
                includeWatched: filter.includeWatched,
                includeWatchlist: filter.includeWatchlist,
                onTapIncludeWatched: viewModel.updateIncludeWatched,
                onTapIncludeWatchlist: viewModel.updateIncludeWatchlist,
              ),
              FilterDivider(),
              FilterYearsContainer(
                key: const PageStorageKey('filter-dates'),
                fromDate: filter.fromDate,
                toDate: filter.toDate,
                onFromDateChanged: viewModel.updateFromDate,
                onToDateChanged: viewModel.updateToDate,
              ),
              FilterDivider(),
            ],
          ),
        ),
      ),
    );
  }

  EdgeInsets _createScrPadding(BuildContext context) {
    final dimens = context.baseDimens;
    return EdgeInsets.fromLTRB(0, dimens.padTopPrim, 0, dimens.padBotPrim);
  }

  bool _isDefaultFilter(F filter) {
    return switch (filter) {
      MoviesFilterData() => filter.isDefault,
      SeriesFilterData() => filter.isDefault,
      _ => false,
    };
  }

  void _scheduleInitFilter(
    BuildContext context,
    FilterVSP vspFilter,
    FilterSettingsVSP vsp,
  ) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!context.mounted) return;
      final initFilter = vspFilter.selectRead((s) => s.filter);
      vsp.viewModel.init(initFilter: initFilter);
    });
  }

  void _handleState(
    FilterSettingsState<F>? prev,
    FilterSettingsState<F> next,
    BuildContext context,
    FilterVSP vspFilter,
  ) {
    if (!next.isUpdate(prev, (s) => s?.status)) return;

    if (next.status is ApplyFilterSettingsStatus) {
      final filter = next.filter;
      vspFilter.viewModel.updateFilter(filter);

      context.pop();
    }
  }

  void _showExitDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => ExitDialog(onConfirm: context.pop),
    );
  }

  List<String> _getSelectedGenreDescriptions(
    F filter, {
    bool withGenres = true,
  }) {
    return switch (filter) {
      MoviesFilterData() =>
        withGenres
            ? filter.withGenres.map((e) => e.desc)
            : filter.withoutGenres.map((e) => e.desc),
      SeriesFilterData() =>
        withGenres
            ? filter.withGenres.map((e) => e.desc)
            : filter.withoutGenres.map((e) => e.desc),
      _ => <String>[],
    }.toList();
  }

  void _updateWithGenres(FilterSettingsVSP vsp, String desc) {
    final genre = _getGenreFromDesc(desc);

    vsp.viewModel.updateWithGenres(genre);
  }

  void _updateWithoutGenres(FilterSettingsVSP vsp, String desc) {
    final genre = _getGenreFromDesc(desc);

    vsp.viewModel.updateWithoutGenres(genre);
  }

  G _getGenreFromDesc(String desc) {
    return switch (contentMode) {
      ContentMode.movies => desc.moviesGenreFromDesc() as G,
      ContentMode.series => desc.seriesGenreFromDesc() as G,
    };
  }
}
