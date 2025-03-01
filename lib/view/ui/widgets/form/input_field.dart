import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../resources/app_images.dart';
import '../../resources/base_theme/inputs/base_inputs_styles_ext.dart';
import '../../resources/locale_keys.g.dart';
import '../app_svg_asset.dart';
import 'utils/clear_button_builder.dart';
import 'widgets/field_label.dart';

/// {@category Widgets}
///
/// A customizable input field widget with built-in validation.
///
/// [InputField] simplifies the creation of commonly used input fields like email,
/// password, and confirm password fields with integrated validation, clear buttons,
/// and focus management. It ensures a consistent user experience across forms.
///
/// This widget is designed to work seamlessly with `flutter_form_builder` and
/// provides additional convenience through clear buttons and password visibility toggles.
///
///Example
///
/// ```dart
/// InputField.email(
///   name: 'email',
/// ),
/// InputField.pass(
///   name: 'password',
/// ),
/// ```
class InputField extends StatelessWidget {
  final Widget child;

  const InputField._({super.key, required this.child});

  InputField.search({
    Key? key,
    String? hintText,
    bool? enabled,
    bool autoFocus = false,
    Function(String)? onSearch,
    VoidCallback? onClear,
    final TextEditingController? controller,
  }) : this._(
         key: key,
         child: TextFieldBuilderExtended(
           controller: controller,
           builder: (props) {
             final styles = props.context.baseInputsStyles;

             return Hero(
               tag: 'search',
               flightShuttleBuilder:
                   (_, animation, __, ___, toHeroCtx) =>
                       _flightShuttleWithAutofocusHandling(
                         animation,
                         toHeroCtx.widget,
                         props: props,
                         autoFocus: autoFocus,
                       ),
               child: TextFormField(
                 enabled: enabled,
                 style: styles.txtFlsPrimInpTextStyle,
                 onChanged: onSearch,
                 focusNode: props.focusNode,
                 controller: props.controller,
                 decoration: InputDecoration(
                   hintText: hintText ?? LocaleKeys.searchHint.tr(),
                   suffixIconConstraints: const BoxConstraints(
                     minWidth: 16,
                     minHeight: 16,
                   ),
                   suffixIcon: _searchSuffixIcon(props, onClear),
                 ),
               ),
             );
           },
         ),
       );

  /// Handles the flight transition for a Hero animation and requests focus
  /// on the text field once the animation completes if `autoFocus` is enabled.
  static Widget _flightShuttleWithAutofocusHandling(
    Animation<double> animation,
    Widget child, {
    required BuilderProps<FormFieldState> props,
    required bool autoFocus,
  }) {
    return HookBuilder(
      builder: (_) {
        if (!autoFocus) return child;

        useEffect(() {
          void listener(AnimationStatus s) =>
              _animationStatusListener(s, props);

          animation.addStatusListener(listener);

          return () => animation.removeStatusListener(listener);
        }, const []);

        return child;
      },
    );
  }

  /// Requests focus on the text field after the Hero animation completes.
  static void _animationStatusListener(
    AnimationStatus status,
    BuilderProps<FormFieldState> props,
  ) {
    if (status != AnimationStatus.completed) return;

    // Defer focus request until the next frame to avoid UI inconsistencies.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (props.context.mounted) {
        props.focusNode.requestFocus();
      }
    });
  }

  static Widget? _searchSuffixIcon(
    BuilderProps<FormFieldState> props,
    VoidCallback? onClear,
  ) {
    final styles = props.context.baseInputsStyles;
    final rightPadding = styles.txtFldPrimContPadding.right;

    final value = props.controller.text;
    final isFocused = props.focusNode.hasFocus;
    final showSearchIcon = value.isEmpty || !isFocused;

    return showSearchIcon
        ? Padding(
          padding: EdgeInsets.only(right: rightPadding),
          child: AppSvgAsset(path: AppImages.searchIcon),
        )
        : ClearButtonBuilder.buildClearButton(
          props.controller,
          '',
          props.focusNode.hasFocus,
          onClear: onClear,
        );
  }

  InputField.email({
    Key? key,
    required String name,
    FocusNode? focusNode,
    dynamic Function(bool)? onFocusChanged,
    bool isRequired = true,
    VoidCallback? onEditingComplete,
    TextInputAction textInputAction = TextInputAction.next,
    String initialValue = '',
  }) : this._(
         key: key,
         child: TextFieldBuilderExtended(
           initialValue: initialValue,
           focusNode: focusNode,
           onFocusChanged: onFocusChanged,
           builder: (props) {
             final validator =
                 EmailValidator(
                   LocaleKeys.invalidEmailError.tr(),
                   isRequired: isRequired,
                 ).validate;

             return FormBuilderTextField(
               name: name,
               controller: props.controller,
               focusNode: props.focusNode,
               scrollPadding: _getScrollPadding(props.context),
               decoration: _buildBaseDecoration(
                 labelText: LocaleKeys.emailFieldHint.tr(),
                 hintText: LocaleKeys.emailFieldHint.tr(),
                 props: props,
                 isRequired: isRequired,
                 suffixIcon: _buildTextFieldClearSuffixButton(
                   props.controller,
                   initialValue,
                   props.focusNode.hasFocus,
                 ),
               ),
               validator: validator,
               textInputAction: textInputAction,
               keyboardType: TextInputType.emailAddress,
               onEditingComplete:
                   () => _onEditingComplete(
                     textInputAction,
                     props.focusNode,
                     onEditingComplete: onEditingComplete,
                   ),
             );
           },
         ),
       );

  InputField.pass({
    Key? key,
    required String name,
    FocusNode? focusNode,
    dynamic Function(bool)? onFocusChanged,
    bool isRequired = true,
    VoidCallback? onEditingComplete,
    TextInputAction textInputAction = TextInputAction.next,
    String? labelText,
    String? hintText,
    String initialValue = '',
  }) : this._(
         key: key,
         child: TextFieldBuilderExtended(
           isObscured: true,
           initialValue: initialValue,
           focusNode: focusNode,
           onFocusChanged: onFocusChanged,
           builder: (props) {
             final validator =
                 PasswordValidator(
                   LocaleKeys.invalidPassError.tr(),
                   isRequired: isRequired,
                 ).validate;

             return FormBuilderTextField(
               name: name,
               controller: props.controller,
               focusNode: props.focusNode,
               scrollPadding: _getScrollPadding(props.context),
               obscureText: props.isObscured,
               obscuringCharacter: '•',
               enableSuggestions: false,
               autocorrect: false,
               decoration: _buildBaseDecoration(
                 labelText: labelText ?? LocaleKeys.passFieldHint.tr(),
                 hintText: hintText ?? LocaleKeys.passFieldHint.tr(),
                 props: props,
                 isRequired: isRequired,
                 suffixIcon: _buildObscureTextSuffixButton(
                   props.isEdited,
                   props.isObscured,
                   props.setObscured,
                 ),
               ),
               validator: validator,
               textInputAction: textInputAction,
               keyboardType: TextInputType.visiblePassword,
               onEditingComplete:
                   () => _onEditingComplete(
                     textInputAction,
                     props.focusNode,
                     onEditingComplete: onEditingComplete,
                   ),
             );
           },
         ),
       );

  InputField.confirmPass({
    Key? key,
    required String name,
    FocusNode? focusNode,
    dynamic Function(bool)? onFocusChanged,
    VoidCallback? onEditingComplete,
    TextInputAction textInputAction = TextInputAction.next,
    String initialValue = '',
    required String Function() getPassValue,
  }) : this._(
         key: key,
         child: TextFieldBuilderExtended(
           isObscured: true,
           initialValue: initialValue,
           focusNode: focusNode,
           onFocusChanged: onFocusChanged,
           builder: (props) {
             String? validator(String? val) {
               final currentPass = getPassValue();
               final isValid = val == currentPass;

               return isValid ? null : LocaleKeys.invalidConfirmPassError.tr();
             }

             return FormBuilderTextField(
               name: name,
               controller: props.controller,
               focusNode: props.focusNode,
               scrollPadding: _getScrollPadding(props.context),
               obscureText: props.isObscured,
               obscuringCharacter: '•',
               enableSuggestions: false,
               autocorrect: false,
               decoration: _buildBaseDecoration(
                 labelText: LocaleKeys.confirmPassFieldHint.tr(),
                 hintText: LocaleKeys.confirmPassFieldHint.tr(),
                 props: props,
                 suffixIcon: _buildObscureTextSuffixButton(
                   props.isEdited,
                   props.isObscured,
                   props.setObscured,
                 ),
               ),
               validator: validator,
               textInputAction: textInputAction,
               keyboardType: TextInputType.visiblePassword,
               onEditingComplete:
                   () => _onEditingComplete(
                     textInputAction,
                     props.focusNode,
                     onEditingComplete: onEditingComplete,
                   ),
             );
           },
         ),
       );

  static Widget? _buildObscureTextSuffixButton(
    bool isEdited,
    bool setObscured,
    Function(bool) setObscure,
  ) {
    if (!isEdited) return null;

    return IconButton(
      icon: Icon(setObscured ? Icons.visibility : Icons.visibility_off),
      onPressed: () => setObscure(!setObscured),
    );
  }

  static EdgeInsets _getScrollPadding(BuildContext context) {
    final viewInsets = context.viewInsets;

    return EdgeInsets.only(
      bottom: viewInsets.bottom + 70,
      top: viewInsets.top + 30,
    );
  }

  static InputDecoration _buildBaseDecoration({
    required String labelText,
    required String hintText,
    required BuilderProps props,
    bool isRequired = false,
    Widget? suffixIcon,
    FloatingLabelBehavior floatingLabelBehavior = FloatingLabelBehavior.auto,
    EdgeInsetsGeometry? contentPadding,
    bool alignLabelWithHint = true,
  }) {
    final isFocused = props.focusNode.hasFocus;
    final isNotEmpty = props.controller.text.isNotEmpty;
    final isFloating = isFocused || isNotEmpty;

    return InputDecoration(
      label: FieldLabel(
        color: isFloating ? null : Colors.transparent,
        isRequired: isRequired,
        content: Text(isFloating ? labelText : hintText),
      ),
      suffixIcon: suffixIcon,
      floatingLabelBehavior: floatingLabelBehavior,
      hintText: hintText,
      contentPadding: contentPadding,
      alignLabelWithHint: alignLabelWithHint,
    );
  }

  static Widget? _buildTextFieldClearSuffixButton(
    TextEditingController ctrl,
    String? initialValue,
    bool isFocused,
  ) {
    return ClearButtonBuilder.buildClearButton(ctrl, initialValue, isFocused);
  }

  static void _onEditingComplete(
    TextInputAction textInputAction,
    FocusNode node, {
    VoidCallback? onEditingComplete,
  }) {
    if (textInputAction == TextInputAction.next) {
      node.nextFocus();
    } else {
      node.unfocus();
    }

    onEditingComplete?.call();
  }

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
