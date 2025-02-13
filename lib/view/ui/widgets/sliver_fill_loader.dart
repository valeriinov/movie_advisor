import 'package:flutter/material.dart';

class SliverFillLoader extends StatelessWidget {
  const SliverFillLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Center(child: CircularProgressIndicator()),
    );
  }
}
