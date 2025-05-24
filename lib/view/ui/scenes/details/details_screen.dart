import 'package:flutter/material.dart';
import '../../base/content_mode_view_model/content_mode.dart';
import 'widgets/details_screen_view.dart';

class DetailsScreen extends StatelessWidget {
  final int id;
  final ContentMode contentMode;

  const DetailsScreen({super.key, required this.id, required this.contentMode});

  @override
  Widget build(BuildContext context) {
    return DetailsScreenView(id: id, contentMode: contentMode);
  }
}
