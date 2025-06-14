import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../common/utils/ext/country_list_manager.dart';
import '../../../../../common/utils/ext/genre_list_manager.dart';
import '../../../../../domain/entities/base_media/country.dart';
import '../../../../../domain/entities/movie/movie_genre.dart';
import '../../../../../domain/entities/series/series_genre.dart';
import '../../../../../domain/entities/watched_filter/movies_watched_filter_data.dart';
import '../../../../../domain/entities/watched_filter/series_watched_filter_data.dart';
import '../../../../../domain/entities/watched_filter/watched_filter_data.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import 'watched_filter_state.dart';

part 'watched_filter_movies_view_model.dart';

part 'watched_filter_series_view_model.dart';

/// {@category StateManagement}
///
/// A type alias for [ASP] with [WatchedFilterViewModel] and [WatchedFilterState].
typedef WatchedFilterVSP = ASP<WatchedFilterViewModel, WatchedFilterState>;

/// {@category StateManagement}
///
/// A type alias for [AutoDisposeNotifierProvider] used to
/// provide an instance of [WatchedFilterViewModel].
///
/// The [F] parameter represents the [WatchedFilterData] type.
/// The [G] parameter represents the genre type.
typedef WatchedFilterVMProvider<F extends WatchedFilterData, G> =
    AutoDisposeNotifierProvider<
      WatchedFilterViewModel<F, G>,
      WatchedFilterState<F>
    >;

/// {@category StateManagement}
///
/// A view model for managing `watched filter`-specific logic and state.
///
/// This class is responsible for coordinating `watched filter` behavior and interacting with the UI.
abstract class WatchedFilterViewModel<F extends WatchedFilterData, G>
    extends AutoDisposeNotifier<WatchedFilterState<F>> {
  void init({required F initFilter});

  void resetFilter();

  void updateWithGenres(G genre);

  void updateWithoutGenres(G genre);

  void updateWithCountries(Country country) {
    final withCountries = state.filter.withCountries.handleSelectionCountry(
      country,
    );

    final filter = state.filter.copyWith(withCountries: withCountries) as F;

    state = state.copyWith(filter: filter);
  }

  void updateIncludeWatchlist(bool includeWatchlist) {
    final filter =
        state.filter.copyWith(includeWatchlist: includeWatchlist) as F;

    state = state.copyWith(filter: filter);
  }

  void updateFromPremiereDate(DateTime? fromDate) {
    final filter = state.filter.copyWith(fromPremiereDate: fromDate) as F;

    state = state.copyWith(filter: filter);
  }

  void updateToPremiereDate(DateTime? toDate) {
    final filter = state.filter.copyWith(toPremiereDate: toDate) as F;

    state = state.copyWith(filter: filter);
  }

  void updateFromWatchedDate(DateTime? fromDate) {
    final filter = state.filter.copyWith(fromWatchedDate: fromDate) as F;

    state = state.copyWith(filter: filter);
  }

  void updateToWatchedDate(DateTime? toDate) {
    final filter = state.filter.copyWith(toWatchedDate: toDate) as F;

    state = state.copyWith(filter: filter);
  }

  void setApplyStatus() {
    state = state.copyWith(status: const ApplyWatchedFilterStatus());
  }
}
