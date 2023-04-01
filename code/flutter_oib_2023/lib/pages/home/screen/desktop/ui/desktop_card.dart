import 'package:flutter/material.dart';
import 'package:flutter_oib_2023/utils/platform_utils.dart' as PlatformUtils;

class DesktopCard extends StatelessWidget {
  const DesktopCard(
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
      child: Padding(
        padding: const EdgeInsets.all(16),
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
