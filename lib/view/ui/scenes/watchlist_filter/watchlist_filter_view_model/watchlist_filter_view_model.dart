import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../common/utils/ext/country_list_manager.dart';
import '../../../../../common/utils/ext/genre_list_manager.dart';
import '../../../../../domain/entities/base_media/country.dart';
import '../../../../../domain/entities/movie/movie_genre.dart';
import '../../../../../domain/entities/series/series_genre.dart';
import '../../../../../domain/entities/watchlist_filter/movies_watchlist_filter_data.dart';
import '../../../../../domain/entities/watchlist_filter/series_watchlist_filter_data.dart';
import '../../../../../domain/entities/watchlist_filter/watchlist_filter_data.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import 'watchlist_filter_state.dart';

part 'watchlist_filter_movies_view_model.dart';

part 'watchlist_filter_series_view_model.dart';

/// {@category StateManagement}
///
/// A type alias for [ASP] with [WatchlistFilterViewModel] and [WatchlistFilterState].
typedef WatchlistFilterVSP =
    ASP<WatchlistFilterViewModel, WatchlistFilterState>;

/// {@category StateManagement}
///
/// A type alias for [AutoDisposeNotifierProvider] used to
/// provide an instance of [WatchlistFilterViewModel].
///
/// The [F] parameter represents the [WatchlistFilterData] type.
/// The [G] parameter represents the genre type.
typedef WatchlistFilterVMProvider<F extends WatchlistFilterData, G> =
    AutoDisposeNotifierProvider<
      WatchlistFilterViewModel<F, G>,
      WatchlistFilterState<F>
    >;

/// {@category StateManagement}
///
/// A view model for managing `watchlist filter`-specific logic and state.
///
/// This class is responsible for coordinating `watchlist filter` behavior and interacting with the UI.
abstract class WatchlistFilterViewModel<F extends WatchlistFilterData, G>
    extends AutoDisposeNotifier<WatchlistFilterState<F>> {
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

  void updateIncludeWatched(bool includeWatched) {
    final filter = state.filter.copyWith(includeWatched: includeWatched) as F;

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

  void updateFromAddedDate(DateTime? fromDate) {
    final filter = state.filter.copyWith(fromAddedDate: fromDate) as F;

    state = state.copyWith(filter: filter);
  }

  void updateToAddedDate(DateTime? toDate) {
    final filter = state.filter.copyWith(toAddedDate: toDate) as F;

    state = state.copyWith(filter: filter);
  }

  void setApplyStatus() {
    state = state.copyWith(status: const ApplyWatchlistFilterStatus());
  }
}
