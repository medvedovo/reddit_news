import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_news/locator.dart';
import 'package:reddit_news/utils/preferences_helper.dart';

class ThemeNotifier extends StateNotifier<ThemeMode> {
  ThemeNotifier(ThemeMode themeMode) : super(themeMode);

  void toggleTheme() {
    state = (state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light);
    locator.get<PreferencesHelper>().setIsDark(state == ThemeMode.dark);
  }
}
