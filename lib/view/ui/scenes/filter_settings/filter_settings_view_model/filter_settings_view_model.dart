import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../common/utils/ext/country_list_manager.dart';
import '../../../../../common/utils/ext/genre_list_manager.dart';
import '../../../../../domain/entities/base_media/country.dart';
import '../../../../../domain/entities/filter/filter_data.dart';
import '../../../../../domain/entities/filter/movies_filter_data.dart';
import '../../../../../domain/entities/filter/series_filter_data.dart';
import '../../../../../domain/entities/movie/movie_genre.dart';
import '../../../../../domain/entities/series/series_genre.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import 'filter_settings_state.dart';

part 'filter_settings_movies_view_model.dart';

part 'filter_settings_series_view_model.dart';

/// {@category StateManagement}
///
/// A type alias for [ASP] with [FilterSettingsViewModel] and [FilterSettingsState].
typedef FilterSettingsVSP = ASP<FilterSettingsViewModel, FilterSettingsState>;

/// {@category StateManagement}
///
/// A type alias for [AutoDisposeNotifierProvider] used to
/// provide an instance of [FilterSettingsViewModel].
///
/// The [F] parameter represents the [FilterData] type.
/// The [G] parameter represents the genre type.
typedef FilterSettingsVMProvider<F extends FilterData, G> =
    AutoDisposeNotifierProvider<
      FilterSettingsViewModel<F, G>,
      FilterSettingsState<F>
    >;

/// {@category StateManagement}
///
/// A view model for managing `filter settings`-specific logic and state.
///
/// This class is responsible for coordinating `filter settings` behavior and interacting with the UI.
abstract class FilterSettingsViewModel<F extends FilterData, G>
    extends AutoDisposeNotifier<FilterSettingsState<F>> {
  void init({required F initFilter});

  void resetFilter() {
    state = state.copyWith(filter: state.initFilter);
  }

  void updateWithGenres(G genre);

  void updateWithoutGenres(G genre);

  void updateWithCountries(Country country) {
    final withCountries = state.filter.withCountries.handleSelectionCountry(
      country,
    );

    final filter = state.filter.copyWith(withCountries: withCountries) as F;

    state = state.copyWith(filter: filter);
  }

  void updateFilterYear(int? year) {
    final filter = state.filter.copyWith(year: year) as F;

    state = state.copyWith(filter: filter);
  }

  void updateIncludeWatched(bool includeWatched) {
    final filter = state.filter.copyWith(includeWatched: includeWatched) as F;

    state = state.copyWith(filter: filter);
  }

  void updateIncludeWatchlist(bool includeWatchlist) {
    final filter =
        state.filter.copyWith(includeWatchlist: includeWatchlist) as F;

    state = state.copyWith(filter: filter);
  }

  void setApplyStatus() {
    state = state.copyWith(status: const ApplyFilterSettingsStatus());
  }
}
