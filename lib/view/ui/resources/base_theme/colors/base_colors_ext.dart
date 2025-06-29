import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'base_colors.dart';

part 'base_colors_ext.tailor.dart';

abstract final class BaseColorsFactory {
  static BaseColors createColors() => BaseColors(
    seed: _BaseColors.seed,
    scaffoldBg: _BaseColors.scaffoldBg,
    splashColor: _BaseColors.splashColor,
    highlightColor: _BaseColors.highlightColor,
    textThemePrim: _BaseColors.textThemePrim,
    textThemeSec: _BaseColors.textThemeSec,
    btnElevPrimFg: _BaseColors.btnElevPrimFg,
    btnElevPrimBg: _BaseColors.btnElevPrimBg,
    btnElevPrimFgPress: _BaseColors.btnElevPrimFgPress,
    btnElevPrimBgPress: _BaseColors.btnElevPrimBgPress,
    btnElevPrimFgDis: _BaseColors.btnElevPrimFgDis,
    btnElevPrimBgDis: _BaseColors.btnElevPrimBgDis,
    btnOutPrimFg: _BaseColors.btnOutPrimFg,
    btnOutPrimBg: _BaseColors.btnOutPrimBg,
    btnOutPrimFgPress: _BaseColors.btnOutPrimFgPress,
    btnOutPrimBgPress: _BaseColors.btnOutPrimBgPress,
    btnOutPrimFgDis: _BaseColors.btnOutPrimFgDis,
    btnOutPrimBgDis: _BaseColors.btnOutPrimBgDis,
    btnFillPrimFg: _BaseColors.btnFillPrimFg,
    btnFillPrimBg: _BaseColors.btnFillPrimBg,
    btnFillPrimFgPress: _BaseColors.btnFillPrimFgPress,
    btnFillPrimBgPress: _BaseColors.btnFillPrimBgPress,
    btnFillPrimFgDis: _BaseColors.btnFillPrimFgDis,
    btnFillPrimBgDis: _BaseColors.btnFillPrimBgDis,
    btnTextPrimFg: _BaseColors.btnTextPrimFg,
    btnTextPrimBg: _BaseColors.btnTextPrimBg,
    btnTextPrimFgPress: _BaseColors.btnTextPrimFgPress,
    btnTextPrimBgPress: _BaseColors.btnTextPrimBgPress,
    btnTextPrimFgDis: _BaseColors.btnTextPrimFgDis,
    btnTextPrimBgDis: _BaseColors.btnTextPrimBgDis,
    btnFABFg: _BaseColors.btnFABFg,
    btnFABBg: _BaseColors.btnFABBg,
    btnFABFgSplash: _BaseColors.btnFABFgSplash,
    btnIconPrim: _BaseColors.btnIconPrim,
    btnIconSecFg: _BaseColors.btnIconSecFg,
    btnIconSecBg: _BaseColors.btnIconSecBg,
    btnIconSecBgPress: _BaseColors.btnIconSecBgPress,
    loadingIndicatorFg: _BaseColors.loadingIndicatorFg,
    loadingIndicatorBg: _BaseColors.loadingIndicatorBg,
    refreshIndicatorFg: _BaseColors.refreshIndicatorFg,
    refreshIndicatorBg: _BaseColors.refreshIndicatorBg,
    skeletonFrom: _BaseColors.skeletonFrom,
    skeletonTo: _BaseColors.skeletonTo,
    appBarPrimFg: _BaseColors.appBarPrimFg,
    appBarPrimBg: _BaseColors.appBarPrimBg,
    botNavBarBg: _BaseColors.botNavBarBg,
    botNavBarFgSelect: _BaseColors.botNavBarFgSelect,
    botNavBarFgUnselect: _BaseColors.botNavBarFgUnselect,
    navBarDivider: _BaseColors.navBarDivider,
    txtFldPrimFill: _BaseColors.txtFldPrimFill,
    txtFldPrimInput: _BaseColors.txtFldPrimInput,
    txtFldPrimLabel: _BaseColors.txtFldPrimLabel,
    txtFldPrimBorder: _BaseColors.txtFldPrimBorder,
    txtFldPrimBorderFocus: _BaseColors.txtFldPrimBorderFocus,
    txtFldPrimBorderError: _BaseColors.txtFldPrimBorderError,
    txtFldPrimError: _BaseColors.txtFldPrimError,
    txtFldPrimSuffixIcon: _BaseColors.txtFldPrimSuffixIcon,
    kbdActionBarBg: _BaseColors.kbdActionBarBg,
    kbdActionBarFg: _BaseColors.kbdActionBarFg,
    dlgPrimBg: _BaseColors.dlgPrimBg,
    dlgPrimTitle: _BaseColors.dlgPrimTitle,
    dlgPrimCont: _BaseColors.dlgPrimCont,
    dlgPrimBtnFg: _BaseColors.dlgPrimBtnFg,
    dlgSecBtnFg: _BaseColors.dlgSecBtnFg,
    toastSuccessBg: _BaseColors.toastSuccessBg,
    toastInfoBg: _BaseColors.toastInfoBg,
    toastErrorBg: _BaseColors.toastErrorBg,
    toastFg: _BaseColors.toastFg,
    cardPrimBg: _BaseColors.cardPrimBg,
    cardPrimSurfTint: _BaseColors.cardPrimSurfTint,
    cardPrimBorder: _BaseColors.cardPrimBorder,
    cardPrimShadow: _BaseColors.cardPrimShadow,
    listTilePrimTitle: _BaseColors.listTilePrimTitle,
    listTilePrimSubtitle: _BaseColors.listTilePrimSubtitle,
    listTilePrimTitleDis: _BaseColors.listTilePrimTitleDis,
    listTileSecTitle: _BaseColors.listTileSecTitle,
    listTileSecSubtitle: _BaseColors.listTileSecSubtitle,
    checkboxPrimFillSelect: _BaseColors.checkboxPrimFillSelect,
    checkboxPrimBorder: _BaseColors.checkboxPrimBorder,
    checkboxPrimBorderDis: _BaseColors.checkboxPrimBorderDis,
    avatarPrimBg: _BaseColors.avatarPrimBg,
    avatarPrimFg: _BaseColors.avatarPrimFg,
    suggestNumFill: _BaseColors.suggestNumFill,
    suggestNumStroke: _BaseColors.suggestNumStroke,
    suggestNumBlur: _BaseColors.suggestNumBlur,
    tabUnderSelect: _BaseColors.tabUnderSelect,
    infoCardRating: _BaseColors.infoCardRating,
    infoCardPrimFg: _BaseColors.infoCardPrimFg,
    backdropRatingBg: _BaseColors.backdropRatingBg,
    botSheetBg: _BaseColors.botSheetBg,
    botSheetFg: _BaseColors.botSheetFg,
    botSheetIcon: _BaseColors.botSheetIcon,
    botSheetBarrier: _BaseColors.botSheetBarrier,
    botSheetCheckboxBorder: _BaseColors.botSheetCheckboxBorder,
    botSheetRadio: _BaseColors.botSheetRadio,
    botSheetRadioSelect: _BaseColors.botSheetRadioSelect,
    botSheetCheckboxFill: _BaseColors.botSheetCheckboxFill,
    sliderVal: _BaseColors.sliderVal,
    sliderTrackFg: _BaseColors.sliderTrackFg,
    sliderTrackBg: _BaseColors.sliderTrackBg,
    sliderThumbFill: _BaseColors.sliderThumbFill,
    removeRateBtn: _BaseColors.removeRateBtn,
    deleteAccountBtn: _BaseColors.deleteAccountBtn,
    divider: _BaseColors.divider,
    contSwitchBg: _BaseColors.contSwitchBg,
    contSwitchIndicator: _BaseColors.contSwitchIndicator,
    contSwitchBorder: _BaseColors.contSwitchBorder,
    contSwitchFg: _BaseColors.contSwitchFg,
    contSwitchFgSelect: _BaseColors.contSwitchFgSelect,
    filterPrimFg: _BaseColors.filterPrimFg,
    filterSecFg: _BaseColors.filterSecFg,
    filterCtrlBarBg: _BaseColors.filterCtrlBarBg,
    filterCtrlBarShadow: _BaseColors.filterCtrlBarShadow,
    filterCtrlBarResetBtnOverlay: _BaseColors.filterCtrlBarResetBtnOverlay,
    backBtnSecBg: _BaseColors.backBtnSecBg,
    backBtnSecFg: _BaseColors.backBtnSecFg,
  );
}

@TailorMixin()
class BaseColors extends ThemeExtension<BaseColors>
    with _$BaseColorsTailorMixin {
  // BASE

  /// Seed color for generating color schemes.
  @override
  final Color seed;

  /// Splash color for the theme.
  @override
  final Color splashColor;

  /// Highlight color for the theme.
  @override
  final Color highlightColor;

  /// Scaffold background color.
  @override
  final Color scaffoldBg;

  /// Primary text color for the theme.
  @override
  final Color textThemePrim;

  /// Secondary text color for the theme.
  @override
  final Color textThemeSec;

  // BUTTONS

  /// ElevatedButton foreground color (default state).
  @override
  final Color btnElevPrimFg;

  /// ElevatedButton background color (default state).
  @override
  final Color btnElevPrimBg;

  /// ElevatedButton foreground color (pressed state).
  @override
  final Color btnElevPrimFgPress;

  /// ElevatedButton background color (pressed state).
  @override
  final Color btnElevPrimBgPress;

  /// ElevatedButton foreground color (disabled state).
  @override
  final Color btnElevPrimFgDis;

  /// ElevatedButton background color (disabled state).
  @override
  final Color btnElevPrimBgDis;

  /// OutlinedButton foreground color (default state).
  @override
  final Color btnOutPrimFg;

  /// OutlinedButton background color (default state).
  @override
  final Color btnOutPrimBg;

  /// OutlinedButton foreground color (pressed state).
  @override
  final Color btnOutPrimFgPress;

  /// OutlinedButton background color (pressed state).
  @override
  final Color btnOutPrimBgPress;

  /// OutlinedButton foreground color (disabled state).
  @override
  final Color btnOutPrimFgDis;

  /// OutlinedButton background color (disabled state).
  @override
  final Color btnOutPrimBgDis;

  /// FilledButton foreground color (default state).
  @override
  final Color btnFillPrimFg;

  /// FilledButton background color (default state).
  @override
  final Color btnFillPrimBg;

  /// FilledButton foreground color (pressed state).
  @override
  final Color btnFillPrimFgPress;

  /// FilledButton background color (pressed state).
  @override
  final Color btnFillPrimBgPress;

  /// FilledButton foreground color (disabled state).
  @override
  final Color btnFillPrimFgDis;

  /// FilledButton background color (disabled state).
  @override
  final Color btnFillPrimBgDis;

  /// TextButton foreground color (default state).
  @override
  final Color btnTextPrimFg;

  /// TextButton background color (default state).
  @override
  final Color btnTextPrimBg;

  /// TextButton foreground color (pressed state).
  @override
  final Color btnTextPrimFgPress;

  /// TextButton background color (pressed state).
  @override
  final Color btnTextPrimBgPress;

  /// TextButton foreground color (disabled state).
  @override
  final Color btnTextPrimFgDis;

  /// TextButton background color (disabled state).
  @override
  final Color btnTextPrimBgDis;

  /// Floating Action Button (FAB) foreground color.
  @override
  final Color btnFABFg;

  /// Floating Action Button (FAB) background color.
  @override
  final Color btnFABBg;

  /// Floating Action Button (FAB) splash color.
  @override
  final Color btnFABFgSplash;

  /// Icon button color.
  @override
  final Color btnIconPrim;

  /// Icon button secondary foreground color.
  @override
  final Color btnIconSecFg;

  /// Icon button secondary background color.
  @override
  final Color btnIconSecBg;

  /// Icon button secondary background color (pressed state).
  @override
  final Color btnIconSecBgPress;

  // LOADING INDICATOR

  /// Loading indicator foreground color.
  @override
  final Color loadingIndicatorFg;

  /// Loading indicator background color.
  @override
  final Color loadingIndicatorBg;

  /// Refresh indicator foreground color.
  @override
  final Color refreshIndicatorFg;

  /// Refresh indicator background color.
  @override
  final Color refreshIndicatorBg;

  /// Skeleton effect start color.
  @override
  final Color skeletonFrom;

  /// Skeleton effect end color.
  @override
  final Color skeletonTo;

  // NAV BARS

  /// AppBar foreground color.
  @override
  final Color appBarPrimFg;

  /// AppBar background color.
  @override
  final Color appBarPrimBg;

  /// Bottom Navigation Bar background color.
  @override
  final Color botNavBarBg;

  /// Bottom Navigation Bar foreground color (selected state).
  @override
  final Color botNavBarFgSelect;

  /// Bottom Navigation Bar foreground color (unselected state).
  @override
  final Color botNavBarFgUnselect;

  /// Navigation Bar divider color.
  @override
  final Color navBarDivider;

  // INPUTS

  /// TextField fill color.
  @override
  final Color txtFldPrimFill;

  /// TextField input text color.
  @override
  final Color txtFldPrimInput;

  /// TextField label color.
  @override
  final Color txtFldPrimLabel;

  /// TextField border color.
  @override
  final Color txtFldPrimBorder;

  /// TextField border color (focused state).
  @override
  final Color txtFldPrimBorderFocus;

  /// TextField border color (error state).
  @override
  final Color txtFldPrimBorderError;

  /// TextField error text color.
  @override
  final Color txtFldPrimError;

  /// TextField primary suffix icon color.
  @override
  final Color txtFldPrimSuffixIcon;

  // KEYBOARD ACTIONS

  /// Keyboard action bar background color.
  @override
  final Color kbdActionBarBg;

  /// Keyboard action bar foreground color.
  @override
  final Color kbdActionBarFg;

  // DIALOGS

  /// Dialog primary background color.
  @override
  final Color dlgPrimBg;

  /// Dialog primary title color.
  @override
  final Color dlgPrimTitle;

  /// Dialog primary content color.
  @override
  final Color dlgPrimCont;

  /// Dialog primary button foreground color.
  @override
  final Color dlgPrimBtnFg;

  /// Dialog secondary button foreground color.
  @override
  final Color dlgSecBtnFg;

  /// Toast success background color.
  @override
  final Color toastSuccessBg;

  /// Toast info background color.
  @override
  final Color toastInfoBg;

  /// Toast error background color.
  @override
  final Color toastErrorBg;

  /// Toast foreground color.
  @override
  final Color toastFg;

  // COMPONENTS

  /// Card primary background color.
  @override
  final Color cardPrimBg;

  /// Card primary surface tint color.
  @override
  final Color cardPrimSurfTint;

  /// Card primary border color.
  @override
  final Color cardPrimBorder;

  /// Card primary shadow color.
  @override
  final Color cardPrimShadow;

  /// ListTile primary title color.
  @override
  final Color listTilePrimTitle;

  /// ListTile primary subtitle color.
  @override
  final Color listTilePrimSubtitle;

  /// ListTile primary title color (disabled state).
  @override
  final Color listTilePrimTitleDis;

  /// ListTile secondary title color.
  @override
  final Color listTileSecTitle;

  /// ListTile secondary subtitle color.
  @override
  final Color listTileSecSubtitle;

  /// Checkbox primary fill color (selected state).
  @override
  final Color checkboxPrimFillSelect;

  /// Checkbox primary border color.
  @override
  final Color checkboxPrimBorder;

  /// Checkbox primary border color (disabled state).
  @override
  final Color checkboxPrimBorderDis;

  /// Avatar primary background color.
  @override
  final Color avatarPrimBg;

  /// Avatar primary foreground color.
  @override
  final Color avatarPrimFg;

  /// Suggestion number fill color.
  @override
  final Color suggestNumFill;

  /// Suggestion number stroke color.
  @override
  final Color suggestNumStroke;

  /// Suggestion number blur color.
  @override
  final Color suggestNumBlur;

  /// Selected tab underline color.
  @override
  final Color tabUnderSelect;

  /// Info card rating color.
  @override
  final Color infoCardRating;

  /// Info card primary foreground color.
  @override
  final Color infoCardPrimFg;

  /// Backdrop rating background color.
  @override
  final Color backdropRatingBg;

  /// Bottom sheet background color.
  @override
  final Color botSheetBg;

  /// Bottom sheet foreground color.
  @override
  final Color botSheetFg;

  /// Bottom sheet icon color.
  @override
  final Color botSheetIcon;

  /// Slider track foreground color.
  @override
  final Color botSheetBarrier;

  /// Bottom sheet checkbox border color.
  @override
  final Color botSheetCheckboxBorder;

  /// Bottom sheet radio color.
  @override
  final Color botSheetRadio;

  /// Bottom sheet radio selected color.
  @override
  final Color botSheetRadioSelect;

  /// Bottom sheet checkbox fill color.
  @override
  final Color botSheetCheckboxFill;

  /// Slider track foreground color.
  @override
  final Color sliderVal;

  /// Slider track foreground color.
  @override
  final Color sliderTrackFg;

  /// Slider track background color.
  @override
  final Color sliderTrackBg;

  /// Slider thumb fill color.
  @override
  final Color sliderThumbFill;

  /// Remove rate button color.
  @override
  final Color removeRateBtn;

  /// Delete account button color.
  @override
  final Color deleteAccountBtn;

  /// Divider color.
  @override
  final Color divider;

  /// Container switch background color.
  @override
  final Color contSwitchBg;

  /// Container switch indicator color.
  @override
  final Color contSwitchIndicator;

  /// Container switch border color.
  @override
  final Color contSwitchBorder;

  /// Container switch foreground color.
  @override
  final Color contSwitchFg;

  /// Container switch foreground color (selected state).
  @override
  final Color contSwitchFgSelect;

  /// Filter primary foreground color.
  @override
  final Color filterPrimFg;

  /// Filter secondary foreground color.
  @override
  final Color filterSecFg;

  /// Filter control bar background color.
  @override
  final Color filterCtrlBarBg;

  /// Filter control bar shadow color.
  @override
  final Color filterCtrlBarShadow;

  /// Filter control bar reset button overlay color.
  @override
  final Color filterCtrlBarResetBtnOverlay;

  /// Secondary back button background color.
  @override
  final Color backBtnSecBg;

  /// Secondary back button foreground color.
  @override
  final Color backBtnSecFg;

  /// Creates a color scheme from the seed color.
  ColorScheme createColorScheme({Brightness brightness = Brightness.light}) =>
      ColorScheme.fromSeed(seedColor: seed, brightness: brightness);

  BaseColors({
    required this.seed,
    required this.scaffoldBg,
    required this.splashColor,
    required this.highlightColor,
    required this.textThemePrim,
    required this.textThemeSec,
    required this.btnElevPrimFg,
    required this.btnElevPrimBg,
    required this.btnElevPrimFgPress,
    required this.btnElevPrimBgPress,
    required this.btnElevPrimFgDis,
    required this.btnElevPrimBgDis,
    required this.btnOutPrimFg,
    required this.btnOutPrimBg,
    required this.btnOutPrimFgPress,
    required this.btnOutPrimBgPress,
    required this.btnOutPrimFgDis,
    required this.btnOutPrimBgDis,
    required this.btnFillPrimFg,
    required this.btnFillPrimBg,
    required this.btnFillPrimFgPress,
    required this.btnFillPrimBgPress,
    required this.btnFillPrimFgDis,
    required this.btnFillPrimBgDis,
    required this.btnTextPrimFg,
    required this.btnTextPrimBg,
    required this.btnTextPrimFgPress,
    required this.btnTextPrimBgPress,
    required this.btnTextPrimFgDis,
    required this.btnTextPrimBgDis,
    required this.btnFABFg,
    required this.btnFABBg,
    required this.btnFABFgSplash,
    required this.btnIconPrim,
    required this.btnIconSecFg,
    required this.btnIconSecBg,
    required this.btnIconSecBgPress,
    required this.loadingIndicatorFg,
    required this.loadingIndicatorBg,
    required this.refreshIndicatorFg,
    required this.refreshIndicatorBg,
    required this.skeletonFrom,
    required this.skeletonTo,
    required this.appBarPrimFg,
    required this.appBarPrimBg,
    required this.botNavBarBg,
    required this.botNavBarFgSelect,
    required this.botNavBarFgUnselect,
    required this.navBarDivider,
    required this.txtFldPrimFill,
    required this.txtFldPrimInput,
    required this.txtFldPrimLabel,
    required this.txtFldPrimBorder,
    required this.txtFldPrimBorderFocus,
    required this.txtFldPrimBorderError,
    required this.txtFldPrimError,
    required this.txtFldPrimSuffixIcon,
    required this.kbdActionBarBg,
    required this.kbdActionBarFg,
    required this.dlgPrimBg,
    required this.dlgPrimTitle,
    required this.dlgPrimCont,
    required this.dlgPrimBtnFg,
    required this.dlgSecBtnFg,
    required this.toastSuccessBg,
    required this.toastInfoBg,
    required this.toastErrorBg,
    required this.toastFg,
    required this.cardPrimBg,
    required this.cardPrimSurfTint,
    required this.cardPrimBorder,
    required this.cardPrimShadow,
    required this.listTilePrimTitle,
    required this.listTilePrimSubtitle,
    required this.listTilePrimTitleDis,
    required this.listTileSecTitle,
    required this.listTileSecSubtitle,
    required this.checkboxPrimFillSelect,
    required this.checkboxPrimBorder,
    required this.checkboxPrimBorderDis,
    required this.avatarPrimBg,
    required this.avatarPrimFg,
    required this.suggestNumFill,
    required this.suggestNumStroke,
    required this.suggestNumBlur,
    required this.tabUnderSelect,
    required this.infoCardRating,
    required this.infoCardPrimFg,
    required this.backdropRatingBg,
    required this.botSheetBg,
    required this.botSheetFg,
    required this.botSheetIcon,
    required this.botSheetBarrier,
    required this.botSheetCheckboxBorder,
    required this.botSheetRadio,
    required this.botSheetRadioSelect,
    required this.botSheetCheckboxFill,
    required this.sliderVal,
    required this.sliderTrackFg,
    required this.sliderTrackBg,
    required this.sliderThumbFill,
    required this.removeRateBtn,
    required this.deleteAccountBtn,
    required this.divider,
    required this.contSwitchBg,
    required this.contSwitchIndicator,
    required this.contSwitchBorder,
    required this.contSwitchFg,
    required this.contSwitchFgSelect,
    required this.filterPrimFg,
    required this.filterSecFg,
    required this.filterCtrlBarBg,
    required this.filterCtrlBarShadow,
    required this.filterCtrlBarResetBtnOverlay,
    required this.backBtnSecBg,
    required this.backBtnSecFg,
  });
}
