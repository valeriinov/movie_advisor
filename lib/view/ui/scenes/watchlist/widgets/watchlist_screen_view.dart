import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../watchlist_view_model/watchlist_view_model.dart';
import 'watchlist_movies_view.dart';
import 'watchlist_series_view.dart';

class WatchlistScreenView extends ConsumerWidget {
  const WatchlistScreenView({super.key});

  @override
  Widget build(context, ref) {
    final vspContMode = ref.vspFromADFProvider(
      watchlistContModeViewModelPr(ContentMode.movies),
    );

    final contentMode = vspContMode.selectWatch((s) => s.mode);
    final toggleMode = vspContMode.viewModel.toggleMode;

    return contentMode.isMovies
        ? WatchlistMoviesView(toggleContentMode: toggleMode)
        : WatchlistSeriesView(toggleContentMode: toggleMode);
  }
}
