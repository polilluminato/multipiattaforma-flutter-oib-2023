import 'dart:io';

import 'package:flutter/foundation.dart' show kIsWeb;

bool isDesktop = !kIsWeb &&
    !Platform.isAndroid &&
    !Platform.isIOS &&
    !Platform.isFuchsia &&
    (Platform.isWindows || Platform.isLinux || Platform.isMacOS);
