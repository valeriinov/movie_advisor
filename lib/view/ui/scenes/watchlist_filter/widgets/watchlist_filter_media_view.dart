import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../common/utils/ext/watchlist_default_filter.dart';
import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../../../domain/entities/watchlist_filter/movies_watchlist_filter_data.dart';
import '../../../../../domain/entities/watchlist_filter/series_watchlist_filter_data.dart';
import '../../../../../domain/entities/watchlist_filter/watchlist_filter_data.dart';
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
import '../../../widgets/filter/filter_checkbox_list_tile.dart';
import '../../../widgets/filter/filter_countries_container.dart';
import '../../../widgets/filter/filter_date_container.dart';
import '../../../widgets/filter/filter_divider.dart';
import '../../../widgets/filter/filter_genres_container.dart';
import '../../../widgets/filter/filter_years_container.dart';
import '../../watchlist/watchlist_view_model/watchlist_view_model.dart';
import '../watchlist_filter_view_model/watchlist_filter_state.dart';
import '../watchlist_filter_view_model/watchlist_filter_view_model.dart';

class WatchlistFilterMediaView<
  T extends MediaShortData,
  F extends WatchlistFilterData,
  G
>
    extends HookConsumerWidget {
  final WatchlistFilterVMProvider<F, G> filterProvider;
  final WatchlistVMProvider<T, F> watchlistProvider;
  final ContentMode contentMode;

  const WatchlistFilterMediaView({
    super.key,
    required this.filterProvider,
    required this.watchlistProvider,
    required this.contentMode,
  });

  @override
  Widget build(context, ref) {
    final vsp = ref.vspFromADProvider(filterProvider);
    final viewModel = vsp.viewModel;
    final watchlistVsp = ref.vspFromADProvider(watchlistProvider);

    useEffect(() {
      _scheduleInitFilter(context, watchlistVsp, vsp);
      return null;
    }, []);

    vsp.handleState(
      listener: (prev, next) => _handleState(prev, next, context, watchlistVsp),
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
                key: const PageStorageKey('watchlist-filter-with-genres'),
                title: LocaleKeys.filterWithGenres.tr(),
                contentMode: contentMode,
                selectedGenresDesc: selectedWithGenresDesc,
                disabledGenresDesc: selectedWithoutGenresDesc,
                onTapGenre: (desc) => _updateWithGenres(vsp, desc),
              ),
              FilterDivider(),
              FilterGenresContainer(
                key: const PageStorageKey('watchlist-filter-without-genres'),
                title: LocaleKeys.filterWithoutGenres.tr(),
                contentMode: contentMode,
                selectedGenresDesc: selectedWithoutGenresDesc,
                disabledGenresDesc: selectedWithGenresDesc,
                onTapGenre: (desc) => _updateWithoutGenres(vsp, desc),
              ),
              FilterDivider(),
              FilterCountriesContainer(
                key: const PageStorageKey('watchlist-filter-with-countries'),
                selectedCountries: filter.withCountries,
                onTapCountry: viewModel.updateWithCountries,
              ),
              FilterDivider(),
              FilterYearsContainer(
                key: const PageStorageKey('watchlist-filter-years'),
                fromDate: filter.fromPremiereDate,
                toDate: filter.toPremiereDate,
                onFromDateChanged: viewModel.updateFromPremiereDate,
                onToDateChanged: viewModel.updateToPremiereDate,
              ),
              FilterDivider(),
              FilterDateContainer(
                key: const PageStorageKey('watchlist-filter-dates'),
                title: LocaleKeys.filterWatchlistAdd.tr(),
                fromDate: filter.fromAddedDate,
                toDate: filter.toAddedDate,
                onFromDateChanged: viewModel.updateFromAddedDate,
                onToDateChanged: viewModel.updateToAddedDate,
              ),
              FilterDivider(),
              FilterCheckboxListTile(
                label: LocaleKeys.includeWatchedDesc.tr(),
                contentPadding: EdgeInsets.all(5),
                value: filter.includeWatched,
                onChanged: (val) {
                  if (val == null) return;
                  viewModel.updateIncludeWatched(val);
                },
              ),
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
      MoviesWatchlistFilterData() => filter.isDefault,
      SeriesWatchlistFilterData() => filter.isDefault,
      _ => false,
    };
  }

  void _scheduleInitFilter(
    BuildContext context,
    WatchlistVSP vspWatchlist,
    WatchlistFilterVSP vsp,
  ) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!context.mounted) return;
      final initFilter = vspWatchlist.selectRead((s) => s.filter);
      vsp.viewModel.init(initFilter: initFilter);
    });
  }

  void _handleState(
    WatchlistFilterState<F>? prev,
    WatchlistFilterState<F> next,
    BuildContext context,
    WatchlistVSP vspWatchlist,
  ) {
    if (!next.isUpdate(prev, (s) => s?.status)) return;

    if (next.status is ApplyWatchlistFilterStatus) {
      final filter = next.filter;
      vspWatchlist.viewModel.updateFilter(filter);

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
      MoviesWatchlistFilterData() =>
        withGenres
            ? filter.withGenres.map((e) => e.desc)
            : filter.withoutGenres.map((e) => e.desc),
      SeriesWatchlistFilterData() =>
        withGenres
            ? filter.withGenres.map((e) => e.desc)
            : filter.withoutGenres.map((e) => e.desc),
      _ => <String>[],
    }.toList();
  }

  void _updateWithGenres(WatchlistFilterVSP vsp, String desc) {
    final genre = _getGenreFromDesc(desc);

    vsp.viewModel.updateWithGenres(genre);
  }

  void _updateWithoutGenres(WatchlistFilterVSP vsp, String desc) {
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
