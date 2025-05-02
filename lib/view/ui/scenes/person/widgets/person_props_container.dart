import 'package:flutter/material.dart';

import '../../../../../domain/entities/person/gender.dart';
import '../../../../../domain/entities/person/person_data.dart';
import '../../../resources/app_date_formats.dart';
import '../../../resources/app_images.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/ext/gender_desc.dart';
import '../../../widgets/details_props_tile.dart';

class PersonPropsContainer extends StatelessWidget {
  final PersonData person;

  const PersonPropsContainer({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;

    return SliverToBoxAdapter(
      child: Padding(
        padding: dimens.padHorSecIns.copyWith(top: dimens.spMedium),
        child: Column(
          spacing: dimens.spMedium,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (person.gender != Gender.none)
              DetailsPropsTile(
                iconPath: AppImages.genderIcon,
                description: person.gender.desc,
              ),
            if (person.birthday != null)
              DetailsPropsTile(
                iconPath: AppImages.birthdayIcon,
                description: AppDateFormats.dayMonthYearDotsFormat(
                  person.birthday!,
                ),
              ),
            if (person.deathDay != null)
              DetailsPropsTile(
                iconPath: AppImages.deathIcon,
                description: AppDateFormats.dayMonthYearDotsFormat(
                  person.deathDay!,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
