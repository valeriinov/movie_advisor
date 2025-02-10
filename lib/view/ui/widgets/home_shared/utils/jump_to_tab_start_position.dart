import 'package:flutter/material.dart';

mixin JumpToTabStartPosition {
  static const double _tabStartPosition = 350.0;

  void jumpToTabStartPosition({
    required ScrollController scrollController,
    required bool isTabInitialized,
  }) {
    if (!isTabInitialized) return;

    final position = scrollController.position.pixels;
    if (position <= _tabStartPosition) return;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!scrollController.hasClients) return;

      scrollController.jumpTo(_tabStartPosition);
    });
  }
}
