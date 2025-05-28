import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../domain/entities/movie/movie_genre.dart';
import '../../../../../domain/entities/series/series_genre.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../resources/ext/movie_genre_desc.dart';
import '../../../resources/ext/series_genre_desc.dart';

class FilterGenresContainer extends HookWidget {
  final String title;
  final ContentMode contentMode;
  final List<int> selectedGenreIds;
  final Function(int index) onTapGenre;

  const FilterGenresContainer({
    super.key,
    required this.title,
    required this.contentMode,
    required this.selectedGenreIds,
    required this.onTapGenre,
  });

  @override
  Widget build(BuildContext context) {
    final descriptions = useMemoized(_getGenreDescriptions, [contentMode]);

    return SliverToBoxAdapter(
      child: ExpansionTile(
        title: Text(title),
        children: descriptions
            .map((desc) => ListTile(title: Text(desc)))
            .toList(),
      ),
    );
  }

  List<String> _getGenreDescriptions() {
    return switch (contentMode) {
      ContentMode.movies => MovieGenre.values.map((e) => e.desc).toList(),
      ContentMode.series => SeriesGenre.values.map((e) => e.desc).toList(),
    };
  }
}
