import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../navigation/routes/more_routes.dart';
import '../../../resources/locale_keys.g.dart';
import '../auth_view_model/auth_view_model.dart';

class AccountManagementButtons extends ConsumerWidget {
  const AccountManagementButtons({super.key});

  @override
  Widget build(context, ref) {
    final vsp = ref.vspFromADProvider(authViewModelPr);

    final isLoading = vsp.isLoading;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: isLoading ? null : () => ResetPassRoute().go(context),
          child: Text(LocaleKeys.forgotPassButton.tr()),
        ),
        TextButton(
          onPressed: isLoading ? null : () => RegRoute().go(context),
          child: Text(LocaleKeys.createAccountButton.tr()),
        ),
      ],
    );
  }
}
