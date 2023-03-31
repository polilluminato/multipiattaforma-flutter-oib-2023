import 'package:flutter/material.dart';
import 'package:flutter_oib_2023/models/article.dart';
import 'package:flutter_oib_2023/pages/home/screen/news/ui/news_card.dart';
import 'package:flutter_oib_2023/provider/AsyncValueWidget.dart';
import 'package:flutter_oib_2023/provider/article_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NewsScreen extends ConsumerWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final articleList = ref.watch(articleListProvider);

    return AsyncValueWidget<List<Article>?>(
      value: articleList,
      data: (data) {
        return ListView.builder(
          shrinkWrap: true,
          itemCount: data!.length,
          itemBuilder: (BuildContext context, int index) {
            return NewsCard(article: data[index]);
          },
        );
      },
    );
  }
}
