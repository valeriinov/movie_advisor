
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
  // TODO: Inject use case.
  // late final HomeUseCase _homeUseCase;

  @override
  HomeState build() {
    // TODO: Inject use case.
    // _homeUseCase = ref.read(homeUseCasePr);

    return const HomeState();
  }

  void _updateStatus(HomeStatus status) {
    state = state.copyWith(status: status);
  }
}

