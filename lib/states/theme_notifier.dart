import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeNotifier extends StateNotifier<ThemeMode> {
  ThemeNotifier(ThemeMode themeMode) : super(themeMode);

  void toggleTheme() =>
      state = (state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light);
}
