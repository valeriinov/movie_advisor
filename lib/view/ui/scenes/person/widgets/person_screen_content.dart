import 'package:flutter/material.dart';

import '../../../../../domain/entities/person/person_data.dart';
import 'person_back_button.dart';
import 'person_header.dart';

class PersonScreenContent extends StatelessWidget {
  final PersonData person;
  final ScrollController? scrollController;

  const PersonScreenContent({
    super.key,
    required this.person,
    this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          controller: scrollController,
          slivers: [
            PersonHeader(name: person.name, photoUrl: person.profilePath),
          ],
        ),
        PersonBackButton(),
      ],
    );
  }
}
