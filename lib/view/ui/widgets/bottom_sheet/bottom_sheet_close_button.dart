import 'package:flutter/material.dart';

import '../../resources/base_theme/colors/base_colors_ext.dart';

class BottomSheetCloseButton extends StatelessWidget {
  const BottomSheetCloseButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.baseColors;

    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 6, top: 6),
        child: IconButton(
            style: IconButton.styleFrom(
              highlightColor: colors.highlightColor,
            ),
            onPressed: Navigator.of(context).pop,
            icon: Icon(
              Icons.close,
              size: 32,
              color: colors.botSheetIcon,
            )),
      ),
    );
  }
}
