
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'more_state.dart';

/// {@category StateManagement}
///
/// A provider for the [MoreViewModel] class.
final moreViewModelPr =
    AutoDisposeNotifierProvider<MoreViewModel, MoreState>(MoreViewModel.new);

/// {@category StateManagement}
///
/// A view model for managing `more`-specific logic and state.
///
/// This class is responsible for coordinating `more` behavior and interacting with the UI.
class MoreViewModel extends AutoDisposeNotifier<MoreState> {

  @override
  MoreState build() {
    return const MoreState();
  }
}

