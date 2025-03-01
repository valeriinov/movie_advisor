import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/ext/flutter_ext/widget/gap_creator.dart';
import 'package:flutter_utils/ext/flutter_ext/widget/widget_list_separator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../domain/entities/auth/user_data.dart';
import '../../../../di/injector.dart';
import '../../../navigation/routes/more_routes.dart';
import '../../../resources/app_images.dart';
import '../../../resources/app_official_recources_urls.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/app_svg_asset.dart';
import '../../../widgets/sliver_refresh_indicator.dart';
import 'delete_account_button.dart';
import 'sign_in_out_tile.dart';
import 'user_email_tile.dart';

class MoreScreenContent extends ConsumerWidget {
  final Future<void> Function()? onRefresh;
  final UserData? user;
  final VoidCallback? onSignOut;

  const MoreScreenContent({
    super.key,
    this.onRefresh,
    this.user,
    this.onSignOut,
  });

  @override
  Widget build(context, ref) {
    final dimens = context.baseDimens;
    final urlLauncher = ref.urlLauncher;

    return CustomScrollView(
      slivers: [
        SliverRefreshIndicator(onRefresh: onRefresh),
        SliverPadding(padding: dimens.padTopPrimIns),
        SliverList.list(
          children: [
            UserEmailTile(user: user),
            ListTile(
              title: Text(LocaleKeys.aboutUsTile.tr()),
              leading: AppSvgAsset(path: AppImages.infoIcon),
              onTap: () => AboutUsRoute().go(context),
            ),
            ListTile(
              title: Text(LocaleKeys.privacyPolicyTile.tr()),
              leading: AppSvgAsset(path: AppImages.privacyIcon),
              onTap:
                  () => urlLauncher.openUrl(
                    AppOfficialResourcesUrls.privacyPolicyUrl,
                  ),
            ),
            ListTile(
              title: Text(LocaleKeys.termsAndConditionsTile.tr()),
              leading: AppSvgAsset(path: AppImages.termsIcon),
              onTap:
                  () => urlLauncher.openUrl(
                    AppOfficialResourcesUrls.termsAndConditionsUrl,
                  ),
            ),
            SignInOutTile(user: user, onSignOut: onSignOut),
          ].addSeparators(context, (_, __) => dimens.spSmall.gapVert()),
        ),
        DeleteAccountButton(
          user: user,
          onDeleteAccount: () => DeleteAccountRoute().go(context),
        ),
      ],
    );
  }
}
