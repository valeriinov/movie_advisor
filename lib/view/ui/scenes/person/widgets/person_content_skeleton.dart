import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../common/mock/mock_person.dart';
import '../../../resources/base_theme/colors/base_colors_ext.dart';
import '../model/person_tab.dart';
import 'person_screen_content.dart';

class PersonContentSkeleton extends StatelessWidget {
  const PersonContentSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.baseColors;

    final person = MockPerson.createPersonData();

    return Skeletonizer(
      effect: PulseEffect(from: colors.skeletonFrom, to: colors.skeletonTo),
      child: PersonScreenContent(
        person: person,
        currentTab: PersonTab.biography,
      ),
    );
  }
}
