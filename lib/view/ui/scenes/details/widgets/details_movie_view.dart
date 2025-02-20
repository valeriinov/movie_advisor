import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../domain/entities/movie/movie_data.dart';
import '../../../../../domain/entities/movie/movie_short_data.dart';
import '../../../resources/locale_keys.g.dart';
import '../details_view_model/details_view_model.dart';
import 'details_media_view.dart';

class DetailsMovieView extends StatelessWidget {
  final int id;

  const DetailsMovieView({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return DetailsMediaView<MovieData, MovieShortData>(
      id: id,
      provider: detailsMovieViewModelPr,
      appBarTitle: LocaleKeys.detailsMovieScreenTitle.tr(),
      rateTitle: LocaleKeys.rateMovieTitle.tr(),
    );
  }
}
