import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../base/view_model/ext/vm_state_provider_creator.dart';
import 'content_mode.dart';
import 'content_mode_state.dart';

/// {@category StateManagement}
///
/// A type alias for [AFSP] with [ContentModeViewModel], [ContentModeState], and [ContentMode].
typedef ContentModeAFSP =
    AFSP<ContentModeViewModel, ContentModeState, ContentMode>;

/// {@category StateManagement}
///
/// A view model for managing the [ContentMode] state.
class ContentModeViewModel
    extends AutoDisposeFamilyNotifier<ContentModeState, ContentMode> {
  @override
  ContentModeState build(arg) {
    return ContentModeState(mode: arg);
  }

  /// Toggles the content mode between [ContentMode.movies] and [ContentMode.series].
  toggleMode() {
    final contentMode =
        state.mode.isMovies ? ContentMode.series : ContentMode.movies;

    state = state.copyWith(mode: contentMode);
  }
}
