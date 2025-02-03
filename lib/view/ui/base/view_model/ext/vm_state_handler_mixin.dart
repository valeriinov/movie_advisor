import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'vm_state_provider_creator.dart';
import '../base_state.dart';

base mixin VMStateHandlerMixin<N, S extends BaseState,
    P extends ProviderListenable<S>> on ViewModelStateProvider<N, S, P> {
  @override
  BaseStatus get status => ref.watch(provider.select((s) => s.status));

  @override
  bool get isLoading => ref.watch(provider.select((s) => s.status.isLoading));

  @override
  bool get isInitialized =>
      ref.watch(provider.select((s) => s.status.isInitialized));

  @override
  bool get hasError => ref.watch(provider.select((s) => s.status.hasError));

  @override
  S get stateRead => ref.read(provider);

  @override
  S get stateWatch => ref.watch(provider);

  @override
  T selectRead<T>(T Function(S) selector) =>
      ref.read(provider.select(selector));

  @override
  T selectWatch<T>(T Function(S) selector) =>
      ref.watch(provider.select(selector));

  @override
  void handleState({required void Function(S?, S) listener}) {
    ref.listen<S>(provider, listener);
  }
}
