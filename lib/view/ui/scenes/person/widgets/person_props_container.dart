import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';

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
                iconTransform: Matrix4.identity()
                  ..translateByVector3(Vector3(-1.5, -2.0, 0.0))
                  ..scaleByVector3(Vector3(1.3, 1.3, 1.0)),
                description: person.gender.desc,
              ),
            if (person.birthday != null)
              DetailsPropsTile(
                iconPath: AppImages.birthdayIcon,
                iconTransform: Matrix4.translationValues(0, -2.5, 0),
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
