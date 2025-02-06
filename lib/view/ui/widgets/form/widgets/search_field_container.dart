import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../resources/base_theme/durations/base_durations_ext.dart';
import '../input_field.dart';

class SearchFieldContainer extends HookWidget {
  final String? hintText;
  final Function(String)? onSearch;

  const SearchFieldContainer({super.key, this.onSearch, this.hintText});

  @override
  Widget build(BuildContext context) {
    final durations = context.baseDurations;
    final duration = durations.searchTrans;

    final debounce = useMemoized(() => DebounceHandler(duration: duration));

    useEffect(() => debounce.dispose, [debounce]);

    return InputField.search(
      hintText: hintText,
      onSearch: (value) => debounce.run(() => onSearch?.call(value)),
      onClear: () => onSearch?.call(''),
    );
  }
}
