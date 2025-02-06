import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/content_mode.dart';
import 'home_state.dart';

/// {@category StateManagement}
///
/// A provider for the [HomeViewModel] class.
final homeViewModelPr =
    AutoDisposeNotifierProvider<HomeViewModel, HomeState>(HomeViewModel.new);

/// {@category StateManagement}
///
/// A view model for managing `home`-specific logic and state.
///
/// This class is responsible for coordinating `home` behavior and interacting with the UI.
class HomeViewModel extends AutoDisposeNotifier<HomeState> {
  @override
  HomeState build() {
    return const HomeState();
  }

  toggleContentMode() {
    final contentMode =
        state.contentMode.isMovies ? ContentMode.series : ContentMode.movies;

    state = state.copyWith(contentMode: contentMode);
  }
}
