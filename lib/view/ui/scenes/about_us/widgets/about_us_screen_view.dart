import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../resources/app_images.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import '../../../widgets/app_svg_asset.dart';
import '../../../widgets/no_always_scroll_wrapper.dart';

class AboutUsScreenView extends StatelessWidget {
  const AboutUsScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;

    return Scaffold(
      appBar: MainAppBar(title: Text(LocaleKeys.aboutUsScreenTitle.tr())),
      body: Padding(
          padding: dimens.padHorPrimIns,
          child: NoAlwaysScrollWrapper(
            child: CustomScrollView(
              slivers: [
                SliverPadding(padding: dimens.padTopPrimIns),
                SliverList.list(
                  children: [
                    Text(LocaleKeys.aboutUsDescription.tr()),
                    dimens.spLarge.gapVert(),
                    Text(LocaleKeys.aboutUsTMDBAttribution.tr()),
                    dimens.spExtLarge.gapVert(),
                    AppSvgAsset(
                      height: 27,
                      path: AppImages.tmbdLogo,
                    ),
                  ],
                ),
                SliverPadding(padding: dimens.padBotPrimIns),
              ],
            ),
          )),
    );
  }
}
