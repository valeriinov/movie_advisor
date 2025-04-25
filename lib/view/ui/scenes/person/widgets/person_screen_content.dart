import 'package:flutter/material.dart';

import '../../../../../domain/entities/person/person_data.dart';

class PersonScreenContent extends StatelessWidget {
  final PersonData person;

  const PersonScreenContent({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Person Screen'));
  }
}
