import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../resources/base_theme/colors/base_colors_ext.dart';

class FilterChipItem extends StatelessWidget {
  final String desc;
  final bool isSelected;

  const FilterChipItem({
    super.key,
    required this.desc,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.baseColors;

    return IntrinsicWidth(
      child: Container(
        margin: 4.insAll(),
        decoration: BoxDecoration(
          color: isSelected ? colors.btnFillPrimBg : null,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? colors.btnFillPrimBg : colors.botSheetFg,
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Text(
              desc,
              style: context.labelLarge?.copyWith(
                color: isSelected ? colors.btnFillPrimFg : colors.botSheetFg,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
