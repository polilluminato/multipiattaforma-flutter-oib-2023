// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  HomePage({Key? key}) : super(key: key);

  void _changeWindowSize(String size) {
    print("I want to become a $size");
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flutter OIB 2023",
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  onTap: () => _changeWindowSize("mobile"),
                  child: const Text('Mobile'),
                ),
                PopupMenuItem(
                  onTap: () => _changeWindowSize("tablet"),
                  child: const Text('Tablet'),
                ),
                PopupMenuItem(
                  onTap: () => _changeWindowSize("desktop"),
                  child: const Text('Desktop'),
                ),
              ];
            },
          )
        ],
      ),
      body: const Center(),
    );
  }
}
