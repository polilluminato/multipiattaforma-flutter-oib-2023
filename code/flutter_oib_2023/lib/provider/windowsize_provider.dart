import 'package:flutter_oib_2023/enums/windowsize_enum.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final windowSizeProvider = StateProvider<WindowSizeEnum>(
  // We return the default sort type
  (ref) => WindowSizeEnum.mobilePortrait,
);
