// ignore_for_file: library_prefixes

import 'package:flutter/material.dart';
import 'package:flutter_oib_2023/models/photo.dart';
import 'package:flutter_oib_2023/provider/AsyncValueWidget.dart';
import 'package:flutter_oib_2023/provider/photo_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_oib_2023/utils/screen_utils.dart' as ScreenUtils;
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GalleryScreen extends ConsumerWidget {
  const GalleryScreen({super.key});

  int _getColumnsNumber(double screenSizeWidth) {
    return 2;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final photoList = ref.watch(photoListProvider);
    double screenSizeWidth = ScreenUtils.getScreenWidth(context);

    return AsyncValueWidget<List<Photo>?>(
      value: photoList,
      data: (data) {
        return MasonryGridView.count(
          crossAxisCount: _getColumnsNumber(screenSizeWidth),
          itemCount: data!.length,
          itemBuilder: (_, index) {
            return Text(data[index].alt!);
          },
        );
      },
    );
  }
}
