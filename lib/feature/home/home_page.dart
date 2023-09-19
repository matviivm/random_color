import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:random_color/common/locators.dart';
import 'package:random_color/feature/home/color_generation_provider.dart';

/// Home screen of the application, clickable container
/// with text in the middle of the screen
class HomePage extends ConsumerWidget {
  /// Const constructor
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorGenerationProv = ref.watch(colorGenerationProvider);

    return InkWell(
      key: const ValueKey(Locators.pagebodyKey),
      onTap: () {
        ref.read(colorGenerationProvider.notifier).generateRandomColor();
      },
      child: ColoredBox(
        color: Color(colorGenerationProv).withOpacity(1.0),
        child: const Center(
          child: Text(
            'Hello there',
            key: ValueKey(Locators.titleTextKey),
          ),
        ),
      ),
    );
  }
}
