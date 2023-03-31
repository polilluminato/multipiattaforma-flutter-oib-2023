// ignore_for_file: depend_on_referenced_packages, library_prefixes

import 'package:flutter/material.dart';
import 'package:flutter_oib_2023/app/app.dart';
import 'package:flutter_oib_2023/utils/platform_utils.dart' as PlatformUtils;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:window_manager/window_manager.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();

  if (PlatformUtils.isDesktop) {
    // Must add this line.
    await windowManager.ensureInitialized();
    windowManager.waitUntilReadyToShow().then((_) async {
      await windowManager.setSize(const Size(400, 890));
    });
  }

  runApp(
    ProviderScope(
      child: App(),
    ),
  );
}
