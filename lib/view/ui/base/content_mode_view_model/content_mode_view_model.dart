import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../base/view_model/ext/vm_state_provider_creator.dart';
import 'content_mode.dart';
import 'content_mode_state.dart';

/// {@category StateManagement}
///
/// A provider for the [ContentModeViewModel] class.
final contentModeViewModelPr =
    AutoDisposeNotifierProvider<ContentModeViewModel, ContentModeState>(
      ContentModeViewModel.new,
    );

/// {@category StateManagement}
///
/// A type alias for [ASP] with [ContentModeViewModel] and [ContentModeState].
typedef ContentModeVSP = ASP<ContentModeViewModel, ContentModeState>;

/// {@category StateManagement}
///
/// A view model for managing the [ContentMode] state.
class ContentModeViewModel extends AutoDisposeNotifier<ContentModeState> {
  @override
  ContentModeState build() {
    return ContentModeState();
  }

  /// Toggles the content mode between [ContentMode.movies] and [ContentMode.series].
  toggleMode() {
    final contentMode = state.mode.isMovies
        ? ContentMode.series
        : ContentMode.movies;

    state = state.copyWith(mode: contentMode);
  }
}
