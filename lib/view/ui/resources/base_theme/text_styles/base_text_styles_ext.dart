import 'package:flutter/material.dart';

import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

import '../../app_fonts.dart';
import '../colors/base_colors_ext.dart';

part 'base_text_styles.dart';

part 'base_text_styles_ext.tailor.dart';

abstract final class BaseTextStylesFactory {
  static BaseTextStyles createTextStyles(BaseColors colors) {
    final primTextColor = colors.textThemePrim;

    return BaseTextStyles(
      displayLarge: _BaseTextStyles.displayLarge(primTextColor),
      displayMedium: _BaseTextStyles.displayMedium(primTextColor),
      displaySmall: _BaseTextStyles.displaySmall(primTextColor),
      headlineLarge: _BaseTextStyles.headlineLarge(primTextColor),
      headlineMedium: _BaseTextStyles.headlineMedium(primTextColor),
      headlineSmall: _BaseTextStyles.headlineSmall(primTextColor),
      titleLarge: _BaseTextStyles.titleLarge(primTextColor),
      titleMedium: _BaseTextStyles.titleMedium(primTextColor),
      titleSmall: _BaseTextStyles.titleSmall(primTextColor),
      labelLarge: _BaseTextStyles.labelLarge(primTextColor),
      labelMedium: _BaseTextStyles.labelMedium(primTextColor),
      labelSmall: _BaseTextStyles.labelSmall(primTextColor),
      bodyLarge: _BaseTextStyles.bodyLarge(primTextColor),
      bodyMedium: _BaseTextStyles.bodyMedium(primTextColor),
      bodySmall: _BaseTextStyles.bodySmall(primTextColor),
    );
  }
}

@TailorMixin()
class BaseTextStyles extends ThemeExtension<BaseTextStyles>
    with _$BaseTextStylesTailorMixin {
  /// Used for very large headers, typically in hero sections or prominent areas.
  @override
  final TextStyle displayLarge;

  /// Used for large headers, suitable for less prominent sections.
  @override
  final TextStyle displayMedium;

  /// Used for medium-sized headers in sub-sections or highlighted areas.
  @override
  final TextStyle displaySmall;

  /// Used for large titles in primary content areas, such as titles of main sections.
  @override
  final TextStyle headlineLarge;

  /// Used for medium titles in secondary content areas, such as subheadings.
  @override
  final TextStyle headlineMedium;

  /// Used for small titles in tertiary content areas, such as card titles.
  @override
  final TextStyle headlineSmall;

  /// Used for large text in prominent areas, such as toolbars or large buttons.
  @override
  final TextStyle titleLarge;

  /// Used for medium text in standard sections, such as dialogs or settings titles.
  @override
  final TextStyle titleMedium;

  /// Used for small text in compact areas, such as small cards or menu items.
  @override
  final TextStyle titleSmall;

  /// Used for prominent labels, such as form field labels or large buttons.
  @override
  final TextStyle labelLarge;

  /// Used for medium-sized labels, such as buttons or input fields.
  @override
  final TextStyle labelMedium;

  /// Used for small labels, such as chip text or small controls.
  @override
  final TextStyle labelSmall;

  /// Used for primary content text, such as paragraphs in main content areas.
  @override
  final TextStyle bodyLarge;

  /// Used for default body text, such as content in most standard areas.
  ///
  /// The default text style for Material.
  @override
  final TextStyle bodyMedium;

  /// Used for fine print, such as footnotes or disclaimers.
  @override
  final TextStyle bodySmall;

  TextTheme createTextTheme() => TextTheme(
        displayLarge: displayLarge,
        displayMedium: displayMedium,
        displaySmall: displaySmall,
        headlineLarge: headlineLarge,
        headlineMedium: headlineMedium,
        headlineSmall: headlineSmall,
        titleLarge: titleLarge,
        titleMedium: titleMedium,
        titleSmall: titleSmall,
        labelLarge: labelLarge,
        labelMedium: labelMedium,
        labelSmall: labelSmall,
        bodyLarge: bodyLarge,
        bodyMedium: bodyMedium,
        bodySmall: bodySmall,
      );

  BaseTextStyles({
    required this.displayLarge,
    required this.displayMedium,
    required this.displaySmall,
    required this.headlineLarge,
    required this.headlineMedium,
    required this.headlineSmall,
    required this.titleLarge,
    required this.titleMedium,
    required this.titleSmall,
    required this.labelLarge,
    required this.labelMedium,
    required this.labelSmall,
    required this.bodyLarge,
    required this.bodyMedium,
    required this.bodySmall,
  });
}
