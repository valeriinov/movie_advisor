import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../resources/base_theme/buttons/base_buttons_styles_ext.dart';
import '../resources/base_theme/colors/base_colors_ext.dart';
import '../resources/locale_keys.g.dart';

class FilterControlButtons extends StatelessWidget {
  final VoidCallback onApply;
  final VoidCallback onReset;
  final bool popOnReset;

  const FilterControlButtons({
    super.key,
    required this.onApply,
    required this.onReset,
    this.popOnReset = true,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.baseColors;
    final styles = context.baseButtonStyles;

    return Container(
      decoration: _buildContainerDecoration(colors),
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildResetButton(context, colors, styles),
          _buildApplyButton(context, colors),
        ],
      ),
    );
  }

  BoxDecoration _buildContainerDecoration(BaseColors colors) {
    return BoxDecoration(
      color: colors.filterCtrlBarBg,
      borderRadius: BorderRadiusCircular(25),
      boxShadow: [
        BoxShadow(
          offset: const Offset(0, 5),
          blurRadius: 15,
          color: colors.filterCtrlBarShadow,
        ),
      ],
    );
  }

  Widget _buildResetButton(
    BuildContext context,
    BaseColors colors,
    BaseButtonStyles styles,
  ) {
    return IntrinsicWidth(
      child: TextButton(
        style: FilledButton.styleFrom(
          overlayColor: colors.filterCtrlBarResetBtnOverlay,
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusCircular(25)),
          foregroundColor: colors.btnFillPrimBg,
          padding: const EdgeInsets.symmetric(horizontal: 14),
          textStyle: styles.fillBtnPrimTextStyle,
        ),
        onPressed: () => _resetSelection(context),
        child: Text(LocaleKeys.filterResetButton.tr()),
      ),
    );
  }

  Widget _buildApplyButton(BuildContext context, BaseColors colors) {
    return IntrinsicWidth(
      child: FilledButton(
        style: FilledButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusCircular(25)),
          padding: const EdgeInsets.symmetric(horizontal: 14),
        ),
        onPressed: () => _applySelection(context),
        child: Text(LocaleKeys.filterApplyButton.tr()),
      ),
    );
  }

  void _applySelection(BuildContext context) {
    onApply();
    Navigator.of(context).pop();
  }

  void _resetSelection(BuildContext context) {
    onReset();

    if (!popOnReset) return;

    Navigator.of(context).pop();
  }
}
