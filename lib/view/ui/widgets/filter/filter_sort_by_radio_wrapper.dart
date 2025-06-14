import 'package:flutter/material.dart';

class FilterSortByRadioWrapper extends StatelessWidget {
  final List<Widget> children;

  const FilterSortByRadioWrapper({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Material(
        type: MaterialType.transparency,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        ),
      ),
    );
  }
}
