import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../../../domain/entities/person/person_data.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../widgets/tabs/app_tabs.dart';
import '../model/person_tab.dart';
import 'person_back_button.dart';
import 'person_header.dart';
import 'person_props_container.dart';
import 'person_tab_content.dart';

class PersonScreenContent extends StatelessWidget {
  final PersonData person;
  final PersonTab currentTab;
  final void Function(int index)? onTabSelect;
  final ScrollController? scrollController;

  const PersonScreenContent({
    super.key,
    required this.person,
    required this.currentTab,
    this.onTabSelect,
    this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;

    return Stack(
      children: [
        CustomScrollView(
          controller: scrollController,
          slivers: [
            PersonHeader(name: person.name, photoUrl: person.profilePath),
            SliverPadding(padding: dimens.spSmall.insVert()),
            PersonPropsContainer(person: person),
            SliverPadding(padding: dimens.spSmall.insVert()),
            SliverSafeArea(
              sliver: AppTabs(
                tabs: PersonTab.descriptions,
                currentIndex: currentTab.index,
                onSelect: onTabSelect,
                isPinned: false,
                isSkeletonKeep: false,
              ),
            ),
            SliverPadding(padding: dimens.spSmall.insVert()),
            PersonTabContent(person: person, currentTab: currentTab),
            SliverPadding(padding: dimens.padBotPrim.insBottom()),
          ],
        ),
        PersonBackButton(),
      ],
    );
  }
}
