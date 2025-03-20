// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_text_styles_ext.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$BaseTextStylesTailorMixin on ThemeExtension<BaseTextStyles> {
  TextStyle get displayLarge;
  TextStyle get displayMedium;
  TextStyle get displaySmall;
  TextStyle get headlineLarge;
  TextStyle get headlineMedium;
  TextStyle get headlineSmall;
  TextStyle get titleLarge;
  TextStyle get titleMedium;
  TextStyle get titleSmall;
  TextStyle get labelLarge;
  TextStyle get labelMedium;
  TextStyle get labelSmall;
  TextStyle get bodyLarge;
  TextStyle get bodyMedium;
  TextStyle get bodySmall;

  @override
  BaseTextStyles copyWith({
    TextStyle? displayLarge,
    TextStyle? displayMedium,
    TextStyle? displaySmall,
    TextStyle? headlineLarge,
    TextStyle? headlineMedium,
    TextStyle? headlineSmall,
    TextStyle? titleLarge,
    TextStyle? titleMedium,
    TextStyle? titleSmall,
    TextStyle? labelLarge,
    TextStyle? labelMedium,
    TextStyle? labelSmall,
    TextStyle? bodyLarge,
    TextStyle? bodyMedium,
    TextStyle? bodySmall,
  }) {
    return BaseTextStyles(
      displayLarge: displayLarge ?? this.displayLarge,
      displayMedium: displayMedium ?? this.displayMedium,
      displaySmall: displaySmall ?? this.displaySmall,
      headlineLarge: headlineLarge ?? this.headlineLarge,
      headlineMedium: headlineMedium ?? this.headlineMedium,
      headlineSmall: headlineSmall ?? this.headlineSmall,
      titleLarge: titleLarge ?? this.titleLarge,
      titleMedium: titleMedium ?? this.titleMedium,
      titleSmall: titleSmall ?? this.titleSmall,
      labelLarge: labelLarge ?? this.labelLarge,
      labelMedium: labelMedium ?? this.labelMedium,
      labelSmall: labelSmall ?? this.labelSmall,
      bodyLarge: bodyLarge ?? this.bodyLarge,
      bodyMedium: bodyMedium ?? this.bodyMedium,
      bodySmall: bodySmall ?? this.bodySmall,
    );
  }

  @override
  BaseTextStyles lerp(
    covariant ThemeExtension<BaseTextStyles>? other,
    double t,
  ) {
    if (other is! BaseTextStyles) return this as BaseTextStyles;
    return BaseTextStyles(
      displayLarge: TextStyle.lerp(displayLarge, other.displayLarge, t)!,
      displayMedium: TextStyle.lerp(displayMedium, other.displayMedium, t)!,
      displaySmall: TextStyle.lerp(displaySmall, other.displaySmall, t)!,
      headlineLarge: TextStyle.lerp(headlineLarge, other.headlineLarge, t)!,
      headlineMedium: TextStyle.lerp(headlineMedium, other.headlineMedium, t)!,
      headlineSmall: TextStyle.lerp(headlineSmall, other.headlineSmall, t)!,
      titleLarge: TextStyle.lerp(titleLarge, other.titleLarge, t)!,
      titleMedium: TextStyle.lerp(titleMedium, other.titleMedium, t)!,
      titleSmall: TextStyle.lerp(titleSmall, other.titleSmall, t)!,
      labelLarge: TextStyle.lerp(labelLarge, other.labelLarge, t)!,
      labelMedium: TextStyle.lerp(labelMedium, other.labelMedium, t)!,
      labelSmall: TextStyle.lerp(labelSmall, other.labelSmall, t)!,
      bodyLarge: TextStyle.lerp(bodyLarge, other.bodyLarge, t)!,
      bodyMedium: TextStyle.lerp(bodyMedium, other.bodyMedium, t)!,
      bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BaseTextStyles &&
            const DeepCollectionEquality().equals(
              displayLarge,
              other.displayLarge,
            ) &&
            const DeepCollectionEquality().equals(
              displayMedium,
              other.displayMedium,
            ) &&
            const DeepCollectionEquality().equals(
              displaySmall,
              other.displaySmall,
            ) &&
            const DeepCollectionEquality().equals(
              headlineLarge,
              other.headlineLarge,
            ) &&
            const DeepCollectionEquality().equals(
              headlineMedium,
              other.headlineMedium,
            ) &&
            const DeepCollectionEquality().equals(
              headlineSmall,
              other.headlineSmall,
            ) &&
            const DeepCollectionEquality().equals(
              titleLarge,
              other.titleLarge,
            ) &&
            const DeepCollectionEquality().equals(
              titleMedium,
              other.titleMedium,
            ) &&
            const DeepCollectionEquality().equals(
              titleSmall,
              other.titleSmall,
            ) &&
            const DeepCollectionEquality().equals(
              labelLarge,
              other.labelLarge,
            ) &&
            const DeepCollectionEquality().equals(
              labelMedium,
              other.labelMedium,
            ) &&
            const DeepCollectionEquality().equals(
              labelSmall,
              other.labelSmall,
            ) &&
            const DeepCollectionEquality().equals(bodyLarge, other.bodyLarge) &&
            const DeepCollectionEquality().equals(
              bodyMedium,
              other.bodyMedium,
            ) &&
            const DeepCollectionEquality().equals(bodySmall, other.bodySmall));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(displayLarge),
      const DeepCollectionEquality().hash(displayMedium),
      const DeepCollectionEquality().hash(displaySmall),
      const DeepCollectionEquality().hash(headlineLarge),
      const DeepCollectionEquality().hash(headlineMedium),
      const DeepCollectionEquality().hash(headlineSmall),
      const DeepCollectionEquality().hash(titleLarge),
      const DeepCollectionEquality().hash(titleMedium),
      const DeepCollectionEquality().hash(titleSmall),
      const DeepCollectionEquality().hash(labelLarge),
      const DeepCollectionEquality().hash(labelMedium),
      const DeepCollectionEquality().hash(labelSmall),
      const DeepCollectionEquality().hash(bodyLarge),
      const DeepCollectionEquality().hash(bodyMedium),
      const DeepCollectionEquality().hash(bodySmall),
    );
  }
}

extension BaseTextStylesBuildContext on BuildContext {
  BaseTextStyles get baseTextStyles =>
      Theme.of(this).extension<BaseTextStyles>()!;
}
