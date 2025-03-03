import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/ext/flutter_ext/widget/edge_insets_creator.dart';

import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/locale_keys.g.dart';

class DeleteAccountDesc extends StatelessWidget {
  const DeleteAccountDesc({super.key});

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;

    return SliverToBoxAdapter(
      child: Padding(
        padding: dimens.spLarge.insBottom(),
        child: Text(LocaleKeys.deleteAccountDesc.tr()),
      ),
    );
  }
}
