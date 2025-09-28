import 'package:flutter/material.dart';

import 'widgets/home_screen_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TickerMode(
      // Ensure descendant providers/listeners
      // never pause — Riverpod v3 pauses "out-of-view"
      // providers by default unless wrapped in TickerMode(true).
      enabled: true,
      child: HomeScreenView(),
    );
  }
}
