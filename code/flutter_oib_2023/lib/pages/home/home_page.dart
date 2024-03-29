// ignore_for_file: prefer_const_constructors_in_immutables, library_prefixes

import 'package:flutter/material.dart';
import 'package:flutter_oib_2023/models/screen_tab_model.dart';
import 'package:flutter_oib_2023/pages/home/screen/gallery/gallery_screen.dart';
import 'package:flutter_oib_2023/pages/home/screen/news/news_screen.dart';
import 'package:flutter_oib_2023/utils/screen_utils.dart' as ScreenUtils;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final indexTabProvider = StateProvider<int>((ref) => 0);

final List<ScreenTab> tabList = [
  ScreenTab(
    label: "News",
    icon: Icons.newspaper,
    content: const NewsScreen(),
  ),
  ScreenTab(
    label: "Gallery",
    icon: Icons.grid_view,
    content: const GalleryScreen(),
  ),
];

class HomePage extends ConsumerWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double screenSizeWidth = ScreenUtils.getScreenWidth(context);
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Flutter OIB 2023",
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              iconSize: 24,
              icon: const Icon(Icons.settings_outlined),
              onPressed: () => context.push('/settings'),
            ),
          )
        ],
      ),
      body: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(child: tabList[ref.watch(indexTabProvider)].content),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: colorScheme.primaryContainer,
        onDestinationSelected: (int index) {
          ref.read(indexTabProvider.notifier).state = index;
        },
        selectedIndex: ref.watch(indexTabProvider),
        destinations: tabList
            .map(
              (singleScreenTab) => NavigationDestination(
                icon: Icon(singleScreenTab.icon),
                label: singleScreenTab.label,
              ),
            )
            .toList(),
      ),
    );
  }
}
