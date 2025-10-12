import 'package:flutter/material.dart';

class FilterSortByRadioWrapper<T> extends StatelessWidget {
  final T groupValue;
  final void Function(T?) onChanged;
  final List<Widget> children;

  const FilterSortByRadioWrapper({
    super.key,
    required this.groupValue,
    required this.onChanged,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return RadioGroup<T>(
      groupValue: groupValue,
      onChanged: onChanged,
      child: SingleChildScrollView(
        child: Material(
          type: MaterialType.transparency,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          ),
        ),
      ),
    );
  }
}
