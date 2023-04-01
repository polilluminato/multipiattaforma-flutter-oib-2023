// ignore_for_file: library_prefixes

import 'package:flutter/material.dart';
import 'package:flutter_oib_2023/pages/home/screen/desktop/ui/desktop_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DesktopScreen extends ConsumerWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ListView(
        children: const [
          DesktopCard(
            title: "Windows (fluent_ui)",
            description:
                "Implements Windows UI in Flutter. Based on the official documentation",
            linkDocumentation: "https://pub.dev/packages/fluent_ui",
            linkDemo: "https://bdlukaa.github.io/fluent_ui/",
          ),
          SizedBox(
            height: 16,
          ),
          DesktopCard(
            title: "macOS (macos_ui)",
            description:
                "Flutter widgets and themes implementing the current macOS design language.",
            linkDocumentation: "https://pub.dev/packages/macos_ui",
            linkDemo: "https://macosui.dev/",
          ),
          SizedBox(
            height: 16,
          ),
          DesktopCard(
            title: "Linux/Ubuntu (yaru)",
            description:
                "Ubuntu Yaru Style - Distinct look and feel of the Ubuntu Desktop",
            linkDocumentation: "https://pub.dev/packages/yaru",
            linkDemo: "https://ubuntu.github.io/yaru.dart",
          ),
          SizedBox(
            //yaru_widgets
            height: 16,
          ),
          DesktopCard(
            title: "Linux/Ubuntu (yaru_widgets)",
            description:
                "Common flutter widgets useful for building desktop and web applications",
            linkDocumentation: "https://pub.dev/packages/yaru_widgets",
            linkDemo: "https://ubuntu.github.io/yaru_widgets.dart/",
          ),
        ],
      ),
    );
  }
}
