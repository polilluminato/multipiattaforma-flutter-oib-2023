// ignore_for_file: library_prefixes

import 'package:flutter/material.dart';
import 'package:flutter_oib_2023/ui/documentation_demo_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DemoScreen extends ConsumerWidget {
  const DemoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ListView(
        children: const [
          DocumentationDemoCard(
            title: "FlexColorScheme",
            description:
                "A Flutter package to use and make beautiful Material design based themes.",
            linkDocumentation: "https://pub.dev/packages/flex_color_scheme",
            linkDemo:
                "https://rydmike.com/flexcolorscheme/themesplayground-v6/#/",
          ),
          DocumentationDemoCard(
            title: "Syncfusion Flutter Widgets",
            description:
                "The Syncfusion Flutter Widgets are a set of advanced custom widgets and file formats packages needed to create rich and high-quality cross-platform applications in iOS, Android, and Web using a single code base.",
            linkDocumentation:
                "https://pub.dev/publishers/syncfusion.com/packages",
            linkDemo: "https://flutter.syncfusion.com/#/",
          ),
          DocumentationDemoCard(
            title: "Lottie for Flutter",
            description:
                "Render After Effects animations natively on Flutter. This package is a pure Dart implementation of a Lottie player.",
            linkDocumentation: "https://pub.dev/packages/lottie",
            linkDemo: "https://xvrh.github.io/lottie-flutter-web/",
          ),
          DocumentationDemoCard(
            title: "InvoiceNinja",
            description: "Free Invoicing Software for Small Businesses",
            linkDocumentation: "",
            linkDemo: "https://demo.invoiceninja.com/",
          ),
          DocumentationDemoCard(
            title: "Flutter Folio",
            description:
                "A multi-platform app that feels great on every device",
            linkDocumentation: "",
            linkDemo: "https://flutter.gskinner.com/folio/",
          ),
          DocumentationDemoCard(
            title: "Flokk Contacts",
            description:
                "A delightful contact manager for your Google Contacts",
            linkDocumentation: "",
            linkDemo: "https://flokk.app/",
          ),
          DocumentationDemoCard(
            title: "Holobooth",
            description:
                "Jump into a new reality to bring Dash and Sparky to life and share your creations with the community!",
            linkDocumentation: "",
            linkDemo: "https://holobooth.flutter.dev/",
          ),
          DocumentationDemoCard(
            title: "Pdf creation library for dart/flutter",
            description:
                "A pdf producer for Dart. It can create pdf files for both web or flutter.",
            linkDocumentation: "https://pub.dev/packages/pdf",
            linkDemo: "https://davbfr.github.io/dart_pdf/",
          ),
          DocumentationDemoCard(
            title: "Animated Text Kit",
            description:
                "A flutter package project which contains a collection of cool and beautiful text animations.",
            linkDocumentation: "https://pub.dev/packages/animated_text_kit",
            linkDemo: "https://animated-text-kit.web.app/",
          ),
        ],
      ),
    );
  }
}
