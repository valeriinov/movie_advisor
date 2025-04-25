import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../widgets/scroll_top_fab.dart';
import '../../../widgets/scroll_top_listener.dart';
import '../person_view_model/person_view_model.dart';
import 'person_content_skeleton.dart';
import 'person_screen_content.dart';

class PersonScreenView extends HookConsumerWidget {
  final int id;

  const PersonScreenView({super.key, required this.id});

  @override
  Widget build(context, ref) {
    final vsp = ref.vspFromADFProvider(personViewModelPr(id));

    final isLoading = vsp.isLoading;
    final isInitialized = vsp.isInitialized;
    final isSkeletonVisible = isLoading && !isInitialized;

    vsp.handleState(
      listener: (prev, next) {
        ref.baseStatusHandler.handleStatus(
          prev,
          next,
          handleLoadingState: () => false,
        );
      },
    );

    final person = vsp.selectWatch((s) => s.person);

    final scrollController = useScrollController();

    return ScrollTopListener(
      scrollController: scrollController,
      builder: (_, isFabVisible) {
        return Scaffold(
          body:
              isSkeletonVisible
                  ? PersonContentSkeleton()
                  : PersonScreenContent(person: person),
          floatingActionButton:
              isFabVisible
                  ? ScrollTopFab(scrollController: scrollController)
                  : null,
        );
      },
    );
  }
}
