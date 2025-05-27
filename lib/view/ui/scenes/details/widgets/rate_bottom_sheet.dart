import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../resources/base_theme/colors/base_colors_ext.dart';
import '../../../resources/base_theme/components/base_components_styles_ext.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/bottom_sheet/bottom_sheet_close_button.dart';
import '../../../widgets/bottom_sheet_checkbox.dart';

class RateBottomSheet extends HookWidget {
  final String title;
  final bool isInWatchlist;
  final int? initRate;
  final void Function(int, bool)? onRate;
  final void Function()? removeRate;

  const RateBottomSheet({
    super.key,
    required this.title,
    required this.isInWatchlist,
    this.initRate,
    this.onRate,
    this.removeRate,
  });

  @override
  Widget build(BuildContext context) {
    final rate = useState<int>(initRate ?? 0);
    final deleteFromWatchlist = useState<bool>(isInWatchlist);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        BottomSheetCloseButton(),
        _buildTitle(),
        _buildRate(rate.value),
        _buildSlider(rate.value, (v) => rate.value = v),
        if (isInWatchlist)
          _buildDeleteFromWatchlistCheckbox(
            deleteFromWatchlist.value,
            (v) => deleteFromWatchlist.value = v,
          ),
        _buildSubmitButton(rate.value, deleteFromWatchlist.value),
        _buildRemoveRateButton(),
      ],
    );
  }

  Widget _buildTitle() {
    return Builder(
      builder: (context) {
        final dimens = context.baseDimens;
        final styles = context.baseComponentsStyles;

        return Padding(
          padding: dimens.padHorSecIns,
          child: Text(
            title,
            style: styles.botSheetTitleTextStyle,
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }

  Widget _buildRate(int rate) {
    return Builder(
      builder: (context) {
        final dimens = context.baseDimens;
        final styles = context.baseComponentsStyles;

        return Padding(
          padding: EdgeInsets.only(
            top: dimens.spMedium,
            bottom: dimens.spExtSmall,
          ),
          child: Text(rate.toString(), style: styles.sliderValTextStyle),
        );
      },
    );
  }

  Widget _buildSlider(int rate, void Function(int) onChanged) {
    return Builder(
      builder: (context) {
        return Padding(
          padding: 38.insHor(),
          child: Slider(
            value: rate.toDouble(),
            onChanged: (v) {
              final newRate = v.round();
              if (newRate != rate) {
                _vibrate();

                onChanged(newRate);
              }
            },
            min: 0,
            max: 10,
          ),
        );
      },
    );
  }

  void _vibrate() {
    defaultTargetPlatform.isIOS
        ? HapticFeedback.mediumImpact()
        : HapticFeedback.vibrate();
  }

  Widget _buildDeleteFromWatchlistCheckbox(
    bool deleteFromWatchlist,
    void Function(bool) onChanged,
  ) {
    return Flexible(
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: IntrinsicWidth(
            child: BottomSheetCheckbox(
              horizontalTitleGap: 0.0,
              label: LocaleKeys.deleteFromWatchlist.tr(),
              value: deleteFromWatchlist,
              onChanged: (v) => onChanged(v ?? deleteFromWatchlist),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSubmitButton(int rate, bool deleteFromWatchlist) {
    final isEnabled = rate != 0 && rate != initRate;

    return Builder(
      builder: (context) {
        final dimens = context.baseDimens;

        return Container(
          width: 220,
          padding: EdgeInsets.only(top: dimens.spLarge, bottom: dimens.spLarge),
          child: FilledButton(
            onPressed: isEnabled
                ? () {
                    Navigator.of(context).pop();
                    onRate?.call(rate, deleteFromWatchlist);
                  }
                : null,
            child: Text(LocaleKeys.rateButton.tr()),
          ),
        );
      },
    );
  }

  Widget _buildRemoveRateButton() {
    final isEnabled = removeRate != null;

    return isEnabled
        ? Builder(
            builder: (context) {
              final dimens = context.baseDimens;
              final colors = context.baseColors;

              return Padding(
                padding: EdgeInsets.only(bottom: dimens.spMedium),
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: colors.removeRateBtn,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    removeRate?.call();
                  },
                  child: Text(LocaleKeys.removeFromWatchedButton.tr()),
                ),
              );
            },
          )
        : SizedBox.shrink();
  }
}
