import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../base/content_mode.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../widgets/app_bar/floating_search_bar.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import '../search_view_model/search_view_model.dart';

class SearchScreenView extends ConsumerWidget {
  final ContentMode initContentMode;

  const SearchScreenView({super.key, required this.initContentMode});

  @override
  Widget build(context, ref) {
    final vspContMode = ref.vspFromADFProvider(
      searchContModeViewModelPr(initContentMode),
    );

    return Scaffold(
      // TODO: Localize title
      appBar: MainAppBar(title: Text('Search Screen')),
      body: CustomScrollView(
        slivers: [
          FloatingSearchBar(),
          SliverList.builder(
              itemCount: 20,
              itemBuilder: (_, i) {
                return ListTile(
                  title: Text('Item $i'),
                );
              })
          // contentMode.isMovies ? HomeMoviesView() : HomeSeriesView(),
        ],
      ),
    );
  }
}
