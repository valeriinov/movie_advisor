import 'package:easy_localization/easy_localization.dart';

import '../../../../domain/entities/base_media/crew_job.dart';
import '../locale_keys.g.dart';

extension CrewJobDesc on CrewJob {
  String get desc {
    return switch (this) {
      CrewJob.director => LocaleKeys.crewJobDirector.tr(),
      CrewJob.producer => LocaleKeys.crewJobProducer.tr(),
      CrewJob.unknown => '',
    };
  }
}
