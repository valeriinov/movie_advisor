import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../resources/base_theme/inputs/base_inputs_styles_ext.dart';
import '../../../widgets/form/widgets/field_label.dart';

class YearButton extends HookWidget {
  final String label;
  final VoidCallback onTap;
  final DateTime? date;

  const YearButton({
    super.key,
    required this.label,
    required this.onTap,
    this.date,
  });

  @override
  Widget build(BuildContext context) {
    final inputStyles = context.baseInputsStyles;

    final controller = useTextEditingController(
      text: date?.year.toString() ?? '',
    );

    final scrollController = useScrollController(keepScrollOffset: false);

    useEffect(() {
      controller.text = date?.year.toString() ?? '';
      return null;
    }, [date]);

    return Flexible(
      child: Stack(
        children: [
          TextField(
            controller: controller,
            scrollController: scrollController,
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: label,
              label: FieldLabel(content: Text(label)),
            ),
            enabled: false,
            readOnly: true,
          ),
          Positioned.fill(
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                borderRadius: BorderRadius.circular(
                  inputStyles.txtFldBorderRadius,
                ),
                onTap: onTap,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
