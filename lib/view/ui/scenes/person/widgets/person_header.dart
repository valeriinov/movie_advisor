import 'package:flutter/material.dart';

import '../../../widgets/image_with_loader.dart';
import 'person_name.dart';

class PersonHeader extends StatelessWidget {
  final String name;
  final String photoUrl;

  const PersonHeader({super.key, required this.name, required this.photoUrl});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Stack(
        children: [
          ImageWithLoader(imagePath: photoUrl),
          PersonName(name: name),
        ],
      ),
    );
  }
}
