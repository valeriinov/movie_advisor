import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import '../../../widgets/form/widgets/search_field_container.dart';
import '../search_view_model/search_view_model.dart';

class SearchScreenView extends ConsumerWidget {
  const SearchScreenView({super.key});

  @override
  Widget build(context, ref) {
    // TODO: pass the correct initial data to view model.
    final vsp = ref.vspFromADFProvider(searchViewModelPr(-1));

    vsp.handleState(listener: (prev, next) {
      ref.baseStatusHandler.handleStatus(prev, next);
    });

    final dimens = context.baseDimens;

    return Scaffold(
      // TODO: Localize title
      appBar: MainAppBar(title: Text('Search Screen')),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            primary: false,
            leading: SizedBox.shrink(),
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: dimens.padHorPrimIns,
              title: SearchFieldContainer(autoFocus: true),
            ),
          ),
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
