import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../resources/app_date_formats.dart';
import '../../resources/app_images.dart';
import '../../resources/base_theme/inputs/base_inputs_styles_ext.dart';
import '../../resources/locale_keys.g.dart';
import '../app_svg_asset.dart';
import 'utils/birth_date_validator.dart';
import 'utils/clear_button_builder.dart';
import 'widgets/phone_field.dart';

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
                flightShuttleBuilder: (_, animation, __, ___, toHeroCtx) =>
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
      AnimationStatus status, BuilderProps<FormFieldState> props) {
    if (status != AnimationStatus.completed) return;

    // Defer focus request until the next frame to avoid UI inconsistencies.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (props.context.mounted) {
        props.focusNode.requestFocus();
      }
    });
  }

  static Widget? _searchSuffixIcon(
      BuilderProps<FormFieldState> props, VoidCallback? onClear) {
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

  InputField.name(
      {Key? key,
      required String name,
      FocusNode? focusNode,
      dynamic Function(bool)? onFocusChanged,
      bool isRequired = true,
      VoidCallback? onEditingComplete,
      TextInputAction textInputAction = TextInputAction.next,
      String initialValue = ''})
      : this._(
            key: key,
            child: TextFieldBuilderExtended(
                initialValue: initialValue,
                focusNode: focusNode,
                onFocusChanged: onFocusChanged,
                builder: (props) {
                  final validator = MinLengthValidator(
                          'Name must be at least 2 characters long',
                          // TODO: Localize the error
                          minLength: 2,
                          isRequired: isRequired)
                      .validate;

                  return FormBuilderTextField(
                    name: name,
                    controller: props.controller,
                    focusNode: props.focusNode,
                    scrollPadding: _getScrollPadding(props.context),
                    decoration: _buildBaseDecoration(
                      labelText: 'Name', // TODO: Localize the label
                      hintText: 'Name', // TODO: Localize the hint
                      suffixIcon: _buildTextFieldClearSuffixButton(
                          props.controller,
                          initialValue,
                          props.focusNode.hasFocus),
                    ),
                    textCapitalization: TextCapitalization.words,
                    validator: validator,
                    textInputAction: textInputAction,
                    onEditingComplete: () => _onEditingComplete(
                        textInputAction, props.focusNode,
                        onEditingComplete: onEditingComplete),
                  );
                }));

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
                  final validator = EmailValidator(
                          'Invalid email address', // TODO: Localize the error
                          isRequired: isRequired)
                      .validate;

                  return FormBuilderTextField(
                    name: name,
                    controller: props.controller,
                    focusNode: props.focusNode,
                    scrollPadding: _getScrollPadding(props.context),
                    decoration: _buildBaseDecoration(
                        labelText: 'Email', // TODO: Localize the label
                        hintText: 'Email', // TODO: Localize the hint
                        suffixIcon: _buildTextFieldClearSuffixButton(
                            props.controller,
                            initialValue,
                            props.focusNode.hasFocus)),
                    validator: validator,
                    textInputAction: textInputAction,
                    keyboardType: TextInputType.emailAddress,
                    onEditingComplete: () => _onEditingComplete(
                        textInputAction, props.focusNode,
                        onEditingComplete: onEditingComplete),
                  );
                }));

  InputField.birthDate({
    Key? key,
    required String name,
    FocusNode? focusNode,
    bool isRequired = true,
    DateTime? initialValue,
  }) : this._(
            key: key,
            child: TextFieldBuilderExtended(
                initialValue: _birthDateInitValue(initialValue),
                focusNode: focusNode,
                builder: (props) {
                  final validator = BirthDateValidator(
                          'Age must be at least 12 years', // TODO: Localize the error
                          minAge: 12,
                          isRequired: isRequired)
                      .validate;

                  return FormBuilderDateTimePicker(
                    name: name,
                    controller: props.controller,
                    focusNode: props.focusNode,
                    initialValue: initialValue,
                    inputType: InputType.date,
                    lastDate: DateTime.now(),
                    decoration: _buildBaseDecoration(
                      labelText: 'Birth date', // TODO: Localize the label
                      hintText: 'Birth date', // TODO: Localize the hint
                      suffixIcon: _buildBirthDateSuffix(props.controller,
                          _birthDateInitValue(initialValue), props.isEdited),
                    ),
                    validator: validator,
                  );
                }));

  static String _birthDateInitValue(DateTime? initialValue) {
    return initialValue != null
        ? AppDateFormats.dayMonthYearDotsFormat(initialValue)
        : '';
  }

  static Widget _buildBirthDateSuffix(
      TextEditingController ctrl, String? initialValue, bool isEdited) {
    return isEdited
        ? IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {
              ctrl.text = initialValue ?? '';
            },
          )
        : const Icon(Icons.arrow_drop_down_rounded, size: 34);
  }

  InputField.phone(
      {Key? key,
      required String name,
      FocusNode? focusNode,
      dynamic Function(bool)? onFocusChanged,
      bool isRequired = true,
      VoidCallback? onEditingComplete,
      TextInputAction textInputAction = TextInputAction.next,
      String initialValue = ''})
      : this._(
            key: key,
            child: Builder(builder: (context) {
              return PhoneField(
                name: name,
                focusNode: focusNode,
                onFocusChanged: onFocusChanged,
                isRequired: isRequired,
                textInputAction: textInputAction,
                initialValue: initialValue,
                scrollPadding: _getScrollPadding(context),
                buildDecoration: (props) => _buildBaseDecoration(
                    labelText: 'Phone number', // TODO: Localize the label
                    hintText: 'Phone number', // TODO: Localize the hint
                    suffixIcon: _buildTextFieldClearSuffixButton(
                        props.controller,
                        initialValue,
                        props.focusNode.hasFocus)),
                onEditingComplete: (props) => _onEditingComplete(
                    textInputAction, props.focusNode,
                    onEditingComplete: onEditingComplete),
              );
            }));

  InputField.pass({
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
                isObscured: true,
                initialValue: initialValue,
                focusNode: focusNode,
                onFocusChanged: onFocusChanged,
                builder: (props) {
                  final validator = PasswordValidator(
                          'Invalid password', // TODO: Localize the error
                          isRequired: isRequired)
                      .validate;

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
                        labelText: 'Password', // TODO: Localize the label
                        hintText: 'Password', // TODO: Localize the hint
                        suffixIcon: _buildObscureTextSuffixButton(
                            props.isEdited,
                            props.isObscured,
                            props.setObscured)),
                    validator: validator,
                    textInputAction: textInputAction,
                    keyboardType: TextInputType.visiblePassword,
                    onEditingComplete: () => _onEditingComplete(
                        textInputAction, props.focusNode,
                        onEditingComplete: onEditingComplete),
                  );
                }));

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

                    return isValid
                        ? null
                        : 'Passwords do not match'; // TODO: Localize the error
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
                        labelText:
                            'Confirm password', // TODO: Localize the label
                        hintText: 'Confirm password', // TODO: Localize the hint
                        suffixIcon: _buildObscureTextSuffixButton(
                            props.isEdited,
                            props.isObscured,
                            props.setObscured)),
                    validator: validator,
                    textInputAction: textInputAction,
                    keyboardType: TextInputType.visiblePassword,
                    onEditingComplete: () => _onEditingComplete(
                        textInputAction, props.focusNode,
                        onEditingComplete: onEditingComplete),
                  );
                }));

  static Widget? _buildObscureTextSuffixButton(
      bool isEdited, bool setObscured, Function(bool) setObscure) {
    if (!isEdited) return null;

    return IconButton(
      icon: Icon(setObscured ? Icons.visibility : Icons.visibility_off),
      onPressed: () => setObscure(!setObscured),
    );
  }

  static EdgeInsets _getScrollPadding(BuildContext context) {
    final viewInsets = context.viewInsets;

    return EdgeInsets.only(
        bottom: viewInsets.bottom + 70, top: viewInsets.top + 30);
  }

  static InputDecoration _buildBaseDecoration({
    required String labelText,
    required String hintText,
    Widget? suffixIcon,
    FloatingLabelBehavior floatingLabelBehavior = FloatingLabelBehavior.auto,
    EdgeInsetsGeometry? contentPadding,
    bool alignLabelWithHint = true,
  }) {
    return InputDecoration(
      label: Text(labelText),
      suffixIcon: suffixIcon,
      floatingLabelBehavior: floatingLabelBehavior,
      hintText: hintText,
      contentPadding: contentPadding,
      alignLabelWithHint: alignLabelWithHint,
    );
  }

  static Widget? _buildTextFieldClearSuffixButton(
      TextEditingController ctrl, String? initialValue, bool isFocused) {
    return ClearButtonBuilder.buildClearButton(ctrl, initialValue, isFocused);
  }

  static void _onEditingComplete(
      TextInputAction textInputAction, FocusNode node,
      {VoidCallback? onEditingComplete}) {
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
