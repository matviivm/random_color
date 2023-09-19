import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:random_color/common/provider_manager.dart';
import 'package:random_color/feature/home/home_page.dart';

void main() {
  /// Configurate provider manager for application
  setup();
  runApp(
    const ProviderScope(
      child: Main(),
    ),
  );
}

/// This widget is the root of random color application.
class Main extends StatelessWidget {
  /// Const constuctor
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Random Color',
      home: Scaffold(
        body: SafeArea(
          child: HomePage(),
        ),
      ),
    );
  }
}
