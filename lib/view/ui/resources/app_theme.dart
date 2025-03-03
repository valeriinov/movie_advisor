import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../widgets/app_thumb_shape.dart';
import 'app_fonts.dart';
import 'base_theme/buttons/base_buttons_styles_ext.dart';
import 'base_theme/colors/base_colors_ext.dart';
import 'base_theme/components/base_components_styles_ext.dart';
import 'base_theme/dialogs/base_dialogs_styles_ext.dart';
import 'base_theme/dimens/base_dimens_ext.dart';
import 'base_theme/durations/base_durations_ext.dart';
import 'base_theme/inputs/base_inputs_styles_ext.dart';
import 'base_theme/nav_bars/base_nav_bars_styles_ext.dart';
import 'base_theme/text_styles/base_text_styles_ext.dart';

class AppTheme {
  static final AppTheme _instance = AppTheme._();

  ThemeData? _theme;

  AppTheme._();

  factory AppTheme() => _instance;

  ThemeData get theme {
    _theme ??= _createTheme();
    return _theme!;
  }

  ThemeData _createTheme() {
    final colors = BaseColorsFactory.createColors();
    final textStyles = BaseTextStylesFactory.createTextStyles(colors);
    final buttonsStyles = BaseButtonStylesFactory.createButtonsStyles(colors);
    final inputsStyles = BaseInputsStylesFactory.createInputsStyles(colors);
    final navBarsStyles = BaseNavBarsStylesFactory.createNavBarsStyles(colors);
    final dialogsStyles = BaseDialogsStylesFactory.createDialogsStyles(colors);
    final componentsStyles = BaseComponentsStylesFactory.createComponentsStyles(
      colors,
    );

    return ThemeData(
      colorScheme: colors.createColorScheme(),
      splashColor: colors.splashColor,
      highlightColor: colors.highlightColor,
      fontFamily: AppFonts.roboto,
      scaffoldBackgroundColor: colors.scaffoldBg,
      pageTransitionsTheme: _createPageTransitionsTheme(colors),
      textTheme: textStyles.createTextTheme(),
      appBarTheme: _createAppBarTheme(colors, navBarsStyles),
      bottomNavigationBarTheme: _createBottomNavigationBarTheme(
        colors,
        navBarsStyles,
      ),
      floatingActionButtonTheme: _createFabTheme(colors, buttonsStyles),
      outlinedButtonTheme: _createOutBtnTheme(buttonsStyles),
      elevatedButtonTheme: _createElevBtnTheme(buttonsStyles),
      filledButtonTheme: _createFillBtnTheme(buttonsStyles),
      textButtonTheme: _createTextBtnTheme(buttonsStyles),
      iconButtonTheme: _createIconButtonTheme(buttonsStyles),
      listTileTheme: _createListTileTheme(componentsStyles),
      cardTheme: _createCardTheme(colors, componentsStyles),
      iconTheme: _createIconTheme(colors),
      primaryIconTheme: _createIconTheme(colors),
      inputDecorationTheme: _createInputDecorationTheme(colors, inputsStyles),
      dialogTheme: _createDialogTheme(colors, dialogsStyles),
      bottomSheetTheme: _createBottomSheetTheme(colors, componentsStyles),
      sliderTheme: _createSliderTheme(colors, componentsStyles),
      progressIndicatorTheme: _createProgressIndicatorTheme(colors),
      dividerTheme: _createDividerTheme(colors),
      extensions: [
        colors,
        textStyles,
        buttonsStyles,
        inputsStyles,
        navBarsStyles,
        dialogsStyles,
        componentsStyles,
        BaseDimensFactory.createDimens(),
        BaseDurationsFactory.createDurations(),
      ],
    );
  }

  PageTransitionsTheme _createPageTransitionsTheme(BaseColors colors) {
    return PageTransitionsTheme(
      builders: {
        for (final platform in TargetPlatform.values)
          platform: const CupertinoPageTransitionsBuilder(),
      },
    );
  }

  AppBarTheme _createAppBarTheme(BaseColors colors, BaseNavBarsStyles styles) {
    return AppBarTheme(
      scrolledUnderElevation: 0,
      color: colors.appBarPrimBg,
      foregroundColor: colors.appBarPrimFg,
      iconTheme: styles.appBarPrimIconTheme,
      titleTextStyle: styles.appBarPrimTitleTextStyle,
      centerTitle: true,
    );
  }

  BottomNavigationBarThemeData _createBottomNavigationBarTheme(
    BaseColors colors,
    BaseNavBarsStyles styles,
  ) {
    return BottomNavigationBarThemeData(
      backgroundColor: colors.botNavBarBg,
      selectedItemColor: colors.botNavBarFgSelect,
      unselectedItemColor: colors.botNavBarFgUnselect,
      selectedLabelStyle: styles.botNavBarLabelTextStyle,
      unselectedLabelStyle: styles.botNavBarLabelTextStyle,
      type: BottomNavigationBarType.fixed,
    );
  }

  FloatingActionButtonThemeData _createFabTheme(
    BaseColors colors,
    BaseButtonStyles styles,
  ) {
    return FloatingActionButtonThemeData(
      backgroundColor: colors.btnFABBg,
      foregroundColor: colors.btnFABFg,
      splashColor: colors.btnFABFgSplash,
      shape: styles.fabShape,
    );
  }

  OutlinedButtonThemeData _createOutBtnTheme(BaseButtonStyles styles) {
    return OutlinedButtonThemeData(style: styles.outBtnPrimStyle);
  }

  ElevatedButtonThemeData _createElevBtnTheme(BaseButtonStyles styles) {
    return ElevatedButtonThemeData(style: styles.elevBtnPrimStyle);
  }

  FilledButtonThemeData _createFillBtnTheme(BaseButtonStyles styles) {
    return FilledButtonThemeData(style: styles.fillBtnPrimStyle);
  }

  TextButtonThemeData _createTextBtnTheme(BaseButtonStyles styles) {
    return TextButtonThemeData(style: styles.textBtnPrimStyle);
  }

  IconButtonThemeData _createIconButtonTheme(BaseButtonStyles styles) {
    return IconButtonThemeData(style: styles.iconBtnPrimStyle);
  }

  ListTileThemeData _createListTileTheme(BaseComponentsStyles styles) {
    return ListTileThemeData(
      horizontalTitleGap: styles.horizontalTitleGap,
      titleTextStyle: styles.listTilePrimTitleTextStyle,
      subtitleTextStyle: styles.listTilePrimSubtTextStyle,
    );
  }

  CardTheme _createCardTheme(BaseColors colors, BaseComponentsStyles styles) {
    return CardTheme(
      surfaceTintColor: colors.cardPrimSurfTint,
      color: colors.cardPrimBg,
      shape: styles.cardPrimShape,
    );
  }

  IconThemeData _createIconTheme(BaseColors colors) {
    return IconThemeData(color: colors.btnIconPrim);
  }

  InputDecorationTheme _createInputDecorationTheme(
    BaseColors colors,
    BaseInputsStyles styles,
  ) {
    return InputDecorationTheme(
      filled: true,
      suffixIconColor: colors.txtFldPrimSuffixIcon,
      fillColor: colors.txtFldPrimFill,
      contentPadding: styles.txtFldPrimContPadding,
      hintStyle: styles.txtFldPrimLabelTextStyle,
      errorStyle: styles.txtFldPrimErrorTextStyle,
      labelStyle: styles.txtFldPrimLabelTextStyle,
      focusedBorder: styles.txtFldPrimFocusBorder,
      errorBorder: styles.txtFldPrimErrorBorder,
      focusedErrorBorder: styles.txtFldPrimErrorBorder,
      enabledBorder: styles.txtFldPrimInpBorder,
      disabledBorder: styles.txtFldPrimInpBorder,
    );
  }

  DialogTheme _createDialogTheme(BaseColors colors, BaseDialogsStyles styles) {
    return DialogTheme(
      backgroundColor: colors.dlgPrimBg,
      shape: styles.dlgPrimShape,
      titleTextStyle: styles.dlgPrimTitleTextStyle,
      contentTextStyle: styles.dlgPrimContTextStyle,
      actionsPadding: styles.dlgPrimActPadding,
      insetPadding: styles.dlgPrimInsPadding,
    );
  }

  BottomSheetThemeData _createBottomSheetTheme(
    BaseColors colors,
    BaseComponentsStyles styles,
  ) {
    return BottomSheetThemeData(
      backgroundColor: colors.botSheetBg,
      shape: styles.botSheetShape,
    );
  }

  SliderThemeData _createSliderTheme(
    BaseColors colors,
    BaseComponentsStyles styles,
  ) {
    return SliderThemeData(
      thumbSize: WidgetStateResolver(
        defaultValue: Size.fromRadius(styles.sliderThumbRadius),
      ),
      thumbShape: AppThumbShape(
        thumbRadius: styles.sliderThumbRadius,
        borderWidth: 2,
        borderColor: colors.sliderTrackFg,
        fillColor: colors.sliderThumbFill,
      ),
      trackHeight: styles.sliderTrackHeight,
      activeTrackColor: colors.sliderTrackFg,
      inactiveTrackColor: colors.sliderTrackBg,
      thumbColor: colors.sliderThumbFill,
      valueIndicatorColor: colors.sliderVal,
    );
  }

  ProgressIndicatorThemeData _createProgressIndicatorTheme(BaseColors colors) {
    return ProgressIndicatorThemeData(color: colors.loadingIndicatorFg);
  }

  DividerThemeData _createDividerTheme(BaseColors colors) {
    return DividerThemeData(color: colors.divider);
  }
}
