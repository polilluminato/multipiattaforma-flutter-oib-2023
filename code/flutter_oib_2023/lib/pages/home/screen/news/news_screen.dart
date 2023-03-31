// ignore_for_file: library_prefixes

import 'package:flutter/material.dart';
import 'package:flutter_oib_2023/enums/windowsize_enum.dart';
import 'package:flutter_oib_2023/models/article.dart';
import 'package:flutter_oib_2023/pages/home/screen/news/ui/news_card.dart';
import 'package:flutter_oib_2023/provider/AsyncValueWidget.dart';
import 'package:flutter_oib_2023/provider/article_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_oib_2023/utils/screen_utils.dart' as ScreenUtils;
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class NewsScreen extends ConsumerWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final articleList = ref.watch(articleListProvider);
    double screenSizeWidth = ScreenUtils.getScreenWidth(context);

    return AsyncValueWidget<List<Article>?>(
      value: articleList,
      data: (data) {
        if (screenSizeWidth < WindowSizeEnum.tabletPortrait.width) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: data!.length,
            itemBuilder: (_, int index) {
              return NewsCard(article: data[index]);
            },
          );
        } else {
          return AlignedGridView.count(
            itemCount: data!.length,
            crossAxisCount:
                screenSizeWidth < WindowSizeEnum.desktop.width ? 2 : 3,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            itemBuilder: (_, index) {
              return NewsCard(article: data[index]);
            },
          );
        }
      },
    );
  }
}
