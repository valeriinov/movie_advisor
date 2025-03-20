import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../widgets/bottom_sheet/bottom_sheet_close_button.dart';
import '../../../widgets/bottom_sheet/bottom_sheet_title.dart';
import '../../../widgets/no_always_scroll_wrapper.dart';

class FilterBottomSheet extends StatelessWidget {
  final String title;
  final Widget content;
  final double? minHeight;

  const FilterBottomSheet({
    super.key,
    required this.title,
    required this.content,
    this.minHeight,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: minHeight ?? 500),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BottomSheetCloseButton(),
          BottomSheetTitle(title: title),
          NoAlwaysScrollWrapper(child: Expanded(child: content)),
          10.gapVert(),
        ],
      ),
    );
  }
}
