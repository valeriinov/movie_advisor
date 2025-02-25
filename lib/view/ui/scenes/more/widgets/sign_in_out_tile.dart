import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../domain/entities/auth/user_data.dart';
import '../../../navigation/routes/more_routes.dart';
import '../../../resources/app_images.dart';
import '../../../resources/base_theme/durations/base_durations_ext.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/app_svg_asset.dart';

class SignInOutTile extends StatelessWidget {
  final UserData? user;
  final VoidCallback? onSignOut;

  const SignInOutTile({super.key, this.user, this.onSignOut});

  @override
  Widget build(BuildContext context) {
    final durations = context.baseDurations;

    return AnimatedSwitcher(
      duration: durations.animSwitchPrim,
      child:
          user == null
              ? ListTile(
                title: Text(LocaleKeys.signInTile.tr()),
                leading: AppSvgAsset(path: AppImages.signInIcon),
                onTap: () => AuthRoute().go(context),
              )
              : ListTile(
                title: Text(LocaleKeys.signOutTile.tr()),
                leading: AppSvgAsset(path: AppImages.signOutIcon),
                onTap: onSignOut,
              ),
    );
  }
}
