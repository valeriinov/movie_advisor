import 'package:flutter/material.dart';

import 'widgets/person_screen_view.dart';

class PersonScreen extends StatelessWidget {
  final int id;

  const PersonScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return PersonScreenView(id: id);
  }
}
