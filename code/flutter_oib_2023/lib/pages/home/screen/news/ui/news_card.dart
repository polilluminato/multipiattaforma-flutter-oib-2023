import 'package:flutter/material.dart';
import 'package:flutter_oib_2023/models/article.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.article});

  final Article article;

  Future<void> _handleClickOnNewsCard() async {
    if (!await launchUrl(Uri.parse(article.url!))) {
      throw Exception('Could not launch ${article.url}');
    }
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return ListTile(
      onTap: _handleClickOnNewsCard,
      title: Text(article.title!),
      subtitle: Text(article.author!),
      leading: Icon(
        Icons.newspaper_outlined,
        color: colorScheme.primary,
      ),
    );
  }
}
