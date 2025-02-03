import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_utils/flutter_utils.dart';

class PhoneField extends HookWidget {
  static const String _phoneMask = '+000 000 000 000000000000';

  final String name;
  final FocusNode? focusNode;
  final void Function(bool)? onFocusChanged;
  final bool isRequired;
  final TextInputAction textInputAction;
  final String initialValue;

  final EdgeInsets scrollPadding;
  final InputDecoration Function(BuilderProps props) buildDecoration;
  final Function(BuilderProps props) onEditingComplete;

  const PhoneField(
      {super.key,
      required this.name,
      this.focusNode,
      this.onFocusChanged,
      this.isRequired = true,
      this.textInputAction = TextInputAction.next,
      this.initialValue = '',
      required this.scrollPadding,
      required this.buildDecoration,
      required this.onEditingComplete});

  @override
  Widget build(BuildContext context) {
    final controller = useMemoized(
        () => MaskedTextController(
              mask: _phoneMask,
              text: initialValue,
            ),
        [initialValue, _phoneMask]);

    useEffect(() => controller.dispose, []);

    return TextFieldBuilderExtended(
        controller: controller,
        initialValue: initialValue,
        focusNode: focusNode,
        onFocusChanged: onFocusChanged,
        builder: (props) {
          String? validator(String? val) {
            return _PhoneValidator(
                    'Invalid phone number', // TODO: Localize the error
                    isRequired: isRequired)
                .validate(props.controller.text.onlyNumericValues);
          }

          return FormBuilderTextField(
            name: name,
            controller: props.controller,
            focusNode: props.focusNode,
            scrollPadding: scrollPadding,
            decoration: buildDecoration(props),
            validator: validator,
            textInputAction: textInputAction,
            keyboardType: TextInputType.phone,
            onEditingComplete: () => onEditingComplete(props),
          );
        });
  }
}

class _PhoneValidator extends FieldValidator<String> {
  final String _errorText;
  final bool _isRequired;

  const _PhoneValidator(this._errorText, {bool isRequired = true})
      : _isRequired = isRequired;

  @override
  String? validate(String? value) {
    if (!_isRequired && (value == null || value.isEmpty)) return null;

    return value != null && RegExp(r'^\+?[1-9]\d{1,14}$').hasMatch(value)
        ? null
        : _errorText;
  }
}
