import 'package:flutter/material.dart';

import 'empty_list_container.dart';

class SliverEmptyListContainer extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final double? height;

  const SliverEmptyListContainer({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: EmptyListContainer(
        imagePath: imagePath,
        title: title,
        subtitle: subtitle,
        height: height,
      ),
    );
  }
}
