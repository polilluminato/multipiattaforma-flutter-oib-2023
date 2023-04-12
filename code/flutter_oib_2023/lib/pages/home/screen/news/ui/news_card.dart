// ignore_for_file: library_prefixes

import 'package:flutter/material.dart';
import 'package:flutter_oib_2023/models/article.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.article});

  final Article article;

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Text(article.title!);
  }
}
