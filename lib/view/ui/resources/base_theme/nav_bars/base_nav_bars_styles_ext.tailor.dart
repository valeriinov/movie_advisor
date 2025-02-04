// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'base_nav_bars_styles_ext.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$BaseNavBarsStylesTailorMixin on ThemeExtension<BaseNavBarsStyles> {
  TextStyle get botNavBarLabelTextStyle;
  IconThemeData get appBarPrimIconTheme;

  @override
  BaseNavBarsStyles copyWith({
    TextStyle? botNavBarLabelTextStyle,
    IconThemeData? appBarPrimIconTheme,
  }) {
    return BaseNavBarsStyles(
      botNavBarLabelTextStyle:
          botNavBarLabelTextStyle ?? this.botNavBarLabelTextStyle,
      appBarPrimIconTheme: appBarPrimIconTheme ?? this.appBarPrimIconTheme,
    );
  }

  @override
  BaseNavBarsStyles lerp(
      covariant ThemeExtension<BaseNavBarsStyles>? other, double t) {
    if (other is! BaseNavBarsStyles) return this as BaseNavBarsStyles;
    return BaseNavBarsStyles(
      botNavBarLabelTextStyle: TextStyle.lerp(
          botNavBarLabelTextStyle, other.botNavBarLabelTextStyle, t)!,
      appBarPrimIconTheme:
          t < 0.5 ? appBarPrimIconTheme : other.appBarPrimIconTheme,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BaseNavBarsStyles &&
            const DeepCollectionEquality().equals(
                botNavBarLabelTextStyle, other.botNavBarLabelTextStyle) &&
            const DeepCollectionEquality()
                .equals(appBarPrimIconTheme, other.appBarPrimIconTheme));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(botNavBarLabelTextStyle),
      const DeepCollectionEquality().hash(appBarPrimIconTheme),
    );
  }
}

extension BaseNavBarsStylesBuildContext on BuildContext {
  BaseNavBarsStyles get baseNavBarsStyles =>
      Theme.of(this).extension<BaseNavBarsStyles>()!;
}
