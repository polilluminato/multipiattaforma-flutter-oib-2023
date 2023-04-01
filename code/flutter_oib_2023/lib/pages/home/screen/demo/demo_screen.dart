// ignore_for_file: library_prefixes

import 'package:flutter/material.dart';
import 'package:flutter_oib_2023/ui/documentation_demo_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DemoScreen extends ConsumerWidget {
  const DemoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ListView(
        children: const [
          DocumentationDemoCard(
            title: "Syncfusion Flutter Widgets",
            description:
                "The Syncfusion Flutter Widgets are a set of advanced custom widgets and file formats packages needed to create rich and high-quality cross-platform applications in iOS, Android, and Web using a single code base.",
            linkDocumentation:
                "https://pub.dev/publishers/syncfusion.com/packages",
            linkDemo: "https://flutter.syncfusion.com/#/",
          ),
        ],
      ),
    );
  }
}
