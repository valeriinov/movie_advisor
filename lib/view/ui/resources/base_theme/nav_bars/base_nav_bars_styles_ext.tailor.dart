// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_nav_bars_styles_ext.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$BaseNavBarsStylesTailorMixin on ThemeExtension<BaseNavBarsStyles> {
  TextStyle get appBarPrimTitleTextStyle;
  TextStyle get appBarSecTitleTextStyle;
  TextStyle get botNavBarLabelTextStyle;
  IconThemeData get appBarPrimIconTheme;

  @override
  BaseNavBarsStyles copyWith({
    TextStyle? appBarPrimTitleTextStyle,
    TextStyle? appBarSecTitleTextStyle,
    TextStyle? botNavBarLabelTextStyle,
    IconThemeData? appBarPrimIconTheme,
  }) {
    return BaseNavBarsStyles(
      appBarPrimTitleTextStyle:
          appBarPrimTitleTextStyle ?? this.appBarPrimTitleTextStyle,
      appBarSecTitleTextStyle:
          appBarSecTitleTextStyle ?? this.appBarSecTitleTextStyle,
      botNavBarLabelTextStyle:
          botNavBarLabelTextStyle ?? this.botNavBarLabelTextStyle,
      appBarPrimIconTheme: appBarPrimIconTheme ?? this.appBarPrimIconTheme,
    );
  }

  @override
  BaseNavBarsStyles lerp(
    covariant ThemeExtension<BaseNavBarsStyles>? other,
    double t,
  ) {
    if (other is! BaseNavBarsStyles) return this as BaseNavBarsStyles;
    return BaseNavBarsStyles(
      appBarPrimTitleTextStyle: TextStyle.lerp(
        appBarPrimTitleTextStyle,
        other.appBarPrimTitleTextStyle,
        t,
      )!,
      appBarSecTitleTextStyle: TextStyle.lerp(
        appBarSecTitleTextStyle,
        other.appBarSecTitleTextStyle,
        t,
      )!,
      botNavBarLabelTextStyle: TextStyle.lerp(
        botNavBarLabelTextStyle,
        other.botNavBarLabelTextStyle,
        t,
      )!,
      appBarPrimIconTheme: t < 0.5
          ? appBarPrimIconTheme
          : other.appBarPrimIconTheme,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BaseNavBarsStyles &&
            const DeepCollectionEquality().equals(
              appBarPrimTitleTextStyle,
              other.appBarPrimTitleTextStyle,
            ) &&
            const DeepCollectionEquality().equals(
              appBarSecTitleTextStyle,
              other.appBarSecTitleTextStyle,
            ) &&
            const DeepCollectionEquality().equals(
              botNavBarLabelTextStyle,
              other.botNavBarLabelTextStyle,
            ) &&
            const DeepCollectionEquality().equals(
              appBarPrimIconTheme,
              other.appBarPrimIconTheme,
            ));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(appBarPrimTitleTextStyle),
      const DeepCollectionEquality().hash(appBarSecTitleTextStyle),
      const DeepCollectionEquality().hash(botNavBarLabelTextStyle),
      const DeepCollectionEquality().hash(appBarPrimIconTheme),
    );
  }
}

extension BaseNavBarsStylesBuildContext on BuildContext {
  BaseNavBarsStyles get baseNavBarsStyles =>
      Theme.of(this).extension<BaseNavBarsStyles>()!;
}
