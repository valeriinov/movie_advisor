import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_utils/flutter_utils.dart';

class ScrollTopListener extends HookWidget {
  final ScrollController scrollController;
  final Widget Function(BuildContext, bool isBtnVisible) builder;

  const ScrollTopListener({
    super.key,
    required this.scrollController,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    final threshold = context.height / 2;

    final isBtnVisible = useState(false);

    useEffect(() {
      void onScroll() {
        final shouldBeVisible = scrollController.offset > threshold;
        if (isBtnVisible.value == shouldBeVisible) return;
        isBtnVisible.value = shouldBeVisible;
      }

      scrollController.addListener(onScroll);

      return () => scrollController.removeListener(onScroll);
    }, [scrollController, threshold]);

    return builder(context, isBtnVisible.value);
  }
}
