// ignore_for_file: library_prefixes

import 'package:flutter/material.dart';
import 'package:flutter_oib_2023/utils/platform_utils.dart' as PlatformUtils;

class DocumentationDemoCard extends StatelessWidget {
  const DocumentationDemoCard(
      {super.key,
      required this.title,
      required this.description,
      required this.linkDocumentation,
      required this.linkDemo});

  final String title;
  final String description;
  final String linkDocumentation;
  final String linkDemo;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Card(
      margin: const EdgeInsets.only(bottom: 16, left: 8, right: 8),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 16, right: 16, bottom: 12, top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: textTheme.titleLarge,
            ),
            Text(
              description,
              style: textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => PlatformUtils.openExternalLink(
                    linkDocumentation,
                  ),
                  child: const Text("Documentazione"),
                ),
                TextButton(
                  onPressed: () => PlatformUtils.openExternalLink(
                    linkDemo,
                  ),
                  child: const Text("Demo"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
