import 'package:share_plus/share_plus.dart';

import 'share_adapter.dart';

class ImplShareAdapter implements ShareAdapter {
  @override
  Future<void> shareText(String text) {
    return SharePlus.instance.share(ShareParams(text: text));
  }
}
