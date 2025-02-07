import 'package:flutter/material.dart';

import '../../resources/base_theme/components/base_components_styles_ext.dart';
import '../poster.dart';
import 'suggestion_number.dart';

class SuggestionItem extends StatelessWidget {
  static const double _numberOffset = 10;

  final int number;
  final String posterUrl;

  const SuggestionItem({
    super.key,
    required this.number,
    required this.posterUrl,
  });

  @override
  Widget build(BuildContext context) {
    final styles = context.baseComponentsStyles;
    final posterSize = styles.posterLargeSize;

    final padLeft = number == 1 ? _numberOffset : 0.0;

    return Padding(
      padding: EdgeInsets.only(left: padLeft),
      child: Stack(
        children: [
          Poster(
            url: posterUrl,
            size: posterSize,
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              transform: Matrix4.translationValues(-_numberOffset, 0, 0),
              child: SuggestionNumber(number: number),
            ),
          )
        ],
      ),
    );
  }
}
