import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:keyboard_actions/keyboard_actions.dart';

import '../../resources/base_theme/colors/base_colors_ext.dart';
import 'utils/keyboard_actions_creator.dart';

/// {@category Widgets}
///
/// A wrapper widget that simplifies integrating keyboard actions for input fields.
///
/// [KeyboardActionsWrapper] automatically handles focus nodes and custom keyboard
/// toolbar actions for form fields, improving the user experience on mobile devices
/// by providing an easy way to dismiss the keyboard or navigate between inputs.
///
/// If [nodesDict] is not provided, focus nodes are generated based on [fieldNames].
///
/// Example:
///
/// ```dart
/// KeyboardActionsWrapper(
///   fieldNames: ['email', 'password'],
///   builder: (context, nodesDict) => Column(
///     children: [
///       FormBuilderTextField(
///         name: 'email',
///         focusNode: nodesDict['email'],
///         decoration: InputDecoration(labelText: 'Email'),
///       ),
///       FormBuilderTextField(
///         name: 'password',
///         focusNode: nodesDict['password'],
///         decoration: InputDecoration(labelText: 'Password'),
///         obscureText: true,
///       ),
///     ],
///   ),
/// )
/// ```
class KeyboardActionsWrapper extends StatefulWidget {
  /// A list of field names for which focus nodes will be generated.
  ///
  /// This parameter is ignored if [nodesDict] is provided.
  /// The lifecycle of generated nodes is managed by this widget.
  final List<String> fieldNames;

  /// An optional map of custom [FocusNode]s for each field.
  ///
  /// If this parameter is provided, it will be used directly, and [fieldNames] will be ignored.
  /// The lifecycle of externally provided nodes must be managed outside this widget.
  final Map<String, FocusNode>? nodesDict;

  /// A builder function that provides the context and the focus nodes map.
  final Function(BuildContext, Map<String, FocusNode>) builder;

  const KeyboardActionsWrapper({
    super.key,
    this.fieldNames = const [],
    this.nodesDict,
    required this.builder,
  });

  @override
  State<KeyboardActionsWrapper> createState() => _KeyboardActionsWrapperState();
}

class _KeyboardActionsWrapperState extends State<KeyboardActionsWrapper> {
  Map<String, FocusNode> _nodesDict = {};
  List<KeyboardActionsItem> _keyboardActions = [];

  @override
  void initState() {
    super.initState();
    _nodesDict =
        widget.nodesDict ??
        widget.fieldNames.fold({}, (acc, name) {
          acc[name] = FocusNode();
          return acc;
        });

    _keyboardActions =
        _nodesDict.values
            .map(
              (node) => KeyboardActionsCreator.createActionItem(
                focusNode: node,
                onButtonPressed: () => node.unfocus(),
              ),
            )
            .toList();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.baseColors;

    // Override the icon theme color for keyboard actions
    // without affecting the form's theme.
    return Theme(
      data: context.theme.copyWith(
        iconTheme: context.theme.iconTheme.copyWith(
          color: colors.kbdActionBarFg,
        ),
      ),
      child: KeyboardActions(
        disableScroll: true,
        config: KeyboardActionsConfig(
          keyboardActionsPlatform: KeyboardActionsPlatform.ALL,
          keyboardBarColor: colors.kbdActionBarBg,
          actions: _keyboardActions,
        ),
        // Restore the original theme for the form content.
        child: Theme(
          data: context.theme,
          child: widget.builder(context, _nodesDict),
        ),
      ),
    );
  }

  @override
  void dispose() {
    if (widget.nodesDict == null) {
      for (final node in _nodesDict.values) {
        node.dispose();
      }
      super.dispose();
    }
  }
}
