// ignore_for_file: library_prefixes

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DemoScreen extends ConsumerWidget {
  const DemoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ListView(),
    );
  }
}
