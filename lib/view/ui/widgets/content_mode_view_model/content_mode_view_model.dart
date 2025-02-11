import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../base/content_mode.dart';
import '../../base/view_model/ext/vm_state_provider_creator.dart';
import 'content_mode_state.dart';

typedef ContentModeAFSP
    = AFSP<ContentModeViewModel, ContentModeState, ContentMode>;

class ContentModeViewModel
    extends AutoDisposeFamilyNotifier<ContentModeState, ContentMode> {
  @override
  ContentModeState build(arg) {
    return ContentModeState(mode: arg);
  }

  toggleMode() {
    final contentMode =
        state.mode.isMovies ? ContentMode.series : ContentMode.movies;

    state = state.copyWith(mode: contentMode);
  }
}
