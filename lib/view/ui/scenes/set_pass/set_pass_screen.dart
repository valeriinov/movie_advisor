import 'package:flutter/material.dart';

import 'widgets/set_pass_screen_view.dart';

class SetPassScreen extends StatelessWidget {
  final String oobCode;

  const SetPassScreen({super.key, required this.oobCode});

  @override
  Widget build(BuildContext context) {
    return SetPassScreenView(oobCode: oobCode);
  }
}
