// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_dialogs_styles_ext.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$BaseDialogsStylesTailorMixin on ThemeExtension<BaseDialogsStyles> {
  TextStyle get dlgPrimTitleTextStyle;
  TextStyle get dlgPrimContTextStyle;
  TextStyle get dlgPrimBtnTextStyle;
  TextStyle get dlgSecBtnTextStyle;
  EdgeInsets get dlgPrimActPadding;
  EdgeInsets get dlgPrimInsPadding;
  ShapeBorder get dlgPrimShape;
  double get toastBorderRadius;
  double get toastBotMargin;
  double get toastHorMargin;
  double get toastMinHeight;
  EdgeInsets get toastContPadding;
  TextStyle get toastTextStyle;

  @override
  BaseDialogsStyles copyWith({
    TextStyle? dlgPrimTitleTextStyle,
    TextStyle? dlgPrimContTextStyle,
    TextStyle? dlgPrimBtnTextStyle,
    TextStyle? dlgSecBtnTextStyle,
    EdgeInsets? dlgPrimActPadding,
    EdgeInsets? dlgPrimInsPadding,
    ShapeBorder? dlgPrimShape,
    double? toastBorderRadius,
    double? toastBotMargin,
    double? toastHorMargin,
    double? toastMinHeight,
    EdgeInsets? toastContPadding,
    TextStyle? toastTextStyle,
  }) {
    return BaseDialogsStyles(
      dlgPrimTitleTextStyle:
          dlgPrimTitleTextStyle ?? this.dlgPrimTitleTextStyle,
      dlgPrimContTextStyle: dlgPrimContTextStyle ?? this.dlgPrimContTextStyle,
      dlgPrimBtnTextStyle: dlgPrimBtnTextStyle ?? this.dlgPrimBtnTextStyle,
      dlgSecBtnTextStyle: dlgSecBtnTextStyle ?? this.dlgSecBtnTextStyle,
      dlgPrimActPadding: dlgPrimActPadding ?? this.dlgPrimActPadding,
      dlgPrimInsPadding: dlgPrimInsPadding ?? this.dlgPrimInsPadding,
      dlgPrimShape: dlgPrimShape ?? this.dlgPrimShape,
      toastBorderRadius: toastBorderRadius ?? this.toastBorderRadius,
      toastBotMargin: toastBotMargin ?? this.toastBotMargin,
      toastHorMargin: toastHorMargin ?? this.toastHorMargin,
      toastMinHeight: toastMinHeight ?? this.toastMinHeight,
      toastContPadding: toastContPadding ?? this.toastContPadding,
      toastTextStyle: toastTextStyle ?? this.toastTextStyle,
    );
  }

  @override
  BaseDialogsStyles lerp(
    covariant ThemeExtension<BaseDialogsStyles>? other,
    double t,
  ) {
    if (other is! BaseDialogsStyles) return this as BaseDialogsStyles;
    return BaseDialogsStyles(
      dlgPrimTitleTextStyle: TextStyle.lerp(
        dlgPrimTitleTextStyle,
        other.dlgPrimTitleTextStyle,
        t,
      )!,
      dlgPrimContTextStyle: TextStyle.lerp(
        dlgPrimContTextStyle,
        other.dlgPrimContTextStyle,
        t,
      )!,
      dlgPrimBtnTextStyle: TextStyle.lerp(
        dlgPrimBtnTextStyle,
        other.dlgPrimBtnTextStyle,
        t,
      )!,
      dlgSecBtnTextStyle: TextStyle.lerp(
        dlgSecBtnTextStyle,
        other.dlgSecBtnTextStyle,
        t,
      )!,
      dlgPrimActPadding: t < 0.5 ? dlgPrimActPadding : other.dlgPrimActPadding,
      dlgPrimInsPadding: t < 0.5 ? dlgPrimInsPadding : other.dlgPrimInsPadding,
      dlgPrimShape: t < 0.5 ? dlgPrimShape : other.dlgPrimShape,
      toastBorderRadius: t < 0.5 ? toastBorderRadius : other.toastBorderRadius,
      toastBotMargin: t < 0.5 ? toastBotMargin : other.toastBotMargin,
      toastHorMargin: t < 0.5 ? toastHorMargin : other.toastHorMargin,
      toastMinHeight: t < 0.5 ? toastMinHeight : other.toastMinHeight,
      toastContPadding: t < 0.5 ? toastContPadding : other.toastContPadding,
      toastTextStyle: TextStyle.lerp(toastTextStyle, other.toastTextStyle, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BaseDialogsStyles &&
            const DeepCollectionEquality().equals(
              dlgPrimTitleTextStyle,
              other.dlgPrimTitleTextStyle,
            ) &&
            const DeepCollectionEquality().equals(
              dlgPrimContTextStyle,
              other.dlgPrimContTextStyle,
            ) &&
            const DeepCollectionEquality().equals(
              dlgPrimBtnTextStyle,
              other.dlgPrimBtnTextStyle,
            ) &&
            const DeepCollectionEquality().equals(
              dlgSecBtnTextStyle,
              other.dlgSecBtnTextStyle,
            ) &&
            const DeepCollectionEquality().equals(
              dlgPrimActPadding,
              other.dlgPrimActPadding,
            ) &&
            const DeepCollectionEquality().equals(
              dlgPrimInsPadding,
              other.dlgPrimInsPadding,
            ) &&
            const DeepCollectionEquality().equals(
              dlgPrimShape,
              other.dlgPrimShape,
            ) &&
            const DeepCollectionEquality().equals(
              toastBorderRadius,
              other.toastBorderRadius,
            ) &&
            const DeepCollectionEquality().equals(
              toastBotMargin,
              other.toastBotMargin,
            ) &&
            const DeepCollectionEquality().equals(
              toastHorMargin,
              other.toastHorMargin,
            ) &&
            const DeepCollectionEquality().equals(
              toastMinHeight,
              other.toastMinHeight,
            ) &&
            const DeepCollectionEquality().equals(
              toastContPadding,
              other.toastContPadding,
            ) &&
            const DeepCollectionEquality().equals(
              toastTextStyle,
              other.toastTextStyle,
            ));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(dlgPrimTitleTextStyle),
      const DeepCollectionEquality().hash(dlgPrimContTextStyle),
      const DeepCollectionEquality().hash(dlgPrimBtnTextStyle),
      const DeepCollectionEquality().hash(dlgSecBtnTextStyle),
      const DeepCollectionEquality().hash(dlgPrimActPadding),
      const DeepCollectionEquality().hash(dlgPrimInsPadding),
      const DeepCollectionEquality().hash(dlgPrimShape),
      const DeepCollectionEquality().hash(toastBorderRadius),
      const DeepCollectionEquality().hash(toastBotMargin),
      const DeepCollectionEquality().hash(toastHorMargin),
      const DeepCollectionEquality().hash(toastMinHeight),
      const DeepCollectionEquality().hash(toastContPadding),
      const DeepCollectionEquality().hash(toastTextStyle),
    );
  }
}

extension BaseDialogsStylesBuildContext on BuildContext {
  BaseDialogsStyles get baseDialogsStyles =>
      Theme.of(this).extension<BaseDialogsStyles>()!;
}
