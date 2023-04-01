import 'dart:io';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:url_launcher/url_launcher.dart';

bool isDesktop = !kIsWeb &&
    !Platform.isAndroid &&
    !Platform.isIOS &&
    !Platform.isFuchsia &&
    (Platform.isWindows || Platform.isLinux || Platform.isMacOS);

Future<void> openExternalLink(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw Exception('Could not launch $url');
  }
}
