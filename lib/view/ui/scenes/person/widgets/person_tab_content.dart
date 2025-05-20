import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../../../domain/entities/person/person_data.dart';
import '../../../resources/base_theme/durations/base_durations_ext.dart';
import '../model/person_tab.dart';
import 'biography_tab_content.dart';
import 'movies_tab_content.dart';
import 'series_tab_content.dart';

class PersonTabContent extends StatelessWidget {
  final PersonData person;
  final PersonTab currentTab;

  const PersonTabContent({
    super.key,
    required this.person,
    required this.currentTab,
  });

  @override
  Widget build(BuildContext context) {
    final durations = context.baseDurations;

    return SliverAnimatedSwitcher(
      duration: durations.animSwitchPrim,
      child: _getTabContent(),
    );
  }

  Widget _getTabContent() {
    return switch (currentTab) {
      PersonTab.biography => BiographyTabContent(biography: person.biography),
      PersonTab.movies => MoviesTabContent(movieCredits: person.movieCredits),
      PersonTab.series => SeriesTabContent(seriesCredits: person.seriesCredits),
    };
  }
}
