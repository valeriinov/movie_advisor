import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'vm_state_handler_mixin.dart';
import 'vm_state_provider_creator.dart';
import '../base_state.dart';


/// {@category StateManagement}
///
/// Implementation of [ViewModelStateProvider] for auto-disposable state management.
///
/// [VMAutoDisposeFamilyStateProvider] wraps an [AutoDisposeFamilyNotifierProvider] to
/// provide access to the view model and its state.
final class VMAutoDisposeFamilyStateProvider<
        N extends AutoDisposeFamilyNotifier<S, A>, S extends BaseState, A>
    extends ViewModelStateProvider<N, S,
        AutoDisposeFamilyNotifierProvider<N, S, A>> with VMStateHandlerMixin {
  VMAutoDisposeFamilyStateProvider(
      {required super.ref, required super.provider});

  @override
  N get viewModel => ref.read(provider.notifier);
}
