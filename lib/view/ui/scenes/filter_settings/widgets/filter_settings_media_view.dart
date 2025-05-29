import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../../../domain/entities/filter/filter_data.dart';
import '../../../../../domain/entities/filter/movies_filter_data.dart';
import '../../../../../domain/entities/filter/series_filter_data.dart';
import '../../../../../domain/entities/movie/movie_genre.dart';
import '../../../../../domain/entities/series/series_genre.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../base/view_model/ext/state_comparator.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/dialogs/exit_dialog.dart';
import '../../filter/filter_view_model/filter_view_model.dart';
import '../filter_settings_view_model/filter_settings_state.dart';
import '../filter_settings_view_model/filter_settings_view_model.dart';
import 'filter_countries_container.dart';
import 'filter_genres_container.dart';
import 'filter_settings_app_bar.dart';

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

    return Scaffold(
      appBar: FilterSettingsAppBar(
        onReset: hasUnsavedChanges ? viewModel.resetFilter : null,
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
            Divider(),
            FilterGenresContainer(
              title: LocaleKeys.filterWithGenres.tr(),
              contentMode: contentMode,
              selectedGenreIds: _getSelectedGenreIndexes(filter),
              onTapGenre: (i) => _updateWithGenres(vsp, i),
            ),
            Divider(),
            FilterGenresContainer(
              title: LocaleKeys.filterWithoutGenres.tr(),
              contentMode: contentMode,
              selectedGenreIds: _getSelectedGenreIndexes(
                filter,
                withGenres: false,
              ),
              onTapGenre: (i) => _updateWithoutGenres(vsp, i),
            ),
            Divider(),
            FilterCountriesContainer(
              selectedCountries: filter.withCountries,
              onTapCountry: vsp.viewModel.updateWithCountries,
            ),
            Divider(),
          ],
        ),
      ),
    );
  }

  EdgeInsets _createScrPadding(BuildContext context) {
    final dimens = context.baseDimens;
    return EdgeInsets.fromLTRB(0, dimens.padTopPrim, 0, dimens.padBotPrim);
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

  void _updateWithGenres(FilterSettingsVSP vsp, int index) {
    final genre = _getGenreFromIndex(index);

    vsp.viewModel.updateWithGenres(genre);
  }

  void _updateWithoutGenres(FilterSettingsVSP vsp, int index) {
    final genre = _getGenreFromIndex(index);

    vsp.viewModel.updateWithoutGenres(genre);
  }

  G _getGenreFromIndex(int index) {
    return switch (contentMode) {
      ContentMode.movies => MovieGenre.fromIndex(index) as G,
      ContentMode.series => SeriesGenre.fromIndex(index) as G,
    };
  }
}
