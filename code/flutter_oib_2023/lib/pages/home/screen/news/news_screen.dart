// ignore_for_file: library_prefixes

import 'package:flutter/material.dart';
import 'package:flutter_oib_2023/models/article.dart';
import 'package:flutter_oib_2023/provider/AsyncValueWidget.dart';
import 'package:flutter_oib_2023/provider/article_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_oib_2023/utils/screen_utils.dart' as ScreenUtils;

class NewsScreen extends ConsumerWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final articleList = ref.watch(articleListProvider);
    double screenSizeWidth = ScreenUtils.getScreenWidth(context);

    return AsyncValueWidget<List<Article>?>(
      value: articleList,
      data: (data) {
        return ListView.builder(
          shrinkWrap: true,
          itemCount: data!.length,
          itemBuilder: (_, int index) {
            return Text(data[index].title!);
          },
        );
      },
    );
  }
}
