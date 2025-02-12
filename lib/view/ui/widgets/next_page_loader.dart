import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../resources/base_theme/dimens/base_dimens_ext.dart';

class NextPageLoader extends StatelessWidget {
  const NextPageLoader({super.key});

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;

    return SliverToBoxAdapter(
      child: Padding(
        padding: dimens.spMedium.insTop(),
        child: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
