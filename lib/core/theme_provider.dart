import 'package:flutter/material.dart';

/// Theme provider for managing dark and light mode
class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  /// Get current theme mode
  ThemeMode get themeMode => _themeMode;

  /// Check if dark mode is enabled
  bool get isDarkMode => _themeMode == ThemeMode.dark;

  /// Toggle between light and dark mode
  void toggleTheme() {
    _themeMode = _themeMode == ThemeMode.light
        ? ThemeMode.dark
        : ThemeMode.light;
    notifyListeners();
  }

  /// Set theme mode explicitly
  void setThemeMode(ThemeMode mode) {
    if (_themeMode != mode) {
      _themeMode = mode;
      notifyListeners();
    }
  }

  /// Set light mode
  void setLightMode() {
    setThemeMode(ThemeMode.light);
  }

  /// Set dark mode
  void setDarkMode() {
    setThemeMode(ThemeMode.dark);
  }

  /// Set system theme mode
  void setSystemMode() {
    setThemeMode(ThemeMode.system);
  }
}
