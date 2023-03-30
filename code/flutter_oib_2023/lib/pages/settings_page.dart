import 'package:flutter/material.dart';
import 'package:flutter_oib_2023/enums/windowsize_enum.dart';
import 'package:flutter_oib_2023/provider/windowsize_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:window_manager/window_manager.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({Key? key}) : super(key: key);

  void actionChangeWindowSize(WidgetRef ref, WindowSizeEnum windowSizeEnum) {
    //Update window size
    windowManager.setSize(
      Size(
        windowSizeEnum.width,
        windowSizeEnum.height,
      ),
    );
    //Read provider and change status
    ref.read(windowSizeProvider.notifier).state = windowSizeEnum;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        title: const Text("Settings"),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Select Window Size"),
              DropdownButton<WindowSizeEnum>(
                value: ref.watch(windowSizeProvider),
                onChanged: (WindowSizeEnum? value) =>
                    actionChangeWindowSize(ref, value!),
                items: WindowSizeEnum.values
                    .map<DropdownMenuItem<WindowSizeEnum>>(
                        (WindowSizeEnum single) {
                  return DropdownMenuItem<WindowSizeEnum>(
                    value: single,
                    child: Text(single.description),
                  );
                }).toList(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
