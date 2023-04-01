import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DesktopScreen extends ConsumerWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(
        children: [
          ElevatedButton(
            onPressed: () => {},
            child: const Text("Windows"),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () => {},
            child: const Text("macOS"),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () => {},
            child: const Text("Linux"),
          )
        ],
      ),
    );
  }
}
