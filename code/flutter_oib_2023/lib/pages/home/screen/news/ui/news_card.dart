// ignore_for_file: library_prefixes

import 'package:flutter/material.dart';
import 'package:flutter_oib_2023/models/article.dart';
import 'package:flutter_oib_2023/utils/platform_utils.dart' as PlatformUtils;

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.article});

  final Article article;

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return ListTile(
      onTap: () => PlatformUtils.openExternalLink(article.url!),
      title: Text(article.title!),
      subtitle: Text(article.author!),
      leading: Icon(
        Icons.newspaper_outlined,
        color: colorScheme.primary,
      ),
    );
  }
}
