// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_oib_2023/enums/WindowSize.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:window_manager/window_manager.dart';

class HomePage extends ConsumerWidget {
  HomePage({Key? key}) : super(key: key);

  void _changeWindowSize(WindowSize windowSize) {
    switch (windowSize) {
      case WindowSize.mobilePortrait:
        //Display 2400x1080, Pixel 7
        windowManager.setSize(const Size(400, 890));
        break;
      case WindowSize.mobileLandscape:
        windowManager.setSize(const Size(890, 400));
        break;
      case WindowSize.tabletPortrait:
        windowManager.setSize(const Size(607, 874));
        break;
      case WindowSize.tabletLandscape:
        windowManager.setSize(const Size(874, 607));
        break;
      case WindowSize.desktop:
        windowManager.setSize(const Size(1440, 900));
        break;
      default:
        break;
    }
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
                  onTap: () => _changeWindowSize(WindowSize.mobilePortrait),
                  child: const Text('Mobile Portrait'),
                ),
                PopupMenuItem(
                  onTap: () => _changeWindowSize(WindowSize.mobileLandscape),
                  child: const Text('Mobile Landscape'),
                ),
                PopupMenuItem(
                  onTap: () => _changeWindowSize(WindowSize.tabletPortrait),
                  child: const Text('Tablet Portrait'),
                ),
                PopupMenuItem(
                  onTap: () => _changeWindowSize(WindowSize.tabletLandscape),
                  child: const Text('Tablet Landscape'),
                ),
                PopupMenuItem(
                  onTap: () => _changeWindowSize(WindowSize.desktop),
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
