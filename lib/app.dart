import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:magic_slides/module/home/page.dart';
import 'package:magic_slides/core/theme_provider.dart';
import 'package:magic_slides/core/theme_data.dart';

class MagicSlides extends StatelessWidget {
  const MagicSlides({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Magic Slides',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: themeProvider.themeMode,
          home: const HomePage(),
        );
      },
    );
  }
}
