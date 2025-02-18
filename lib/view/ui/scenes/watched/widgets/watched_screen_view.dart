import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../watched_view_model/watched_view_model.dart';
import 'watched_movies_view.dart';
import 'watched_series_view.dart';

class WatchedScreenView extends ConsumerWidget {
  const WatchedScreenView({super.key});

  @override
  Widget build(context, ref) {
    final vspContMode = ref.vspFromADFProvider(
      watchedContModeViewModelPr(ContentMode.movies),
    );

    final contentMode = vspContMode.selectWatch((s) => s.mode);

    return contentMode.isMovies ? WatchedMoviesView() : WatchedSeriesView();
  }
}
