import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/ext/flutter_ext/widget/gap_creator.dart';
import 'package:flutter_utils/ext/flutter_ext/widget/widget_list_separator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../resources/app_images.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/app_svg_asset.dart';
import '../../../widgets/sliver_refresh_indicator.dart';
import '../more_view_model/more_view_model.dart';
import 'more_app_bar.dart';

class MoreScreenView extends ConsumerWidget {
  const MoreScreenView({super.key});

  @override
  Widget build(context, ref) {
    final dimens = context.baseDimens;

    final vsp = ref.vspFromADProvider(moreViewModelPr);

    vsp.handleState(listener: (prev, next) {
      ref.baseStatusHandler.handleStatus(prev, next);
    });

    return Scaffold(
      appBar: MoreAppBar(),
      body: CustomScrollView(
        slivers: [
          SliverRefreshIndicator(
            onRefresh: () async {},
          ),
          SliverPadding(padding: dimens.padTopPrimIns),
          SliverList.list(
            children: [
              ListTile(
                title: Text(LocaleKeys.aboutUsTile.tr()),
                leading: AppSvgAsset(path: AppImages.infoIcon),
                onTap: () {},
              ),
              ListTile(
                title: Text(LocaleKeys.privacyPolicyTile.tr()),
                leading: AppSvgAsset(path: AppImages.privacyIcon),
                onTap: () {},
              ),
              ListTile(
                title: Text(LocaleKeys.termsAndConditionsTile.tr()),
                leading: AppSvgAsset(path: AppImages.termsIcon),
                onTap: () {},
              ),
            ].addSeparators(context, (_, __) => dimens.spSmall.gapVert()),
          ),
          SliverPadding(padding: dimens.padBotPrimIns),
        ],
      ),
    );
  }
}
