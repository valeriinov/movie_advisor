import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../common/utils/ext/watched_default_filter.dart';
import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../../../domain/entities/watched_filter/movies_watched_filter_data.dart';
import '../../../../../domain/entities/watched_filter/series_watched_filter_data.dart';
import '../../../../../domain/entities/watched_filter/watched_filter_data.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../base/view_model/ext/state_comparator.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/ext/movie_genre_desc.dart';
import '../../../resources/ext/series_genre_desc.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/dialogs/exit_dialog.dart';
import '../../../widgets/filter/filter_app_bar.dart';
import '../../../widgets/filter/filter_countries_container.dart';
import '../../../widgets/filter/filter_divider.dart';
import '../../../widgets/filter/filter_genres_container.dart';
import '../../../widgets/filter/filter_years_container.dart';
import '../../watched/watched_view_model/watched_view_model.dart';
import '../watched_filter_view_model/watched_filter_state.dart';
import '../watched_filter_view_model/watched_filter_view_model.dart';

class WatchedFilterMediaView<
  T extends MediaShortData,
  F extends WatchedFilterData,
  G
>
    extends HookConsumerWidget {
  final WatchedFilterVMProvider<F, G> filterProvider;
  final WatchedVMProvider<T, F> watchedProvider;
  final ContentMode contentMode;

  const WatchedFilterMediaView({
    super.key,
    required this.filterProvider,
    required this.watchedProvider,
    required this.contentMode,
  });

  @override
  Widget build(context, ref) {
    final vsp = ref.vspFromADProvider(filterProvider);
    final viewModel = vsp.viewModel;
    final watchedVsp = ref.vspFromADProvider(watchedProvider);

    useEffect(() {
      _scheduleInitFilter(context, watchedVsp, vsp);
      return null;
    }, []);

    vsp.handleState(
      listener: (prev, next) => _handleState(prev, next, context, watchedVsp),
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
      body: PopScope(
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
              key: const PageStorageKey('watched-filter-with-genres'),
              title: LocaleKeys.filterWithGenres.tr(),
              contentMode: contentMode,
              selectedGenresDesc: selectedWithGenresDesc,
              disabledGenresDesc: selectedWithoutGenresDesc,
              onTapGenre: (desc) => _updateWithGenres(vsp, desc),
            ),
            FilterDivider(),
            FilterGenresContainer(
              key: const PageStorageKey('watched-filter-without-genres'),
              title: LocaleKeys.filterWithoutGenres.tr(),
              contentMode: contentMode,
              selectedGenresDesc: selectedWithoutGenresDesc,
              disabledGenresDesc: selectedWithGenresDesc,
              onTapGenre: (desc) => _updateWithoutGenres(vsp, desc),
            ),
            FilterDivider(),
            FilterCountriesContainer(
              key: const PageStorageKey('watched-filter-with-countries'),
              selectedCountries: filter.withCountries,
              onTapCountry: viewModel.updateWithCountries,
            ),
            FilterDivider(),
            FilterYearsContainer(
              key: const PageStorageKey('watched-filter-dates'),
              fromDate: filter.fromPremiereDate,
              toDate: filter.toPremiereDate,
              onFromDateChanged: viewModel.updateFromPremiereDate,
              onToDateChanged: viewModel.updateToPremiereDate,
            ),
            FilterDivider(),
          ],
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
      MoviesWatchedFilterData() => filter.isDefault,
      SeriesWatchedFilterData() => filter.isDefault,
      _ => false,
    };
  }

  void _scheduleInitFilter(
    BuildContext context,
    WatchedVSP vspWatched,
    WatchedFilterVSP vsp,
  ) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!context.mounted) return;
      final initFilter = vspWatched.selectRead((s) => s.filter);
      vsp.viewModel.init(initFilter: initFilter);
    });
  }

  void _handleState(
    WatchedFilterState<F>? prev,
    WatchedFilterState<F> next,
    BuildContext context,
    WatchedVSP vspWatched,
  ) {
    if (!next.isUpdate(prev, (s) => s?.status)) return;

    if (next.status is ApplyWatchedFilterStatus) {
      final filter = next.filter;
      vspWatched.viewModel.updateFilter(filter);

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
      MoviesWatchedFilterData() =>
        withGenres
            ? filter.withGenres.map((e) => e.desc)
            : filter.withoutGenres.map((e) => e.desc),
      SeriesWatchedFilterData() =>
        withGenres
            ? filter.withGenres.map((e) => e.desc)
            : filter.withoutGenres.map((e) => e.desc),
      _ => <String>[],
    }.toList();
  }

  void _updateWithGenres(WatchedFilterVSP vsp, String desc) {
    final genre = _getGenreFromDesc(desc);

    vsp.viewModel.updateWithGenres(genre);
  }

  void _updateWithoutGenres(WatchedFilterVSP vsp, String desc) {
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
