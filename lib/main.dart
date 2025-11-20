import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:magic_slides/app.dart';
import 'package:magic_slides/core/theme_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MagicSlides(),
    );
  }
}
