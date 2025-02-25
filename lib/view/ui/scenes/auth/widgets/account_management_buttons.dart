import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../navigation/routes/more_routes.dart';
import '../../../resources/locale_keys.g.dart';

class AccountManagementButtons extends StatelessWidget {
  const AccountManagementButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () => ResetPassRoute().go(context),
          child: Text(LocaleKeys.forgotPassButton.tr()),
        ),
        TextButton(
          onPressed: () => RegRoute().go(context),
          child: Text(LocaleKeys.createAccountButton.tr()),
        ),
      ],
    );
  }
}
