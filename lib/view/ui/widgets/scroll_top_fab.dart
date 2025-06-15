import 'package:flutter/material.dart';

import '../resources/base_theme/durations/base_durations_ext.dart';

class ScrollTopFab extends StatelessWidget {
  final ScrollController scrollController;

  const ScrollTopFab({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    final durations = context.baseDurations;

    return FloatingActionButton(
      heroTag: null,
      onPressed: () => scrollController.animateTo(
        0,
        duration: durations.animScrollToTop,
        curve: Curves.easeOut,
      ),
      child: const Icon(Icons.keyboard_arrow_up_rounded),
    );
  }
}
