import 'package:flutter_utils/flutter_utils.dart';
import 'package:url_launcher/url_launcher.dart';

import 'url_launcher_adapter.dart';

class ImplUrlLauncherAdapter implements UrlLauncherAdapter {
  @override
  Future<void> openUrl(String url) async {
    final Uri launchUri = Uri.parse(url);

    await _safeLaunchUrl(launchUri);
  }

  Future<void> _safeLaunchUrl(Uri launchUri) async {
    try {
      await launchUrl(launchUri, mode: LaunchMode.inAppWebView);
    } catch (e) {
      debugLog('[ERROR OPENING URL]: $launchUri : $e');
    }
  }
}
