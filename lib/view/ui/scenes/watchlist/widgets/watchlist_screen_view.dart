import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../base/content_mode_view_model/content_mode_view_model.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import 'watchlist_movies_view.dart';
import 'watchlist_series_view.dart';

class WatchlistScreenView extends ConsumerWidget {
  const WatchlistScreenView({super.key});

  @override
  Widget build(context, ref) {
    final vspContMode = ref.vspFromADProvider(contentModeViewModelPr);

    final contentMode = vspContMode.selectWatch((s) => s.mode);

    return contentMode.isMovies ? WatchlistMoviesView() : WatchlistSeriesView();
  }
}
