import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import '../details_view_model/details_view_model.dart';

class DetailsMovieScreenView extends ConsumerWidget {
  final int id;

  const DetailsMovieScreenView({super.key, required this.id});

  @override
  Widget build(context, ref) {
    final vsp = ref.vspFromADFProvider(
      detailsMovieViewModelPr(id),
    );

    final isLoading = vsp.isLoading;
    final isInitialized = vsp.isInitialized;
    final isSkeletonVisible = isLoading && !isInitialized;

    vsp.handleState(listener: (prev, next) {
      ref.baseStatusHandler
          .handleStatus(prev, next, handleLoadingState: () => isInitialized);
    });

    return Scaffold(
      appBar: MainAppBar(
        title: Text('Details Movie Screen'), // TODO: Localize title
      ),
      body: CustomScrollView(
        slivers: [],
      ),
    );
  }
}
